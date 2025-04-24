package com.test.animal.member.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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

	@Override
    public int updatePassword(String id, String newPwd) throws Exception {
        return dao.updatePassword(id, newPwd);
    }


    @Override
    public int changeProfileImage(MemberDTO member) throws Exception {
        return dao.changeProfileImage(member);
    }

	@Override
	public int changePwd(String id, String newPwd) {
		// TODO Auto-generated method stub
		return dao.changePwd(id,newPwd);
	}

	@Override
	public boolean validateOldPwd(String id, String pwd){
		// TODO Auto-generated method stub
		return dao.validateOldPwd(id,pwd);
	}

	@Override
	public MemberDTO getMemberById(String id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	@Override
	public void updateMember(MemberDTO member) {
		// TODO Auto-generated method stub
		 dao.updateMember(member);
	}
	
	@Override
    public int deleteMember(String id) throws Exception {
       return dao.deleteMember(id);
    }

	@Override
	public int addMember(MemberDTO member) {
		// TODO Auto-generated method stub
		return dao.addMember(member);
	}




}