package com.test.animal.member.social.controller;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.NaverUserDTO;
import com.test.animal.member.social.service.NaverLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("/member")
public class NaverLoginController {

    @Autowired
    private NaverLoginService naverService;

    // 🔹 Step 1: 네이버 로그인 URL 생성 및 리다이렉트
    @RequestMapping("/naverLoginStart")
    public void naverLoginStart(HttpServletResponse response, HttpSession session) throws IOException {
        String state = UUID.randomUUID().toString();
        session.setAttribute("naverState", state);

        String clientId = "gvp5HrUQ4UssNFDKYTkF"; // 실제 Client ID
        String redirectUri = "http://localhost:8080/animal/member/naverLogin";
        String naverAuthUrl = "https://nid.naver.com/oauth2.0/authorize"
                + "?response_type=code"
                + "&client_id=" + clientId
                + "&redirect_uri=" + redirectUri
                + "&state=" + state;

        response.sendRedirect(naverAuthUrl);
    }

    // 🔹 Step 2: 콜백 처리
    @RequestMapping("/naverLogin")
    public String naverCallback(@RequestParam("code") String code,
                                @RequestParam("state") String state,
                                HttpSession session) {

        // 1. state 검증
        String savedState = (String) session.getAttribute("naverState");
        if (savedState == null || !savedState.equals(state)) {
            System.out.println("⚠️ state 불일치! 보안 위협 탐지");
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        // 2. 액세스 토큰 요청
        String accessToken = naverService.getAccessToken(code, state);

        // 3. 사용자 정보 요청
        NaverUserDTO naverUser = naverService.getUserInfo(accessToken);

        // 4. 기존 회원 여부 확인
        MemberDTO member = naverService.findByNaverId(naverUser.getId());

        // 5. 신규 회원이면 등록
        if (member == null) {
            member = new MemberDTO();
            member.setId(naverUser.getId());
            member.setEmail(naverUser.getEmail());
            member.setName(naverUser.getName());
            member.setJoinType("NAVER");

            // 기본값 설정
            member.setPwd("SOCIAL");
            member.setAge(0);
            member.setGender("U");

            naverService.registerNaverUser(member);
        }

        // 6. 세션 저장
        session.setAttribute("loginMember", member);

        return "redirect:/main.do";
    }
}
