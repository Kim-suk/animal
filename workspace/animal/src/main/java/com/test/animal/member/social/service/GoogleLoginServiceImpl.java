package com.test.animal.member.social.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dao.SocialUserDAO;
import com.test.animal.member.social.dto.GoogleUserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

@Service
public class GoogleLoginServiceImpl implements GoogleLoginService {

    @Autowired
    private SocialUserDAO socialUserDAO;

    private final String clientId = "1041374005294-sei4ka3orulnm41t7fjr6971tb2jt1ct.apps.googleusercontent.com";
    private final String clientSecret = "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";
    private final String redirectUri = "http://localhost:8080/animal/member/googleLogin";

    @Override
    public String getAccessToken(String code) {
        try {
            URL url = new URL("https://oauth2.googleapis.com/token");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            conn.setRequestMethod("POST");
            conn.setDoOutput(true);

            String params = "code=" + code +
                    "&client_id=" + clientId +
                    "&client_secret=" + clientSecret +
                    "&redirect_uri=" + redirectUri +
                    "&grant_type=authorization_code";

            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            bw.write(params);
            bw.flush();

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            StringBuilder sb = new StringBuilder();
            String line;

            while ((line = br.readLine()) != null) sb.append(line);

            ObjectMapper mapper = new ObjectMapper();
            JsonNode json = mapper.readTree(sb.toString());
            return json.get("access_token").asText();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public GoogleUserDTO getUserInfo(String accessToken) {
        GoogleUserDTO user = new GoogleUserDTO();

        try {
            URL url = new URL("https://www.googleapis.com/oauth2/v2/userinfo");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "Bearer " + accessToken);

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            StringBuilder result = new StringBuilder();
            String line;

            while ((line = br.readLine()) != null) result.append(line);

            ObjectMapper mapper = new ObjectMapper();
            JsonNode json = mapper.readTree(result.toString());

            user.setId(json.get("id").asText());
            user.setEmail(json.has("email") ? json.get("email").asText() : null);
            user.setName(json.has("name") ? json.get("name").asText() : null);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    @Override
    public void registerGoogleUser(MemberDTO member) {
        // 중복 체크 생략 또는 필요시 DAO에 checkUserId 추가
        socialUserDAO.insertGoogleUser(member);
    }

    @Override
    public MemberDTO handleGoogleLogin(GoogleUserDTO GoogleUser) {
        String googleId = "google_" + GoogleUser.getId();

        // 1. selectByGoogleId
        MemberDTO existing = socialUserDAO.selectByGoogleId(googleId);
        if (existing != null) return existing;

        // 2. selectByEmail
        MemberDTO byEmail = socialUserDAO.selectByEmail(GoogleUser.getEmail());
        if (byEmail != null) {
            byEmail.setGoogleId(googleId);
            byEmail.setJoinType("google");
            // socialUserDAO.modMember(byEmail); // modMember 없으면 주석 유지 또는 MemberDAO에서 처리
            return byEmail;
        }

        // 3. 신규 등록
        MemberDTO newMember = new MemberDTO();
        newMember.setId(googleId);
        newMember.setPwd("SOCIAL");

        String email = (GoogleUser.getEmail() == null || GoogleUser.getEmail().trim().isEmpty())
                ? "noemail_" + GoogleUser.getId() + "@google.com"
                : GoogleUser.getEmail();
        newMember.setEmail(email);

        String name = (GoogleUser.getName() == null || GoogleUser.getName().trim().isEmpty())
                ? "구글사용자" : GoogleUser.getName();
        newMember.setName(name);

        newMember.setGoogleId(googleId);
        newMember.setJoinType("google");
        newMember.setAge("0");
        newMember.setGender("U");

        registerGoogleUser(newMember);
        return newMember;
    }

    @Override
    public MemberDTO selectByGoogleId(String googleId) {
        return socialUserDAO.selectByGoogleId(googleId);
    }

    @Override
    public MemberDTO selectByEmail(String email) {
        return socialUserDAO.selectByEmail(email);
    }

    @Override
    public MemberDTO selectByUserId(String id) {
        // 필요 시 SocialUserDAO에 해당 메서드 추가
        return null;
    }
}