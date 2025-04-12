package com.test.animal.board.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.animal.board.dao.BoardDAO;
import com.test.animal.board.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO reviewBoardDAO;
	
	@Override
	public List<BoardDTO> getBoardList(BoardDTO dto) {
		// TODO Auto-generated method stub
		return reviewBoardDAO.getBoardList(dto);
	}

	@Override
	public void insertBoard(BoardDTO dto) {
		// TODO Auto-generated method stub
		reviewBoardDAO.insertBoard(dto);
	}

}
