package com.test.animal.member.dao;

import java.util.List;
import com.test.animal.member.dto.MemberDTO;

public interface MemberDAO {
    
    List<MemberDTO> listMembers();             // ��ü ȸ�� ���
    MemberDTO memberDetail(String id);         // Ư�� ȸ�� �� ����
    MemberDTO login(MemberDTO member);         // �Ϲ� �α���
    int checkUserId(String id);                // ID �ߺ� üũ

    MemberDTO selectByUserId(String id);       // ID�� ȸ�� ��ȸ
    MemberDTO selectByEmail(String email); 
    // �̸��Ϸ� ȸ�� ��ȸ
	int updateNaverId(MemberDTO member);
	
    public int updatePassword(String id, String newPwd) throws Exception;

    public int deleteMember(String id) throws Exception;


    public int changePwd(String id, String newPwd);
	boolean validateOldPwd(String id, String pwd);
	
	MemberDTO selectById(String id);
	void updateMember(MemberDTO member);

	public int changeProfileImage(MemberDTO member)throws Exception;	
	public int deleteProfileImage(MemberDTO member)throws Exception;
	int addMember(MemberDTO member);
}
	