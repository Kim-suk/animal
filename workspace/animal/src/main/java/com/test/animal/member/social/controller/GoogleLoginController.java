package com.test.animal.member.social.controller;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.GoogleUserDTO;
import com.test.animal.member.social.service.GoogleLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/member")
public class GoogleLoginController {

    @Autowired
    private GoogleLoginService googleService;

    // 🔹 Step 1: 구글 로그인 URL로 리다이렉트 (필요 시 구현)
    @RequestMapping("/googleLoginStart")
    public void googleLoginStart(HttpServletResponse response) throws IOException {
        String clientId = "1041374005294-sei4ka3orulnm41t7fjr6971tb2jt1ct.apps.googleusercontent.com"; // 실제 Google 클라이언트 ID
        String redirectUri = "http://localhost:8080/animal/member/googleLogin";

        String googleAuthUrl = "https://accounts.google.com/o/oauth2/v2/auth"
                + "?client_id=" + clientId
                + "&redirect_uri=" + redirectUri
                + "&response_type=code"
                + "&scope=openid%20email%20profile";

        response.sendRedirect(googleAuthUrl);
    }

    // 🔹 Step 2: 콜백 처리
    @RequestMapping("/googleLogin")
    public String googleCallback(@RequestParam("code") String code,
                                 HttpSession session) {

        // 1. 액세스 토큰 발급 요청
        String accessToken = googleService.getAccessToken(code);
        if (accessToken == null) {
            System.out.println("❌ 구글 토큰 발급 실패");
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        // 2. 사용자 정보 조회
        GoogleUserDTO googleUser = googleService.getUserInfo(accessToken);
        if (googleUser == null || googleUser.getId() == null) {
            System.out.println("❌ 구글 사용자 정보 조회 실패");
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        // 3. 기존 구글 ID로 회원 조회
        MemberDTO member = googleService.findByGoogleId(googleUser.getId());

        if (member == null) {
            // 3-1. 이메일 중복 여부 확인
            MemberDTO existingByEmail = googleService.findByEmail(googleUser.getEmail());
            if (existingByEmail != null) {
                session.setAttribute("loginMember", existingByEmail);
                return "redirect:/main.do";
            }

            // 3-2. 신규 회원 등록
            member = new MemberDTO();
            member.setId("google_" + googleUser.getId());
            member.setGoogleId(googleUser.getId());

            // 👉 이메일 처리
            String email = (googleUser.getEmail() == null || googleUser.getEmail().trim().isEmpty())
                    ? "noemail_" + googleUser.getId() + "@google.com"
                    : googleUser.getEmail();
            member.setEmail(email);

            // 👉 이름 처리
            member.setName(googleUser.getName() == null || googleUser.getName().trim().isEmpty()
                    ? "구글사용자" : googleUser.getName());

            member.setJoinType("GOOGLE");
            member.setPwd("SOCIAL");
            member.setAge("0");
            member.setGender("U");

            try {
                googleService.registerGoogleUser(member);
            } catch (IllegalStateException e) {
                if (e.getMessage().startsWith("EXISTING_USER:")) {
                    String existingId = e.getMessage().split(":")[1];
                    System.out.println("⚠️ 이미 등록된 ID로 로그인 처리: " + existingId);
                    member = googleService.findByUserId(existingId);
                } else {
                    System.out.println("❌ 회원 등록 중 오류: " + e.getMessage());
                    return "redirect:/member/login.jsp?result=joinFailed";
                }
            } catch (Exception ex) {
                System.out.println("❌ 알 수 없는 오류: " + ex.getMessage());
                return "redirect:/member/login.jsp?result=joinFailed";
            }
        }

        // 4. 로그인 처리
        session.setAttribute("loginMember", member);
        return "redirect:/main.do";
    }
}
