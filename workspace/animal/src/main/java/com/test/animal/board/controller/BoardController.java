package com.test.animal.board.controller;

import java.io.IOException;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;


import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;


public interface BoardController {
	public String getBoardList(BoardDTO dto, @RequestParam("category") String category, Model model);
	public String getBoard(BoardDTO dto, @RequestParam("category") String category, Model model);
	public String insertBoardForm(@RequestParam("category") String category, Model model);
	public String insertBoard(BoardDTO dto, @RequestParam("category") String category) throws IOException;
	public String updateBoardForm(@ModelAttribute("board") BoardDTO dto, @RequestParam("category") String category, Model model);
	public String updateBoard(@ModelAttribute("board") BoardDTO dto, @RequestParam("category") String category) throws IOException;
	public String deleteBoard(BoardDTO dto, @RequestParam("category") String category);
	public String insertComment(CommentDTO cdto, @RequestParam("category") String category) throws IOException;
	public String likeAction(@RequestParam("bno") int bno) throws IOException;
}
