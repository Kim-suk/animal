package com.test.animal.board.service;

import java.util.List;

import com.test.animal.board.dto.BoardDTO;

public interface BoardService {

	List<BoardDTO> getBoardList(BoardDTO dto);

	void insertBoard(BoardDTO dto);



}
