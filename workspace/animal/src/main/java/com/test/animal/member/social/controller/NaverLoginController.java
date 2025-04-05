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

        if (naverUser == null || naverUser.getId() == null) {
            System.out.println("⚠️ 네이버 사용자 정보 조회 실패");
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        // 4. naver_id 기준 회원 조회
        MemberDTO member = naverService.findByNaverId(naverUser.getId());

        // 5. 회원이 없으면 새로 등록
        if (member == null) {
            // 5-1. 이메일 중복 여부 확인
            MemberDTO existingByEmail = naverService.findByEmail(naverUser.getEmail());
            if (existingByEmail != null) {
                // 기존 이메일 회원이 있으면 해당 회원으로 로그인 처리
                session.setAttribute("loginMember", existingByEmail);
                return "redirect:/main.do";
            }

            // 5-2. 신규 회원 등록
            member = new MemberDTO();
            member.setId("naver_" + naverUser.getId()); // 💡 DB id는 UNIQUE 해야 함
            member.setEmail(naverUser.getEmail());

            // 이름 처리
            if (naverUser.getName() == null || naverUser.getName().trim().isEmpty()) {
                member.setName("네이버사용자");
            } else {
                member.setName(naverUser.getName());
            }

            // 기본값 설정
            member.setJoinType("NAVER");
            member.setPwd("SOCIAL");
            member.setAge(0);
            member.setGender("U");

            // 회원 등록 시도
            try {
                naverService.registerNaverUser(member);
            } catch (Exception e) {
                System.out.println("❌ 회원 등록 중 오류 발생: " + e.getMessage());
                return "redirect:/member/login.jsp?result=joinFailed";
            }
        }

        // 6. 세션 저장 후 로그인 완료
        session.setAttribute("loginMember", member);
        return "redirect:/main.do";
    }
}
