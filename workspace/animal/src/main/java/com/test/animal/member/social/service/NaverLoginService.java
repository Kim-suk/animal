package com.test.animal.member.social.service;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.NaverUserDTO;

public interface NaverLoginService {
    NaverUserDTO getUserInfo(String accessToken);
    MemberDTO findByNaverId(String naverId);
    void registerNaverUser(MemberDTO member);
	String getAccessToken(String code, String state);
}
