package com.test.animal.member.social.controller;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.FacebookUserDTO;
import com.test.animal.member.social.service.FacebookLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/member")
public class FacebookLoginController {

    private static final String CLIENT_ID = "1382612529753885";
    private static final String REDIRECT_URI = "http://localhost:8080/animal/member/facebookLogin";
    private static final String FACEBOOK_AUTH_URL = "https://www.facebook.com/v19.0/dialog/oauth";

    @Autowired
    private FacebookLoginService facebookService;

    // Step 1: 페이스북 로그인 시작 URL로 리다이렉트
    @RequestMapping("/facebookLoginStart")
    public void facebookLoginStart(HttpServletResponse response) throws IOException {
        String url = FACEBOOK_AUTH_URL
                + "?client_id=" + CLIENT_ID
                + "&redirect_uri=" + REDIRECT_URI
                + "&response_type=code"
                + "&scope=email,public_profile";

        response.sendRedirect(url);
    }

    // Step 2: 콜백 처리
    @RequestMapping("/facebookLogin")
    public String facebookCallback(@RequestParam("code") String code,
                                   HttpSession session) {
        String accessToken = facebookService.getAccessToken(code);
        if (accessToken == null) {
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        FacebookUserDTO fbUser = facebookService.getUserInfo(accessToken);
        if (fbUser == null || fbUser.getId() == null) {
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        try {
            MemberDTO member = facebookService.handleFacebookLogin(fbUser);
            if (member == null) {
                return "redirect:/member/login.jsp?result=joinFailed";
            }

            session.setAttribute("loginMember", member);
            session.setAttribute("loginName", member.getName());
            session.setAttribute("loginId", member.getId());
            session.setAttribute("isLogin", true);

            return "redirect:/main.do";

        } catch (Exception e) {
            return "redirect:/member/login.jsp?result=joinFailed";
        }
    }
}
