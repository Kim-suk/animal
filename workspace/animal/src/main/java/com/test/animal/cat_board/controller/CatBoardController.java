package com.test.animal.cat_board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.test.animal.cat_board.dto.CatImageDTO;

public interface CatBoardController {
	public ModelAndView cat_listArticles(HttpServletRequest request,HttpServletResponse response) throws Exception;
	public ModelAndView cat_viewArticle(
			@RequestParam("articleNo") int articleNo,HttpServletRequest request,HttpServletResponse response) throws Exception;
	public ResponseEntity cat_modArticle(MultipartHttpServletRequest mRequest,HttpServletResponse response) throws Exception;
	public ResponseEntity cat_removeArticle(
			@RequestParam("articleNo") int articleNo,HttpServletRequest Request,HttpServletResponse response) throws Exception;
	ModelAndView cat_form(@RequestParam(value="parentNo", required = true)Integer parentNo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	ResponseEntity cat_addNewArticle(MultipartHttpServletRequest mRequest, HttpServletResponse response)
			throws Exception;
	ResponseEntity cat_deleteImage(CatImageDTO image, HttpServletRequest mRequest, HttpServletResponse response)
			throws Exception;
}
