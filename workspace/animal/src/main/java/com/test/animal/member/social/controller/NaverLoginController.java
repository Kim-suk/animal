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
                + "&state=" + state
        		+ "&scope=nickname,name,email"; 

        response.sendRedirect(naverAuthUrl);
    }

    @RequestMapping("/naverLogin")
    public String naverCallback(@RequestParam("code") String code,
                                @RequestParam("state") String state,
                                HttpSession session) {

        String savedState = (String) session.getAttribute("naverState");
        if (savedState == null || !savedState.equals(state)) {
            System.out.println("⚠️ state 불일치! 보안 위협 탐지");
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        String accessToken = naverService.getAccessToken(code, state);
        NaverUserDTO naverUser = naverService.getUserInfo(accessToken);
        
        System.out.println("네이버 사용자 이름: " + naverUser.getName());


        if (naverUser == null || naverUser.getId() == null) {
            System.out.println("⚠️ 네이버 사용자 정보 조회 실패");
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        MemberDTO member = naverService.selectByNaverId(naverUser.getId());

        if (member == null) {
            MemberDTO existingByEmail = naverService.selectByEmail(naverUser.getEmail());
            if (existingByEmail != null) {
                session.setAttribute("loginMember", existingByEmail);
                return "redirect:/main.do";
            }

            member = new MemberDTO();
            member.setId("naver_" + naverUser.getId());
            member.setNaverId(naverUser.getId());

            String email = (naverUser.getEmail() == null || naverUser.getEmail().trim().isEmpty())
                    ? "noemail_" + naverUser.getId() + "@naver.com"
                    : naverUser.getEmail();
            member.setEmail(email);
            
		
			String userName = (naverUser.getName() == null ||
			naverUser.getName().trim().isEmpty()) ? "네이버사용자" +
			naverUser.getId().substring(0, 5) : naverUser.getName(); // 진짜 이름 저장
			member.setName(userName);
			 
			  
			  /*String userName = naverUser.getName();
			  if (userName == null || userName.trim().isEmpty()) {
                // 네이버에서 제공한 이름이 없을 경우 기본값을 설정
                userName = "네이버사용자" + naverUser.getId().substring(0, 5);
			  }
			  member.setName(userName);*/
            
            
            String nickname = (naverUser.getNickname() == null || naverUser.getNickname().trim().isEmpty())
                    ? userName
                    : naverUser.getNickname();
            member.setNickname(nickname);
            System.out.println("nickname: " + member.getNickname());
            
            member.setJoinType("NAVER");
            member.setPwd("SOCIAL");
            member.setAge(0);
            member.setGender("U");

            try {
                naverService.registerNaverUser(member);
            } catch (IllegalStateException e) {
                if (e.getMessage().startsWith("EXISTING_USER:")) {
                    String existingId = e.getMessage().split(":")[1];
                    System.out.println("⚠️ 이미 등록된 ID로 로그인 처리: " + existingId);
                    member = naverService.selectByUserId(existingId);
                } else {
                    System.out.println("❌ 회원 등록 중 오류: " + e.getMessage());
                    return "redirect:/member/login.jsp?result=joinFailed";
                }
            } catch (Exception ex) {
                System.out.println("❌ 알 수 없는 오류: " + ex.getMessage());
                return "redirect:/member/login.jsp?result=joinFailed";
            }
        }

        session.setAttribute("loginMember", member);
        session.setAttribute("loginName", member.getName());
        session.setAttribute("loginNickname", member.getNickname());
        session.setAttribute("loginId", member.getId());
        session.setAttribute("loginType", member.getJoinType());
        session.setAttribute("isLogin", true);
        
        System.out.println("네이버 로그인 처리됨: " + member.getId());
        System.out.println("세션 저장됨: " + member.getName());
        
        return "redirect:/main.do";
    }
}