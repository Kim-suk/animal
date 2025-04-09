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

    @Override
    public String getLoginUrl(HttpSession session) {
        String state = UUID.randomUUID().toString();
        session.setAttribute("naverState", state);

        return "https://nid.naver.com/oauth2.0/authorize"
                + "?response_type=code"
                + "&client_id=" + CLIENT_ID
                + "&redirect_uri=" + REDIRECT_URI
                + "&state=" + state;
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

        String email = responseObj.optString("email");
        if (email == null || email.isEmpty()) {
            email = user.getId() + "@naver.com";
        }
        if (email.length() > 50) {
            email = email.substring(0, 50);
        }
        user.setEmail(email);

        // ✅ name, nickname 모두 저장
        user.setName(responseObj.optString("name"));
        user.setNickname(responseObj.optString("nickname"));

        return user;
    }

    @Override
    public MemberDTO selectByNaverId(String naverId) {
        return socialUserDAO.selectByNaverId(naverId);
    }

    @Override
    public void registerNaverUser(MemberDTO member) {
        int count = socialUserDAO.checkUserId(member.getId());
        if (count > 0) {
            throw new IllegalStateException("EXISTING_USER:" + member.getId());
        }

        int result = socialUserDAO.insertNaverUser(member);
        if (result == 0) {
            throw new IllegalStateException("FAILED_TO_REGISTER_NAVER_USER");
        }
    }

    @Override
    public MemberDTO selectByEmail(String email) {
        return socialUserDAO.selectByEmail(email);
    }

    @Override
    public MemberDTO selectByUserId(String id) {
        return socialUserDAO.selectByUserId(id);
    }

    @Override
    public MemberDTO handleNaverLogin(NaverUserDTO NaverUser) {
        String naverId = "naver_" + NaverUser.getId();

        // 1. 기존 사용자 확인 (naver_id로 검색)
        MemberDTO existing = socialUserDAO.selectByNaverId(naverId);
        if (existing != null) return existing;

        // 2. 이메일로 사용자 확인 (이전에 가입한 이메일일 경우 naver_id 연결)
        MemberDTO byEmail = socialUserDAO.selectByEmail(NaverUser.getEmail());
        if (byEmail != null) {
            byEmail.setNaverId(naverId);
            byEmail.setJoinType("NAVER");
            socialUserDAO.modMember(byEmail);
            return byEmail;
        }

        // 3. 신규 등록
        MemberDTO newMember = new MemberDTO();
        newMember.setId(naverId);
        newMember.setPwd("SOCIAL");

        // 이메일 기본값 처리
        String email = (NaverUser.getEmail() == null || NaverUser.getEmail().trim().isEmpty())
                ? "noemail_" + NaverUser.getId() + "@naver.com"
                : NaverUser.getEmail();
        newMember.setEmail(email.length() > 50 ? email.substring(0, 50) : email);

        // 닉네임이 없으면 name 사용, 그것도 없으면 기본값
        String displayName = NaverUser.getNickname();
        if (displayName == null || displayName.trim().isEmpty()) {
            displayName = NaverUser.getName();
        }
        if (displayName == null || displayName.trim().isEmpty()) {
            displayName = "네이버사용자" + NaverUser.getId().substring(0, 5);
        }

        newMember.setNickname(displayName);
        newMember.setName(displayName); // JSP에서 ${loginName}으로 출력용

        newMember.setNaverId(naverId);
        newMember.setJoinType("NAVER");
        newMember.setAge("0");
        newMember.setGender("U");

        registerNaverUser(newMember);
        return newMember;
    }

}
