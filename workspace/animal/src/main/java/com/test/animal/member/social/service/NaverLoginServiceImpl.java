package com.test.animal.member.social.service;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dao.SocialUserDAO;
import com.test.animal.member.social.dto.NaverUserDTO;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;
import java.util.UUID;

@Service
public class NaverLoginServiceImpl implements NaverLoginService {

    @Autowired
    private SocialUserDAO socialUserDAO;

    private final String CLIENT_ID = "gvp5HrUQ4UssNFDKYTkF";
    private final String CLIENT_SECRET = "1Uc0p97bSO";
    private final String REDIRECT_URI = "http://localhost:8080/animal/member/naverLogin";

    /**
     * 로그인 시작 시 호출하여 로그인 URL 반환
     */
    public String getLoginUrl(HttpSession session) {
        String state = UUID.randomUUID().toString(); // 무작위 state 생성
        session.setAttribute("naverState", state);   // 세션에 저장

        String loginUrl = "https://nid.naver.com/oauth2.0/authorize"
                + "?response_type=code"
                + "&client_id=" + CLIENT_ID
                + "&redirect_uri=" + REDIRECT_URI
                + "&state=" + state;

        System.out.println("🔗 생성된 네이버 로그인 URL: " + loginUrl);
        return loginUrl;
    }

    @Override
    public String getAccessToken(String code, String state) {
        String url = "https://nid.naver.com/oauth2.0/token"
                + "?grant_type=authorization_code"
                + "&client_id=" + CLIENT_ID
                + "&client_secret=" + CLIENT_SECRET
                + "&code=" + code
                + "&state=" + state;

        System.out.println("🔥 요청할 토큰 URL: " + url);
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);

        System.out.println("🔥 응답 상태 코드: " + response.getStatusCode());
        System.out.println("🔥 응답 바디: " + response.getBody());

        JSONObject json = new JSONObject(response.getBody());
        return json.getString("access_token");
    }

    @Override
    public NaverUserDTO getUserInfo(String accessToken) {
        String url = "https://openapi.naver.com/v1/nid/me";

        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", "Bearer " + accessToken);
        HttpEntity<String> entity = new HttpEntity<>(headers);

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.GET, entity, String.class);

        JSONObject json = new JSONObject(response.getBody());
        JSONObject responseObj = json.getJSONObject("response");

        NaverUserDTO user = new NaverUserDTO();
        user.setId(responseObj.getString("id"));
        user.setEmail(responseObj.optString("email"));
        user.setName(responseObj.optString("name"));

        return user;
    }

    @Override
    public MemberDTO findByNaverId(String naverId) {
        return socialUserDAO.selectByNaverId(naverId);
    }

    @Override
    public void registerNaverUser(MemberDTO member) {
        socialUserDAO.insertNaverUser(member);
    }
}
