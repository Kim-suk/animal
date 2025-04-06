package com.test.animal.member.social.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.test.animal.member.dao.MemberDAO;
import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.KakaoUserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

@Service
public class KakaoLoginServiceImpl implements KakaoLoginService {

    @Autowired
    private MemberDAO memberDAO;

    @Override
    public String getAccessToken(String code) {
        String accessToken = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";

        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            conn.setRequestMethod("POST");
            conn.setDoOutput(true);

            String data = "grant_type=authorization_code"
                    + "&client_id=fb8d53bac50cea415232bb28a3120465"
                    + "&redirect_uri=http://localhost:8080/animal/member/kakaoLogin"
                    + "&code=" + code;

            try (BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()))) {
                bw.write(data);
                bw.flush();
            }

            StringBuilder sb = new StringBuilder();
            try (BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
                String line;
                while ((line = br.readLine()) != null) sb.append(line);
            }

            ObjectMapper mapper = new ObjectMapper();
            JsonNode json = mapper.readTree(sb.toString());
            accessToken = json.get("access_token").asText();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return accessToken;
    }

    @Override
    public KakaoUserDTO getUserInfo(String accessToken) {
        KakaoUserDTO user = new KakaoUserDTO();
        String reqURL = "https://kapi.kakao.com/v2/user/me";

        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "Bearer " + accessToken);

            StringBuilder result = new StringBuilder();
            try (BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
                String line;
                while ((line = br.readLine()) != null) result.append(line);
            }

            ObjectMapper mapper = new ObjectMapper();
            JsonNode json = mapper.readTree(result.toString());

            user.setId(json.get("id").asText());

            JsonNode kakaoAccount = json.get("kakao_account");
            if (kakaoAccount != null) {
                if (kakaoAccount.has("email")) {
                    user.setEmail(kakaoAccount.get("email").asText());
                }

                JsonNode profile = kakaoAccount.get("profile");
                if (profile != null && profile.has("name")) {
                    user.setName(profile.get("name").asText());
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    @Override
    public MemberDTO findByKakaoId(String kakaoId) {
        return memberDAO.selectByKakaoId("kakao_" + kakaoId);
    }

    @Override
    public MemberDTO findByEmail(String email) {
        return memberDAO.selectByEmail(email);
    }

    @Override
    public void registerKakaoUser(MemberDTO member) {
        int count = memberDAO.checkUserId(member.getId());
        if (count > 0) {
            throw new IllegalStateException("EXISTING_USER:" + member.getId());
        }

        memberDAO.insertKakaoUser(member);
    }

    @Override
    public MemberDTO findByUserId(String id) {
        return memberDAO.selectByUserId(id);
    }

    /**
     * ✅ 카카오 로그인 통합 처리
     */
    @Override
    public MemberDTO handleKakaoLogin(KakaoUserDTO kakaoUser) {
        String kakaoId = "kakao_" + kakaoUser.getId();

        // 1. kakao_id로 사용자 확인
        MemberDTO existing = memberDAO.selectByKakaoId(kakaoId);
        if (existing != null) return existing;

        // 2. 이메일로 기존 사용자 연동
        MemberDTO byEmail = memberDAO.selectByEmail(kakaoUser.getEmail());
        if (byEmail != null) {
            byEmail.setKakaoId(kakaoId);
            byEmail.setJoinType("KAKAO");
            memberDAO.modMember(byEmail);
            return byEmail;
        }

        // 3. 새 사용자 등록
        MemberDTO newMember = new MemberDTO();
        newMember.setId(kakaoId);
        newMember.setPwd("SOCIAL");

        String email = (kakaoUser.getEmail() == null || kakaoUser.getEmail().trim().isEmpty())
                ? "noemail_" + kakaoUser.getId() + "@kakao.com"
                : kakaoUser.getEmail();
        newMember.setEmail(email);

        String name = (kakaoUser.getName() == null || kakaoUser.getName().trim().isEmpty())
                ? "카카오사용자" : kakaoUser.getName();
        newMember.setName(name);

        newMember.setKakaoId(kakaoId);
        newMember.setJoinType("KAKAO");
        newMember.setAge("0");
        newMember.setGender("U");

        registerKakaoUser(newMember);
        return newMember;
    }
}
