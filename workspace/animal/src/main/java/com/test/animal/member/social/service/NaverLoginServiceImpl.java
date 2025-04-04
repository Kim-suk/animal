package com.test.animal.member.social.service;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dao.SocialUserDAO;
import com.test.animal.member.social.dto.NaverUserDTO;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class NaverLoginServiceImpl implements NaverLoginService {

    @Autowired
    private SocialUserDAO socialUserDAO;

    private final String CLIENT_ID = "gvp5HrUQ4UssNFDKYTkF\r\n";
    private final String CLIENT_SECRET = "zXKjNefxE4";
    private final String REDIRECT_URI =  "http://localhost:8080/animal/member/naverLogin";

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
        String url =  "https://openapi.naver.com/v1/nid/me";

        HttpHeaders headers = new HttpHeaders();
    	headers.set("Authorization", "Bearer " + accessToken);
    	HttpEntity<String> entity = new HttpEntity<>(headers);
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.exchange( "https://openapi.naver.com/v1/nid/me", HttpMethod.GET, entity, String.class);

        JSONObject json = new JSONObject(response.getBody());

        NaverUserDTO user = new NaverUserDTO();
        user.setId(json.getString("id"));
        user.setEmail(json.optString("email"));
        user.setName(json.optString("name"));

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
	public String getAccessToken(String code) {
		// TODO Auto-generated method stub
		return null;
	}

}
