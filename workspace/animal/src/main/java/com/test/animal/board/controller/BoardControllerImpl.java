package com.test.animal.board.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;
import com.test.animal.board.service.BoardService;


@Controller
@RequestMapping("/hospital")
@SessionAttributes("board")
public class BoardControllerImpl implements BoardController{
	
	@Autowired
	private BoardService BoardService;

	// 게시�? 목록?�� 조회?��?�� 메서?��
	// - �??�� ?��?��?���? ?��?�� 경우 그에 맞는 결과�? 조회
	// - 조회?�� 게시�? 리스?���? boardList?��?�� ?��름으�? Model?�� ?��?�� getBoardList.jsp?�� ?��?��
	
	// 게시�? ?��?��보기 + ?���? 리스?�� ?���? 조회?��?�� 메서?��
	// - ?��?��?�� 게시�? 1개의 ?��보�?? 조회?��?�� board?��?�� ?��름으�? ???��
	// - ?��?�� 게시�??�� ?���? 목록?? cmt_list�? ???��
	@Override
	public String getBoard(BoardDTO dto, Model model) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// �? ?��?�� ?�� 보여주기(GET)
	// - insertBoard.jsp�? 보여�?
	// - ?��?�� �? ?��?�� 처리?�� POST 방식?�� ?���? 메서?��?��?�� 처리?��
	@Override
	@RequestMapping(value="boardForm.do", method=RequestMethod.GET)
	public String insertBoardForm(BoardDTO dto) throws IOException {
		// TODO Auto-generated method stub
		return "/hospital/review_boardForm"; // ⬅️ Tiles?��?�� �??��?�� �? ?���? 반환
	}
	
	// 게시�??�� ?��?���? ?��록하?�� 메서?��(POST)
	// - ?��?��?�� 게시�? ?��?��?���? 받아 boardService.insertBoard()?�� ?��?��
	// - 만약 첨�??��?��?�� ?��?�� 경우 ?��로드 경로?�� ???��?���?, ?��?��명을 DB?�� ?���? ???��
	// - 처리 ?���? ?�� 게시�? 목록 ?��?���?�? 리다?��?��?��
	/*
	 * @Override
	 * 
	 * @RequestMapping(value="/insertBoard.do", method=RequestMethod.POST) public
	 * String insertBoard(boardDTO dto) throws IOException { // TODO Auto-generated
	 * method stub MultipartFile uploadFile = dto.getUploadFile(); SimpleDateFormat
	 * sdf = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss"); Timestamp timestamp = new
	 * Timestamp(System.currentTimeMillis());
	 * 
	 * if(!uploadFile.isEmpty()) { String fileName =
	 * uploadFile.getOriginalFilename(); String newFileName = sdf.format(timestamp)
	 * + fileName; String uploadPath =
	 * "C:\\spring_project\\workspace\\animal\\workspace\\animal\\src\\main\\webapp\\resources\\image\\";
	 * 
	 * dto.setImg("/resources/image/" + newFileName); // ?��?��?�� ?���? �??��?��
	 * 경로�? ???�� uploadFile.transferTo(new File(uploadPath + newFileName)); }
	 * reviewBoardService.insertBoard(dto); return "redirect:review_boardList.do"; }
	 */
	
	// 게시�? ?��?�� ?�� 보여주기(GET)
	// - 기존 게시�? ?��?��?���? board 객체?�� ?��?�� updateBoard.jsp?�� 출력
	// - 기존 ?��?��?���? ?��?�� 미리 채워?�� 보여�?
	@Override
	public String updateBoardForm(BoardDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 게시�? ?��?��?�� ?��?���? 처리?��?�� 메서?��(POST)
	// - ?��?��?���? ?��로드?�� 첨�??��?��?�� ?���? 처리?��
	// - 첨�??��?��?�� ?��?���? 기존 ?��?��?�� ?�� ?��?���? ??�?
	// - boardService.updateBoard()�? ?��출하?�� DB?�� 반영
	@Override
	public String updateBoard(BoardDTO dto) throws IOException {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 게시�? ?��?�� 메서?��
	// - 게시�? 번호(bno)�? 받아 ?��?�� �??�� ?��?�� 처리
	// - ?��?�� ?�� 게시�? 목록?���? 리다?��?��?��
	@Override
	public String deleteBoard(BoardDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// ?���? ?��?�� 처리
	// - 게시�??�� ???�� ?���??�� 받아 DB?�� ???��
	// - ?���? ?��?�� ?�� ?��?�� 게시�? ?��?��보기 ?��?���?�? 리다?��?��?��
	@Override
	public String insertComment(CommentDTO cdto) throws IOException {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 좋아?�� 기능 처리
	// - ?��?�� 게시�??�� 좋아?�� ?���? 1 증�??��?��
	// - DB?�� 반영?�� 좋아?�� ?���? ?��?�� 조회?��?�� JSON ?��?���? 반환
	// - ?�� 처리?�� 보통 AJAX�? ?��루어�?
	@Override
	public String likeAction(int bno) throws IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getBoardList(BoardDTO dto, Model model) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String insertBoard(BoardDTO dto) throws IOException {
		// TODO Auto-generated method stub
		return null;
	}

}
