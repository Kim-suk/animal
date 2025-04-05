package com.test.animal.member.social.dao;

import com.test.animal.member.dto.MemberDTO;

public interface SocialUserDAO {
    MemberDTO selectByGoogleId(String googleId);
    void insertGoogleUser(MemberDTO member);
	void insertNaverUser(MemberDTO member);
	MemberDTO selectByNaverId(String naverId);
	MemberDTO selectByKakaoId(String kakaoId);
	void insertKakaoUser(MemberDTO member);
	MemberDTO findByEmail(String email);
}
