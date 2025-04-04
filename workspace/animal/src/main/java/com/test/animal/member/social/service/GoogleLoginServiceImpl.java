package com.test.animal.member.social.service;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dao.SocialUserDAO;
import com.test.animal.member.social.dto.GoogleUserDTO;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class GoogleLoginServiceImpl implements GoogleLoginService {

    @Autowired
    private SocialUserDAO socialUserDAO;

    private final String CLIENT_ID = "1041374005294-sei4ka3orulnm41t7fjr6971tb2jt1ct.apps.googleusercontent.com\r\n";
    private final String CLIENT_SECRET = "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";
    private final String REDIRECT_URI = "http://localhost:8080/animal/member/googleLogin";

    @Override
    public String getAccessToken(String code) {
        String url = "https://oauth2.googleapis.com/token";

        RestTemplate restTemplate = new RestTemplate();

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        String body = "code=" + code +
                      "&client_id=" + CLIENT_ID +
                      "&client_secret=" + CLIENT_SECRET +
                      "&redirect_uri=" + REDIRECT_URI +
                      "&grant_type=authorization_code";

        HttpEntity<String> request = new HttpEntity<>(body, headers);
        ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.POST, request, String.class);

        JSONObject json = new JSONObject(response.getBody());
        return json.getString("access_token");
    }

    @Override
    public GoogleUserDTO getUserInfo(String accessToken) {
        String url = "https://www.googleapis.com/oauth2/v2/userinfo";

        HttpHeaders headers = new HttpHeaders();
    	headers.set("Authorization", "Bearer " + accessToken);
    	HttpEntity<String> entity = new HttpEntity<>(headers);

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.GET, entity, String.class);

        JSONObject json = new JSONObject(response.getBody());

        GoogleUserDTO user = new GoogleUserDTO();
        user.setId(json.getString("id"));
        user.setEmail(json.optString("email"));
        user.setName(json.optString("name"));

        return user;
    }

    @Override
    public MemberDTO findByGoogleId(String googleId) {
        return socialUserDAO.selectByGoogleId(googleId);
    }

    @Override
    public void registerGoogleUser(MemberDTO member) {
        socialUserDAO.insertGoogleUser(member);
    }
}
