package com.test.animal.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.test.animal.board.dto.CommentDTO;
import com.test.animal.board.dto.ImageDTO;

public interface BoardController {
	public ModelAndView getBoardList(HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	ModelAndView getBoard(int bno, HttpServletRequest request, HttpServletResponse response) throws Exception;
	ResponseEntity insertBoard(MultipartHttpServletRequest mRequest, HttpServletResponse response) throws Exception;
	ResponseEntity updateBoard(MultipartHttpServletRequest mRequest, HttpServletResponse response) throws Exception;
	ResponseEntity deleteBoard(int bno, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity likeAction(
			@RequestParam("bno") int bno,
			HttpServletRequest Request,
			HttpServletResponse response) throws Exception;
	ResponseEntity<String> addComment(CommentDTO commentDTO, HttpServletRequest request) throws Exception;
	ResponseEntity<List<CommentDTO>> listComments(int bno) throws Exception;
	ResponseEntity<String> deleteComment(int cno) throws Exception;
	

	
	
}
