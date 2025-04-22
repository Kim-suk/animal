package com.test.animal.member.social.service;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.FacebookUserDTO;

public interface FacebookLoginService {
    String getAccessToken(String code);
    FacebookUserDTO getUserInfo(String accessToken);
    MemberDTO selectByFacebookId(String facebookId);
    MemberDTO selectByEmail(String email);
    MemberDTO selectByUserId(String id);
    void registerFacebookUser(MemberDTO member);
    MemberDTO handleFacebookLogin(FacebookUserDTO FacebookUser);
    }
	