package com.test.animal.member.social.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dao.SocialUserDAO;
import com.test.animal.member.social.dto.KakaoUserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

@Service
public class KakaoLoginServiceImpl implements KakaoLoginService {

    @Autowired
    private SocialUserDAO socialUserDAO;

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

            // 응답 JSON 확인용 출력
            System.out.println("카카오 응답 JSON: " + result.toString());

            ObjectMapper mapper = new ObjectMapper();
            JsonNode json = mapper.readTree(result.toString());

            String kakaoId = json.get("id").asText();
            user.setId(kakaoId);

            JsonNode kakaoAccount = json.get("kakao_account");
            if (kakaoAccount != null) {
                // 이메일
                if (kakaoAccount.has("email")) {
                    user.setEmail(kakaoAccount.get("email").asText());
                }

                // 닉네임 처리 (fallback 포함)
                String nickname = null;
                JsonNode profile = kakaoAccount.get("profile");

                // 우선 profile.nickname 확인
                if (profile != null && profile.has("nickname") && !profile.get("nickname").isNull()) {
                    nickname = profile.get("nickname").asText();
                }

                // profile.nickname이 없을 경우 properties.nickname 확인
                if ((nickname == null || nickname.trim().isEmpty()) && json.has("properties")) {
                    JsonNode properties = json.get("properties");
                    if (properties.has("nickname")) {
                        nickname = properties.get("nickname").asText();
                    }
                }

                // 그래도 없으면 fallback 처리
                if (nickname == null || nickname.trim().isEmpty()) {
                    String email = user.getEmail();
                    if (email != null && email.contains("@")) {
                        nickname = email.substring(0, email.indexOf("@"));
                    } else {
                        nickname = "카카오사용자" + kakaoId.substring(0, 5);
                    }
                }
                System.out.println("닉네임 최종 파싱 결과: " + nickname);
                user.setNickname(nickname);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    @Override
    public void registerKakaoUser(MemberDTO member) {
        int count = socialUserDAO.checkUserId(member.getId());
        if (count > 0) {
            throw new IllegalStateException("EXISTING_USER:" + member.getId());
        }

        socialUserDAO.insertKakaoUser(member);
    }

    @Override
    public MemberDTO handleKakaoLogin(KakaoUserDTO KakaoUser) {
        String kakaoId = "kakao_" + KakaoUser.getId();

        // 1. selectByKakaoId
        MemberDTO existing = socialUserDAO.selectByKakaoId(kakaoId);
        if (existing != null) return existing;

        // 2. selectByEmail
        MemberDTO byEmail = socialUserDAO.selectByEmail(KakaoUser.getEmail());
        if (byEmail != null) {
            byEmail.setKakaoId(kakaoId);
            byEmail.setJoinType("KAKAO");
            socialUserDAO.modMember(byEmail);
            return byEmail;
        }

        // 3. 신규 등록
        MemberDTO newMember = new MemberDTO();
        newMember.setId(kakaoId);
        newMember.setPwd("SOCIAL");

        String email = (KakaoUser.getEmail() == null || KakaoUser.getEmail().trim().isEmpty())
                ? "noemail_" + KakaoUser.getId() + "@kakao.com"
                : KakaoUser.getEmail();
        newMember.setEmail(email);

        
     // Kakao API로부터 받은 닉네임
        String kakaoNickname = KakaoUser.getNickname(); // 예: "고양이사랑123"

        // nickname 저장
        newMember.setNickname(kakaoNickname);

        // 2. name 필드에도 nickname 넣기 (JSP에서 ${loginName} 출력용)
        newMember.setName(kakaoNickname != null && !kakaoNickname.trim().isEmpty()
                ? kakaoNickname
                : "카카오사용자" + KakaoUser.getId().substring(0, 5));

        newMember.setKakaoId(kakaoId);
        newMember.setJoinType("KAKAO");
        newMember.setAge("0");
        newMember.setGender("U");

        registerKakaoUser(newMember);
        return newMember;
    }

    @Override
    public MemberDTO selectByKakaoId(String kakaoId) {
        return socialUserDAO.selectByKakaoId(kakaoId);
    }

    @Override
    public MemberDTO selectByEmail(String email) {
        return socialUserDAO.selectByEmail(email);
    }

    @Override
    public MemberDTO selectByUserId(String id) {
        return socialUserDAO.selectByUserId(id);
    }
}
