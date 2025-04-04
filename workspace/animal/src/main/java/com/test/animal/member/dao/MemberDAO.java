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
}
