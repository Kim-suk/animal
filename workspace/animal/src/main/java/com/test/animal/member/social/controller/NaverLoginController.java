package com.test.animal.member.social.controller;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.NaverUserDTO;
import com.test.animal.member.social.service.NaverLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class NaverLoginController {

    @Autowired
    private NaverLoginService naverService;

    @RequestMapping("/animal/member/naverLogin.do")
    public String naverCallback(@RequestParam("code") String code,
                                @RequestParam("state") String state,
                                HttpSession session) {
        // 액세스 토큰 요청
        String accessToken = naverService.getAccessToken(code, state);

        // 사용자 정보 요청
        NaverUserDTO naverUser = naverService.getUserInfo(accessToken);

        // 기존 회원 조회
        MemberDTO member = naverService.findByNaverId(naverUser.getId());

        // 신규 회원일 경우 등록
        if (member == null) {
            member = new MemberDTO();
            member.setId(naverUser.getId());
            member.setEmail(naverUser.getEmail());
            member.setName(naverUser.getName());
            member.setJoinType("NAVER");

            naverService.registerNaverUser(member);
        }

        // 세션에 로그인 정보 저장
        session.setAttribute("loginMember", member);

        return "redirect:/main.do";
    }
}
