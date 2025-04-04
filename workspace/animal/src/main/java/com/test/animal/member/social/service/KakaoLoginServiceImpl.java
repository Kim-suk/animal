package com.test.animal.member.social.service;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dao.SocialUserDAO;
import com.test.animal.member.social.dto.KakaoUserDTO;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class KakaoLoginServiceImpl implements KakaoLoginService {

    @Autowired
    private SocialUserDAO socialUserDAO;

    private final String CLIENT_ID = "fb8d53bac50cea415232bb28a3120465"; // 너의 REST API 키
    private final String CLIENT_SECRET = ""; // 선택 사항
    private final String REDIRECT_URI = "http://localhost:8080/animal/member/kakaoLogin";

    @Override
    public String getAccessToken(String code) {
        String url = "https://kauth.kakao.com/oauth/token";

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        String body = "grant_type=authorization_code" +
                      "&client_id=" + CLIENT_ID +
                      "&redirect_uri=" + REDIRECT_URI +
                      "&code=" + code +
                      (CLIENT_SECRET.isEmpty() ? "" : "&client_secret=" + CLIENT_SECRET);

        HttpEntity<String> request = new HttpEntity<>(body, headers);

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.POST, request, String.class);

        JSONObject json = new JSONObject(response.getBody());
        return json.getString("access_token");
    }

    @Override
    public KakaoUserDTO getUserInfo(String accessToken) {
        String url = "https://kapi.kakao.com/v2/user/me";

        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", "Bearer " + accessToken);
        HttpEntity<String> entity = new HttpEntity<>(headers);

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.GET, entity, String.class);

        JSONObject json = new JSONObject(response.getBody());

        KakaoUserDTO user = new KakaoUserDTO();
        user.setId(String.valueOf(json.getLong("id"))); // Kakao ID는 Long 타입
        JSONObject kakaoAccount = json.getJSONObject("kakao_account");

        user.setEmail(kakaoAccount.optString("email", ""));
        JSONObject profile = kakaoAccount.optJSONObject("profile");
        if (profile != null) {
            user.setName(profile.optString("nickname", ""));
        }

        return user;
    }

    @Override
    public MemberDTO findByKakaoId(String kakaoId) {
        return socialUserDAO.selectByKakaoId(kakaoId);
    }

    @Override
    public void registerKakaoUser(MemberDTO member) {
        socialUserDAO.insertKakaoUser(member);
    }
}
