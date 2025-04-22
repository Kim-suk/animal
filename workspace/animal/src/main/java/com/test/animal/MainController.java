package com.test.animal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.service.BoardService;


@Controller
public class MainController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value= {"/", "/main"})
	public String main(Model model) {
		List<BoardDTO> reviewList = boardService.getTopHospitalReviews();
		model.addAttribute("reviewList", reviewList);
		return "main";
	}
	
}