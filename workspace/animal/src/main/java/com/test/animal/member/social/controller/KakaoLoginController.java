package com.test.animal.member.social.controller;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.KakaoUserDTO;
import com.test.animal.member.social.service.KakaoLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class KakaoLoginController {

    @Autowired
    private KakaoLoginService KakaoService;

    @RequestMapping("/member/KakaoLogin")
    public String KakaoCallback(@RequestParam("code") String code, HttpSession session) {
        String accessToken = KakaoService.getAccessToken(code);
        KakaoUserDTO KakaoUser = KakaoService.getUserInfo(accessToken);

        MemberDTO member = KakaoService.findByKakaoId(KakaoUser.getId());

        if (member == null) {
            member = new MemberDTO();
            member.setId(KakaoUser.getId());
            member.setEmail(KakaoUser.getEmail());
            member.setName(KakaoUser.getName());
            member.setJoinType("KAKAO");
            KakaoService.registerKakaoUser(member);
        }

        session.setAttribute("loginMember", member);
        return "redirect:/main.do";
    }
}
