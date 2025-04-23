package com.test.animal.member.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.test.animal.member.dto.MemberDTO;

public interface MemberService {

    List<MemberDTO> listMembers();                // ��ü ȸ�� ���
    MemberDTO memberDetail(String id);            // ȸ�� �� ����
    int delMember(String id);                     // ȸ�� ����
    int addMember(MemberDTO member);              // ȸ�� ����
    int modMember(MemberDTO member);              // ȸ�� ���� ����
    MemberDTO login(MemberDTO member);            // �Ϲ� �α���
    int checkUserId(String id);                   // ID �ߺ� üũ

    MemberDTO selectByUserId(String id);          // ID�� ��ȸ
    MemberDTO selectByEmail(String email);       // �̸��Ϸ� ��ȸ
    
    int updateNaverId(MemberDTO member);          // ���̹� ID ������ ����
    
    public int updatePassword(String id, String newPwd) throws Exception;

    int deleteMember(String id) throws Exception;  // 회원 탈퇴
    
    
    public int updateProfileImage(MemberDTO member) throws Exception;
	public int changePwd(String id, String newPwd);
	boolean validateOldPwd(String id, String pwd);

	MemberDTO getMemberById(String id);
	void updateMember(MemberDTO member);
    
	
}