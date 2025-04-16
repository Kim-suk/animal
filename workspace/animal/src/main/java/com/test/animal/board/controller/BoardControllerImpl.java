package com.test.animal.board.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.http.*;
import org.apache.commons.io.FileUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;
import org.springframework.web.servlet.ModelAndView;
import com.test.animal.board.service.BoardService;
import com.test.animal.board.dto.*;

@Controller 
@SessionAttributes("board")
public class BoardControllerImpl implements BoardController {

	@Autowired
	private BoardService boardService;

	// 寃뚯떆湲� 紐⑸줉
	@RequestMapping("/board/getBoardList.do")
	public String getBoardList(BoardDTO dto, @RequestParam("category") String category, Model model) {
		dto.setCategory(category);
		model.addAttribute("boardList", boardService.getBoardList(dto));
		model.addAttribute("category", category); // jsp�뿉�꽌 �쑀吏��븯湲� �쐞�빐
		return "/board/getBoardList";
	}

	// 寃뚯떆湲� �긽�꽭 蹂닿린
	@RequestMapping("/board/getBoard.do")
	public String getBoard(BoardDTO dto, @RequestParam("category") String category, Model model) {
		dto.setCategory(category);
		model.addAttribute("board", boardService.getBoard(dto));
		List<CommentDTO> cmt_list = boardService.getComment(dto);
		model.addAttribute("cmt_list", cmt_list);
		model.addAttribute("category", category);
		return "/board/getBoard";
	}

	// 湲��벐湲� �뤌
	@RequestMapping(value = "/board/insertBoard.do", method = RequestMethod.GET)
	public String insertBoardForm(@RequestParam("category") String category, Model model) {
		model.addAttribute("category", category);
		return "/board/insertBoard";
	}

	// 湲   벑濡  泥섎━
	   @RequestMapping(value = "/board/insertBoard.do", method = RequestMethod.POST)
	   public String insertBoard(BoardDTO dto, @RequestParam("category") String category) throws IOException {
	      dto.setCategory(category);

	      MultipartFile uploadFile = dto.getUploadFile();
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss");
	      Timestamp timestamp = new Timestamp(System.currentTimeMillis());

	      if (!uploadFile.isEmpty()) {
	         String fileName = uploadFile.getOriginalFilename(); 
	         String newFileName = sdf.format(timestamp)+ fileName; 
	         String uploadPath = "C:/springframework/workspace/animal/upload/";
	         
	         dto.setImg(newFileName);
	         uploadFile.transferTo(new File(uploadPath + newFileName));
	      }
	      
	      boardService.insertBoard(dto);
	      return "redirect:getBoardList.do?category=" + category;
	   }

	// 湲� �닔�젙 �뤌
	@RequestMapping(value = "/board/updateBoard.do", method = RequestMethod.GET)
	public String updateBoardForm(@ModelAttribute("board") BoardDTO dto, @RequestParam("category") String category, Model model) {
		model.addAttribute("category", category);
		return "updateBoard";
	}

	// 湲� �닔�젙 泥섎━
	@RequestMapping(value = "/board/updateBoard.do", method = RequestMethod.POST)
	public String updateBoard(@ModelAttribute("board") BoardDTO dto, @RequestParam("category") String category) throws IOException {
		dto.setCategory(category);

		MultipartFile uploadFile = dto.getUploadFile();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss");
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());

		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			dto.setImg(sdf.format(timestamp) + fileName);
			uploadFile.transferTo(new File("C:/Users/User/Desktop/kitchen_of_all/KOA/src/main/webapp/img/" + sdf.format(timestamp) + fileName));
		}

		boardService.updateBoard(dto);
		return "redirect:getBoardList.do?category=" + category;
	}

	// 湲� �궘�젣
	@RequestMapping("/board/deleteBoard.do")
	public String deleteBoard(BoardDTO dto, @RequestParam("category") String category) {
		dto.setCategory(category);
		boardService.deleteBoard(dto);
		return "redirect:getBoardList.do?category=" + category;
	}

	// �뙎湲� �벑濡�
	@RequestMapping(value = "/board/insertComment.do")
	public String insertComment(CommentDTO cdto, @RequestParam("category") String category) throws IOException {
		boardService.insertComment(cdto);
		return "redirect:getBoard.do?bno=" + cdto.getBno() + "&category=" + category;
	}

	// 醫뗭븘�슂 泥섎━ (AJAX)
	@ResponseBody
	@RequestMapping(value = "board/like.do")
	public String likeAction(@RequestParam("bno") int bno) throws IOException {
		boardService.updateLike(bno);
		int like = boardService.selectLikeCount(bno);

		JSONObject obj = new JSONObject();
		obj.put("like", like);
		return obj.toString();
	}

}


