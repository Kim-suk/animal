package com.test.animal.dog_board.controller;
 
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 
 import org.springframework.http.ResponseEntity;
 import org.springframework.web.bind.annotation.RequestParam;
 import org.springframework.web.multipart.MultipartHttpServletRequest;
 import org.springframework.web.servlet.ModelAndView;
 
 import com.test.animal.dog_board.dto.DogImageDTO;
 
 public interface DogBoardController {
 	public ModelAndView dog_listArticles(HttpServletRequest request,
 			HttpServletResponse response) throws Exception;
 	public ModelAndView dog_form(
 			@RequestParam(value="parentNo", required = true) Integer parentNo,
 			HttpServletRequest request,
 			HttpServletResponse response) throws Exception;
 	public ResponseEntity dog_addNewArticle(MultipartHttpServletRequest mRequest,
 			HttpServletResponse response) throws Exception;
 	public ModelAndView dog_viewArticle(
 			@RequestParam("articleNo") int articleNo,
 			HttpServletRequest request,
 			HttpServletResponse response) throws Exception;
 	public ResponseEntity dog_modArticle(MultipartHttpServletRequest mRequest,
 			HttpServletResponse response) throws Exception;
 	public ResponseEntity dog_removeArticle(
 			@RequestParam("articleNo") int articleNo,
 			HttpServletRequest Request,
 			HttpServletResponse response) throws Exception;
 	public ResponseEntity dog_deleteImage(
 			@RequestParam("image") DogImageDTO image,
 			HttpServletRequest mRequest,
 			HttpServletResponse response) throws Exception;
 }