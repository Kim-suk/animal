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

    
    public String getLoginUrl(HttpSession session) {
        String state = UUID.randomUUID().toString(); // 무작위 state 생성
        session.setAttribute("naverState", state);   // 세션에 저장

        String loginUrl = "https://nid.naver.com/oauth2.0/authorize"
                + "?response_type=code"
                + "&client_id=" + CLIENT_ID
                + "&redirect_uri=" + REDIRECT_URI
                + "&state=" + state;

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

       
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);

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

        // ⭐ 이메일 길이 예외 처리 추가
        String email = responseObj.optString("email");
        if (email == null || email.isEmpty()) {
            email = user.getId() + "@naver.com"; // 이메일 없으면 기본값
        }
        if (email.length() > 50) {
            email = email.substring(0, 50); // 너무 길면 자르기
        }
        user.setEmail(email); // 수정된 이메일 적용

        user.setName(responseObj.optString("name")); // 이름도 필요시 자를 수 있음

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

	@Override
	public MemberDTO findByEmail(String email) {
		  return socialUserDAO.findByEmail(email);
	}

}
