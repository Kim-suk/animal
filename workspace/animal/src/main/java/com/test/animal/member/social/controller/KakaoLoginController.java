package com.test.animal.member.social.controller;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.KakaoUserDTO;
import com.test.animal.member.social.service.KakaoLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/member")
public class KakaoLoginController {

    @Autowired
    private KakaoLoginService kakaoService;

    // 🔹 Step 1: 카카오 로그인 URL 생성 및 리다이렉트
    @RequestMapping("/kakaoLoginStart")
    public void kakaoLoginStart(HttpServletResponse response) throws IOException {
        String clientId = "fb8d53bac50cea415232bb28a3120465"; // 실제 Kakao REST API 키
        String redirectUri = "http://localhost:8080/animal/member/kakaoLogin";

        String kakaoAuthUrl = "https://kauth.kakao.com/oauth/authorize"
                + "?response_type=code"
                + "&client_id=" + clientId
                + "&redirect_uri=" + redirectUri
                + "&prompt=consent";

        response.sendRedirect(kakaoAuthUrl);
    }

    // 🔹 Step 2: 콜백 처리
    @RequestMapping("/kakaoLogin")
    public String kakaoCallback(@RequestParam("code") String code,
                                HttpSession session) {

        // 1. 액세스 토큰 요청
        String accessToken = kakaoService.getAccessToken(code);
        if (accessToken == null) {
            System.out.println("❌ 카카오 토큰 발급 실패");
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        // 2. 사용자 정보 요청
        KakaoUserDTO kakaoUser = kakaoService.getUserInfo(accessToken);

        if (kakaoUser == null || kakaoUser.getId() == null) {
            System.out.println("❌ 카카오 사용자 정보 조회 실패");
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        // 3. kakao_id 기준 회원 조회
        MemberDTO member = kakaoService.selectByKakaoId(kakaoUser.getId());

        // 4. 회원이 없으면 새로 등록
        if (member == null) {
            // 4-1. 이메일 중복 여부 확인
            MemberDTO existingByEmail = kakaoService.selectByEmail(kakaoUser.getEmail());
            if (existingByEmail != null) {
                session.setAttribute("loginMember", existingByEmail);
                return "redirect:/main.do";
            }

         // 4-2. 신규 회원 등록
            member = new MemberDTO();
            member.setId("kakao_" + kakaoUser.getId());
            member.setKakaoId(kakaoUser.getId());
            session.setAttribute("loginName", member.getName());
            session.setAttribute("loginType", member.getJoinType()); 

            // 👉 이메일 처리 간결화
            String email = (kakaoUser.getEmail() == null || kakaoUser.getEmail().trim().isEmpty())
                    ? "noemail_" + kakaoUser.getId() + "@kakao.com"
                    : kakaoUser.getEmail();
            member.setEmail(email);

         // 👉 닉네임 처리
            String nickname = (kakaoUser.getNickname() == null || kakaoUser.getNickname().trim().isEmpty())
                    ? "카카오사용자" : kakaoUser.getNickname();
            member.setName(nickname);         // 이름에 넣고
            member.setNickname(nickname);     // 닉네임에도 꼭 저장하기!

            member.setJoinType("KAKAO");
            member.setPwd("SOCIAL");
            member.setAge(0);
            member.setGender("U");

            try {
                kakaoService.registerKakaoUser(member);
            } catch (IllegalStateException e) {
                if (e.getMessage().startsWith("EXISTING_USER:")) {
                    String existingId = e.getMessage().split(":")[1];
                    System.out.println("⚠️ 이미 등록된 ID로 로그인 처리: " + existingId);
                    member = kakaoService.selectByUserId(existingId);
                } else {
                    System.out.println("❌ 회원 등록 중 오류: " + e.getMessage());
                    return "redirect:/member/login.jsp?result=joinFailed";
                }
            } catch (Exception ex) {
                System.out.println("❌ 알 수 없는 오류: " + ex.getMessage());
                return "redirect:/member/login.jsp?result=joinFailed";
            }
        }
        // 5. 세션 저장 후 로그인 완료
        session.setAttribute("loginMember", member);
        session.setAttribute("loginId", member.getId());
        session.setAttribute("loginNickname", member.getNickname()); 
        session.setAttribute("loginName", member.getName()); // 또는 nickname
        session.setAttribute("isLogin", true);
        
    
        return "redirect:/main.do";
    }
}
