package com.test.animal.member.social.service;

import javax.servlet.http.HttpSession;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.NaverUserDTO;

public interface NaverLoginService {
	String getAccessToken(String code,String state);
    NaverUserDTO getUserInfo(String accessToken);
    MemberDTO selectByNaverId(String id);
    MemberDTO selectByEmail(String email);
    MemberDTO selectByUserId(String id);
    void registerNaverUser(MemberDTO member);
	MemberDTO handleNaverLogin(NaverUserDTO NaverUser);
	String getLoginUrl(HttpSession session);
}
