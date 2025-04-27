package com.test.animal.board.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;


public interface BoardController {
	  public String getBoardList(
		        BoardDTO dto,@RequestParam("category") String category,@RequestParam(value = "searchCondition", required = false) String searchCondition,
		        @RequestParam(value = "searchKeyword", required = false) String searchKeyword,
		        Model model
		    );
	public String getBoard(@RequestParam("bno") int bno,@RequestParam("category") String category, Model model);
	public String insertBoard(MultipartHttpServletRequest mRequest, @RequestParam("category") String category) throws IOException;
	public String updateBoardForm(@RequestParam("bno") int bno, @RequestParam("category") String category, Model model);	
	public String updateBoard(MultipartHttpServletRequest mRequest, @ModelAttribute("board") BoardDTO dto,@RequestParam("category") String category,@RequestParam(value = "thumbnail", required = false) String thumbnailFileName,@RequestParam(value = "deleteImages", required = false) List<String> deleteImages) throws Exception;
	public String deleteBoard(BoardDTO dto, @RequestParam("category") String category);
	public String insertComment(CommentDTO cdto, @RequestParam("category") String category) throws IOException;
	public String likeAction(@RequestParam("bno") int bno) throws IOException;
}