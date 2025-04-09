package com.test.animal.member.social.service;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.GoogleUserDTO;

public interface GoogleLoginService {
    String getAccessToken(String code);
    GoogleUserDTO getUserInfo(String accessToken);
    MemberDTO selectByGoogleId(String googleId);
    MemberDTO selectByEmail(String email);
    MemberDTO selectByUserId(String id);
    void registerGoogleUser(MemberDTO member);
    MemberDTO handleGoogleLogin(GoogleUserDTO GoogleUser);
    }
	
