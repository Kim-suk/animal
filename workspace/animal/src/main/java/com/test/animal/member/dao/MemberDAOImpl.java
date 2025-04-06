
package com.test.animal.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> listMembers() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.member.listMembers");
	}

	@Override
	public MemberDTO memberDetail(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.member.memberDetail", id);
	}

	@Override
	public int delMember(String id) {
		// TODO Auto-generated method stub
		return sqlSession.delete("mapper.member.delMember", id);
	}

	@Override
	public int addMember(MemberDTO member) {
		// TODO Auto-generated method stub
		return sqlSession.insert("mapper.member.addMember", member);
	}

	@Override
	public int modMember(MemberDTO member) {
		// TODO Auto-generated method stub
		return sqlSession.update("mapper.member.modMember", member);
	}

	@Override
	public MemberDTO login(MemberDTO member) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.member.login", member);
	}

	  // Naver ID로 회원 조회
	@Override
	public MemberDTO selectByNaverId(String naverId) {
		  return sqlSession.selectOne("mapper.member.selectByNaverId", naverId);
		
	}

	// Naver 로그인 신규 가입자 삽입
	@Override
	public void insertNaverUser(MemberDTO member) {
		sqlSession.insert("mapper.member.insertNaverUser", member);
		
	}

	@Override
	public MemberDTO selectByKakaoId(String kakaoId) {
		// TODO Auto-generated method stub
		  return sqlSession.selectOne("mapper.member.selectByKakaoId", kakaoId);
	}

	@Override
	public MemberDTO selectByEmail(String email) {
		// TODO Auto-generated method stub
		 return sqlSession.selectOne("mapper.member.selectByEmail", email);
	}

	@Override
	public MemberDTO findByUserId(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.member.findByUserId", id);
	}

	@Override
	public MemberDTO selectByUserId(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.member.selectByUserId", id);
	}

	@Override
	public int checkUserId(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.member.checkUserId", id);
	}

	@Override
	public void insertKakaoUser(MemberDTO member) {
		// TODO Auto-generated method stub
		sqlSession.insert("mapper.member.insertKakaoUser", member);
		
	}

	@Override
	public MemberDTO selectByGoogleId(String id) {
		// TODO Auto-generated method stub
		  return sqlSession.selectOne("mapper.member.selectByGoogleId", id);
	}

	@Override
	public void insertGoogleUser(MemberDTO member) {
		// TODO Auto-generated method stub
		 sqlSession.insert("mapper.member.insertGoogleUser", member);
		
	}

}







