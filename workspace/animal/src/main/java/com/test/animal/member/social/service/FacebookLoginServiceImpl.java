package com.test.animal.member.social.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dao.SocialUserDAO;
import com.test.animal.member.social.dto.FacebookUserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

@Service
public class FacebookLoginServiceImpl implements FacebookLoginService {

    private static final Logger log = LoggerFactory.getLogger(FacebookLoginServiceImpl.class);
    private static final String FB_API_VERSION = "v10.0";

    @Autowired
    private SocialUserDAO socialUserDAO;

    private final String clientId = "1382612529753885";
    private final String clientSecret = "bf64f0ae49850e4396a91945b338d42e".trim();
    private final String redirectUri = "http://localhost:8080/animal/member/facebookLogin";

    @Override
    public String getAccessToken(String code) {
        try {
            String tokenUrl = "https://graph.facebook.com/" + FB_API_VERSION + "/oauth/access_token"
                    + "?client_id=" + clientId
                    + "&redirect_uri=" + redirectUri
                    + "&client_secret=" + clientSecret
                    + "&code=" + code;

            URL url = new URL(tokenUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");

            try (BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
                StringBuilder sb = new StringBuilder();
                String line;
                while ((line = br.readLine()) != null) sb.append(line);

                ObjectMapper mapper = new ObjectMapper();
                JsonNode json = mapper.readTree(sb.toString());

                return json.get("access_token").asText();
            }

        } catch (Exception e) {
            log.error("페이스북 AccessToken 요청 중 오류 발생", e);
            return null;
        }
    }

    @Override
    public FacebookUserDTO getUserInfo(String accessToken) {
        FacebookUserDTO user = new FacebookUserDTO();

        try {
            String userInfoUrl = "https://graph.facebook.com/me"
                    + "?fields=id,name,email"
                    + "&access_token=" + accessToken;

            URL url = new URL(userInfoUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");

            try (BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
                StringBuilder result = new StringBuilder();
                String line;
                while ((line = br.readLine()) != null) result.append(line);

                ObjectMapper mapper = new ObjectMapper();
                JsonNode json = mapper.readTree(result.toString());

                user.setId(json.get("id").asText());
                user.setEmail(json.has("email") ? json.get("email").asText() : null);
                user.setName(json.has("name") ? json.get("name").asText() : null);
            }

        } catch (Exception e) {
            log.error("페이스북 사용자 정보 요청 중 오류 발생", e);
        }

        return user;
    }

    @Override
    public void registerFacebookUser(MemberDTO member) {
        int result = socialUserDAO.insertFacebookUser(member);
        if (result == 0) {
            log.warn("페이스북 사용자 등록 실패: {}", member.getId());
        }
    }

    @Override
    public MemberDTO handleFacebookLogin(FacebookUserDTO fbUser) {
        String fbId = "facebook_" + fbUser.getId();

        MemberDTO existing = socialUserDAO.selectByFacebookId(fbId);
        if (existing != null) return existing;

        MemberDTO byEmail = socialUserDAO.selectByEmail(fbUser.getEmail());
        if (byEmail != null) {
            byEmail.setFacebookId(fbId);
            byEmail.setJoinType("facebook");
            return byEmail;
        }

        MemberDTO newMember = new MemberDTO();
        newMember.setId(fbId);
        newMember.setPwd("SOCIAL");

        String email = (fbUser.getEmail() == null || fbUser.getEmail().trim().isEmpty())
                ? "noemail_" + fbUser.getId() + "@facebook.com"
                : fbUser.getEmail();
        newMember.setEmail(email);

        String name = (fbUser.getName() == null || fbUser.getName().trim().isEmpty())
                ? "페이스북사용자" : fbUser.getName();
        newMember.setName(name);

        newMember.setFacebookId(fbId);
        newMember.setJoinType("facebook");
        newMember.setAge("0");
        newMember.setGender("U");

        registerFacebookUser(newMember);
        return socialUserDAO.selectByFacebookId(fbId);
    }

    @Override
    public MemberDTO selectByFacebookId(String facebookId) {
        return socialUserDAO.selectByFacebookId(facebookId);
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
