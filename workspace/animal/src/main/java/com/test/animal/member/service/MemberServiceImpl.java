package com.test.animal.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.animal.member.dao.MemberDAO;
import com.test.animal.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO dao;

    @Override
    public List<MemberDTO> listMembers() {
        return dao.listMembers();
    }

    @Override
    public MemberDTO memberDetail(String id) {
        return dao.memberDetail(id);
    }

    @Override
    public int delMember(String id) {
        return dao.delMember(id);
    }

    @Override
    public int addMember(MemberDTO member) {
        return dao.addMember(member);
    }

    @Override
    public int modMember(MemberDTO member) {
        return dao.modMember(member);
    }

    @Override
    public MemberDTO login(MemberDTO member) {
        return dao.login(member);
    }

	@Override
	public int checkUserId(String id) {
		// TODO Auto-generated method stub
		return dao.checkUserId(id);
	}

	@Override
	public MemberDTO selectByUserId(String id) {
		// TODO Auto-generated method stub
		return dao.selectByUserId(id);
	}

	@Override
	public MemberDTO selectByEmail(String email) {
		// TODO Auto-generated method stub
		return dao.selectByEmail(email);
	}

	@Override
	public int updateNaverId(MemberDTO member) {
		// TODO Auto-generated method stub
		 return dao.updateNaverId(member);
	}
}