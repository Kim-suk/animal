package com.test.animal.member.social.dao;

import com.test.animal.member.dto.MemberDTO;

public interface SocialUserDAO {

    // 👉 Google
    void insertGoogleUser(MemberDTO member);
    MemberDTO selectByGoogleId(String googleId);

    // 👉 Naver
    int insertNaverUser(MemberDTO member);
    MemberDTO selectByNaverId(String naverId);

    // 👉 Kakao
    void insertKakaoUser(MemberDTO member);
    MemberDTO selectByKakaoId(String kakaoId);
    
 // 👉 Facebook
    int insertFacebookUser(MemberDTO member);
    MemberDTO selectByFacebookId(String facebookId);

    // 공통
    MemberDTO selectByEmail(String email);
	MemberDTO selectByUserId(String id);
	int checkUserId(String id);
	void modMember(MemberDTO member);
}