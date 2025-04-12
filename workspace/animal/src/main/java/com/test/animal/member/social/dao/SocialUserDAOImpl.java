package com.test.animal.member.social.dao;

import com.test.animal.member.dto.MemberDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SocialUserDAOImpl implements SocialUserDAO {

    @Autowired
    private SqlSession sqlSession;

    private static final String NAMESPACE = "mapper.member";

    @Override
    public MemberDTO selectByGoogleId(String googleId) {
        return sqlSession.selectOne(NAMESPACE + ".selectByGoogleId", googleId);
    }

    @Override
    public void insertGoogleUser(MemberDTO member) {
        sqlSession.insert(NAMESPACE + ".insertGoogleUser", member);
    }

    @Override
    public MemberDTO selectByNaverId(String naverId) {
        return sqlSession.selectOne(NAMESPACE + ".selectByNaverId", naverId);
    }

    @Override
    public int insertNaverUser(MemberDTO member) {
        return sqlSession.insert(NAMESPACE + ".insertNaverUser", member);
    }

    @Override
    public MemberDTO selectByKakaoId(String kakaoId) {
        return sqlSession.selectOne(NAMESPACE + ".selectByKakaoId", kakaoId);
    }

    @Override
    public void insertKakaoUser(MemberDTO member) {
        sqlSession.insert(NAMESPACE + ".insertKakaoUser", member);
    }

    public MemberDTO selectByEmail(String email) {
        return sqlSession.selectOne("mapper.member.selectByEmail", email); // ✅ 매퍼 XML과 일치
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
	public void modMember(MemberDTO member) {
	    sqlSession.update("mapper.member.modMember", member);
	}

	

}