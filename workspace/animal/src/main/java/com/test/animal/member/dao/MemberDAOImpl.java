package com.test.animal.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<MemberDTO> listMembers() {
        return sqlSession.selectList("mapper.member.listMembers");
    }

    @Override
    public MemberDTO memberDetail(String id) {
        return sqlSession.selectOne("mapper.member.memberDetail", id);
    }

    @Override
    public int delMember(String id) {
        return sqlSession.delete("mapper.member.delMember", id);
    }

    @Override
    public int addMember(MemberDTO member) {
        return sqlSession.insert("mapper.member.addMember", member);
    }

    @Override
    public int modMember(MemberDTO member) {
        return sqlSession.update("mapper.member.modMember", member);
    }

    @Override
    public MemberDTO login(MemberDTO member) {
        return sqlSession.selectOne("mapper.member.login", member);
    }

    @Override
    public int checkUserId(String id) {
        return sqlSession.selectOne("mapper.member.checkUserId", id);
    }

    @Override
    public MemberDTO selectByUserId(String id) {
        return sqlSession.selectOne("mapper.member.selectByUserId", id);
    }

    @Override
    public MemberDTO selectByEmail(String email) {
        return sqlSession.selectOne("mapper.member.selectByEmail", email);
    }
    
	@Override
	public int updateNaverId(MemberDTO member) {
		// TODO Auto-generated method stub
		 return sqlSession.update("mapper.member.updateNaverId", member);
	}

}
