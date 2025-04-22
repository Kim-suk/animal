package com.test.animal.member.service;

import java.util.List;
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
}