package com.test.animal.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	/*
	 * @Override public int delMember(String id) { return
	 * sqlSession.delete("mapper.member.delMember", id); }
	 *
	 *
	 */
	/*
	  @Override public int modMember(MemberDTO member) { return
	  sqlSession.update("mapper.member.modMember", member); }
	 */

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

	@Override
	public int updatePassword(String id, String newPwd) throws Exception {
		Map<String, String> param = new HashMap<>();
		param.put("id", id);
		param.put("pwd", newPwd);
		return sqlSession.update("mapper.member.updatePassword", param);
	}

	@Override
	public int deleteMember(String id) throws Exception {
		return sqlSession.delete("mapper.member.deleteMember", id);
	}

	public int changeProfileImage(MemberDTO member) throws Exception {
		return sqlSession.update("mapper.member.changeProfileImage", member);
	}

	@Override
	public int changePwd(String id, String newPwd) {
		Map<String, String> param = new HashMap<>();
		param.put("id", id);
		param.put("pwd", newPwd);
		return sqlSession.update("mapper.member.changePwd", param);
	}

	@Override
	public boolean validateOldPwd(String id, String pwd) {
		Map<String, String> param = new HashMap<>();
		param.put("id", id);
		param.put("pwd", pwd);

		// SELECT count(*) FROM ... WHERE id = #{id} AND pwd = #{pwd}
		int count = sqlSession.selectOne("mapper.member.validateOldPwd", param);
		return count > 0;
	}

	@Override
	public MemberDTO selectById(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.member.selectById", id);
	}

	@Override
	public void updateMember(MemberDTO member) {
		// TODO Auto-generated method stub
		sqlSession.update("mapper.member.updateMember", member);
	}

	@Override
	public int deleteProfileImage(MemberDTO member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override 
	public int addMember(MemberDTO member) { 
		return sqlSession.insert("mapper.member.addMember", member); 
	}
	


}