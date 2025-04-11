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

    // �윍� Step 1: 援ш� 濡쒓렇�씤 URL濡� 由щ떎�씠�젆�듃 (�븘�슂 �떆 援ы쁽)
    @RequestMapping("/googleLoginStart")
    public void googleLoginStart(HttpServletResponse response) throws IOException {
        String clientId = "1041374005294-sei4ka3orulnm41t7fjr6971tb2jt1ct.apps.googleusercontent.com"; // �떎�젣 Google �겢�씪�씠�뼵�듃 ID
        String redirectUri = "http://localhost:8080/animal/member/googleLogin";

        String googleAuthUrl = "https://accounts.google.com/o/oauth2/v2/auth"
                + "?client_id=" + clientId
                + "&redirect_uri=" + redirectUri
                + "&response_type=code"
                + "&scope=openid%20email%20profile";

        response.sendRedirect(googleAuthUrl);
    }

    // �윍� Step 2: 肄쒕갚 泥섎━
    @RequestMapping("/googleLogin")
    public String googleCallback(@RequestParam("code") String code,
                                 HttpSession session) {

        // 1. �븸�꽭�뒪 �넗�겙 諛쒓툒 �슂泥�
        String accessToken = googleService.getAccessToken(code);
        if (accessToken == null) {
            System.out.println("�쓬 援ш� �넗�겙 諛쒓툒 �떎�뙣");
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        // 2. �궗�슜�옄 �젙蹂� 議고쉶
        GoogleUserDTO googleUser = googleService.getUserInfo(accessToken);
        if (googleUser == null || googleUser.getId() == null) {
            System.out.println("�쓬 援ш� �궗�슜�옄 �젙蹂� 議고쉶 �떎�뙣");
            return "redirect:/member/login.jsp?result=loginFailed";
        }

        // 3. 湲곗〈 援ш� ID濡� �쉶�썝 議고쉶
        MemberDTO member = googleService.findByGoogleId(googleUser.getId());

        if (member == null) {
            // 3-1. �씠硫붿씪 以묐났 �뿬遺� �솗�씤
            MemberDTO existingByEmail = googleService.findByEmail(googleUser.getEmail());
            if (existingByEmail != null) {
                session.setAttribute("loginMember", existingByEmail);
                return "redirect:/main.do";
            }

            // 3-2. �떊洹� �쉶�썝 �벑濡�
            member = new MemberDTO();
            member.setId("google_" + googleUser.getId());
            member.setGoogleId(googleUser.getId());

            // �윉� �씠硫붿씪 泥섎━
            String email = (googleUser.getEmail() == null || googleUser.getEmail().trim().isEmpty())
                    ? "noemail_" + googleUser.getId() + "@google.com"
                    : googleUser.getEmail();
            member.setEmail(email);

            // �윉� �씠由� 泥섎━
            member.setName(googleUser.getName() == null || googleUser.getName().trim().isEmpty()
                    ? "援ш��궗�슜�옄" : googleUser.getName());

            member.setJoinType("GOOGLE");
            member.setPwd("SOCIAL");
            member.setAge("0");
            member.setGender("U");

            try {
                googleService.registerGoogleUser(member);
            } catch (IllegalStateException e) {
                if (e.getMessage().startsWith("EXISTING_USER:")) {
                    String existingId = e.getMessage().split(":")[1];
                    System.out.println("�슑截� �씠誘� �벑濡앸맂 ID濡� 濡쒓렇�씤 泥섎━: " + existingId);
                    member = googleService.findByUserId(existingId);
                } else {
                    System.out.println("�쓬 �쉶�썝 �벑濡� 以� �삤瑜�: " + e.getMessage());
                    return "redirect:/member/login.jsp?result=joinFailed";
                }
            } catch (Exception ex) {
                System.out.println("�쓬 �븣 �닔 �뾾�뒗 �삤瑜�: " + ex.getMessage());
                return "redirect:/member/login.jsp?result=joinFailed";
            }
        }
        
        // 4. 濡쒓렇�씤 泥섎━
        session.setAttribute("loginMember", member);
        session.setAttribute("loginId", member.getId());
        session.setAttribute("loginName", member.getName());
        return "redirect:/main.do";
    }
}
