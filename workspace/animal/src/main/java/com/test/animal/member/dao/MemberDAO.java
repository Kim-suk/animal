package com.test.animal.member.dao;

import java.util.List;
import com.test.animal.member.dto.MemberDTO;

public interface MemberDAO {
    
    List<MemberDTO> listMembers();             // 전체 회원 목록
    MemberDTO memberDetail(String id);         // 특정 회원 상세 정보
    int delMember(String id);                  // 회원 삭제
    int addMember(MemberDTO member);           // 회원 가입
    int modMember(MemberDTO member);           // 회원 정보 수정
    MemberDTO login(MemberDTO member);         // 일반 로그인
    int checkUserId(String id);                // ID 중복 체크

    MemberDTO selectByUserId(String id);       // ID로 회원 조회
    MemberDTO selectByEmail(String email); 
    // 이메일로 회원 조회
	int updateNaverId(MemberDTO member);
}
	