package com.test.animal.member.social.service;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.KakaoUserDTO;

public interface KakaoLoginService {
    String getAccessToken(String code);
    KakaoUserDTO getUserInfo(String accessToken);
    MemberDTO findByKakaoId(String kakaoId);
    MemberDTO findByEmail(String email);
    MemberDTO findByUserId(String id); 
    void registerKakaoUser(MemberDTO member);
	MemberDTO handleKakaoLogin(KakaoUserDTO kakaoUser);
}
