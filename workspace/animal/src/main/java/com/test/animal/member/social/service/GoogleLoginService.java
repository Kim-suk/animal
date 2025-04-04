package com.test.animal.member.social.service;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.GoogleUserDTO;

public interface GoogleLoginService {
    String getAccessToken(String code);
    GoogleUserDTO getUserInfo(String accessToken);
    MemberDTO findByGoogleId(String googleId);
    void registerGoogleUser(MemberDTO member);
}
