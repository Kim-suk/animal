package com.test.animal.member.dao;

import java.util.List;

import com.test.animal.member.dto.MemberDTO;

public interface MemberDAO {
	List<MemberDTO> listMembers();
	MemberDTO memberDetail(String id);
	int delMember(String id);
	int addMember(MemberDTO member);
	int modMember(MemberDTO member);
	MemberDTO login(MemberDTO member);
	MemberDTO selectByNaverId(String naverId);
	void insertNaverUser(MemberDTO member);
	MemberDTO selectByKakaoId(String string);
	MemberDTO selectByEmail(String email);
	MemberDTO findByUserId(String id);
	MemberDTO selectByUserId(String id);
	int checkUserId(String id);
	void insertKakaoUser(MemberDTO member);
	MemberDTO selectByGoogleId(String string);
	void insertGoogleUser(MemberDTO member);

}
