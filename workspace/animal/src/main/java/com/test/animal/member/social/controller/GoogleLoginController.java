package com.test.animal.member.social.controller;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.GoogleUserDTO;
import com.test.animal.member.social.service.GoogleLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class GoogleLoginController {

    @Autowired
    private GoogleLoginService googleService;

    @RequestMapping("/member/googleLogin")
    public String googleCallback(@RequestParam("code") String code, HttpSession session) {
        String accessToken = googleService.getAccessToken(code);
        GoogleUserDTO googleUser = googleService.getUserInfo(accessToken);

        MemberDTO member = googleService.findByGoogleId(googleUser.getId());

        if (member == null) {
            member = new MemberDTO();
            member.setId(googleUser.getId());
            member.setEmail(googleUser.getEmail());
            member.setName(googleUser.getName());
            member.setJoinType("GOOGLE");
            googleService.registerGoogleUser(member);
        }

        session.setAttribute("loginMember", member);
        return "redirect:/main.do";
    }
}
