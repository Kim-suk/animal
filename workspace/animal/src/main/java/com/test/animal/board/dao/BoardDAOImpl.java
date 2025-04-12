package com.test.animal.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;

//DAO(Data Access Object)
@Repository
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> getBoardList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.board.selectAllBoardList");
	}

	@Override
	public List<CommentDTO> getComment(BoardDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.board.selectAllBoardComment");
	}

	@Override
	public void deleteBoard(BoardDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.delete("mapper.board.deleteBoard");
		
	}

	@Override
	public int insertComment(CommentDTO dto) {
		return sqlSession.insert("mapper.board.insertComment");
		
	}

	@Override
	public void updateBoard(BoardDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.update("mapper.board.updateBoard");
	}

	@Override
	public void updateLike(int bno) {
		// TODO Auto-generated method stub
		sqlSession.update("mapper.board.updateLike", bno);
	}

	@Override
	public int selectLikeCount(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.board.selectLikeCount", bno);
	}

	@Override
	public BoardDTO getBoard(BoardDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.board.getBoard");
	}


	@Override
	public void insertBoard(BoardDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.insert("mapper.board.insertBoard");
	}
	
	
}
