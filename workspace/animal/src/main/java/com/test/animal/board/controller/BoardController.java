package com.test.animal.board.controller;

import java.io.IOException;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;

public interface BoardController {
	public String getBoardList(BoardDTO dto ,Model model);
	public String getBoard(BoardDTO dto,Model model);
	public String insertBoardForm(BoardDTO dto) throws IOException;
	public String insertBoard(BoardDTO dto) throws IOException;
	public String updateBoardForm(@ModelAttribute("board") BoardDTO dto);
	public String updateBoard(@ModelAttribute("board") BoardDTO dto) throws IOException;
	public String deleteBoard(BoardDTO dto);
	public String insertComment(CommentDTO cdto) throws IOException;
	public String likeAction(@RequestParam(value="bno") int bno) throws IOException;
}