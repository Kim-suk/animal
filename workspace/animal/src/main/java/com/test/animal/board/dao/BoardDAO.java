package com.test.animal.board.dao;

import java.util.List;

import com.test.animal.board.dto.BoardDTO;

public interface BoardDAO {

	public List<BoardDTO> getBoardList(BoardDTO dto);

	public void insertBoard(BoardDTO dto);
	
}
