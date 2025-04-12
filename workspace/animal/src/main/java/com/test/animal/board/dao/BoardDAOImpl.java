package com.test.animal.board.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.board.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardDTO> getBoardList(BoardDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.review_board.getBoardList", dto);

	}

	@Override
	public void insertBoard(BoardDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.insert("mapper.review_board.insertBoard", dto);
	}
}
