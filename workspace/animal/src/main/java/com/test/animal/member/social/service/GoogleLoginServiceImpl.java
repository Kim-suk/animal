package com.test.animal.member.social.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.test.animal.member.dao.MemberDAO;
import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.GoogleUserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

@Service
public class GoogleLoginServiceImpl implements GoogleLoginService {

    @Autowired
    private MemberDAO memberDAO;

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
    public MemberDTO findByGoogleId(String googleId) {
        return memberDAO.selectByGoogleId("google_" + googleId);
    }

    @Override
    public MemberDTO findByEmail(String email) {
        return memberDAO.selectByEmail(email);
    }

    @Override
    public MemberDTO findByUserId(String id) {
        return memberDAO.selectByUserId(id);
    }

    @Override
    public void registerGoogleUser(MemberDTO member) {
        int count = memberDAO.checkUserId(member.getId());
        if (count > 0) {
            throw new IllegalStateException("EXISTING_USER:" + member.getId());
        }

        memberDAO.insertGoogleUser(member);
    }
}
