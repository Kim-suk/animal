package com.test.animal.member.social.service;

import com.test.animal.member.dto.MemberDTO;
import com.test.animal.member.social.dto.KakaoUserDTO;

public interface KakaoLoginService {
    String getAccessToken(String code);
    KakaoUserDTO getUserInfo(String accessToken);
    MemberDTO findByKakaoId(String kakaoId);
    void registerKakaoUser(MemberDTO member);
}
