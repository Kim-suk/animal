package com.test.animal.member.social.dao;

import com.test.animal.member.dto.MemberDTO;

public interface SocialUserDAO {
	void insertNaverUser(MemberDTO member);
    void insertGoogleUser(MemberDTO member);
	void insertKakaoUser(MemberDTO member);
	MemberDTO selectByNaverId(String naverId);
	MemberDTO selectByGoogleId(String googleId);
	MemberDTO selectByKakaoId(String kakaoId);
	MemberDTO findByEmail(String email);
}
