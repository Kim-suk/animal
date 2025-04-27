package com.test.animal.board.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
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

	@RequestMapping("/board/getBoardList.do")
	public String getBoardList(BoardDTO dto, 
	                           @RequestParam("category") String category,
	                           @RequestParam(value = "searchCondition", required = false) String searchCondition, 
	                           @RequestParam(value = "searchKeyword", required = false) String searchKeyword, 
	                           Model model) {

	    // 검색 조건과 검색어가 null이면 기본적으로 설정 (기본값: 제목, 빈 문자열)
	    if (searchCondition == null) {
	        searchCondition = "TITLE";  // 기본 검색 조건: 제목
	    }
	    if (searchKeyword == null) {
	        searchKeyword = "";  // 기본 검색어: 빈 문자열
	    }

	    // DTO에 검색 조건과 검색어, 카테고리 설정
	    dto.setSearchCondition(searchCondition);
	    dto.setSearchKeyword(searchKeyword);
	    dto.setCategory(category);

	    // 게시판 목록 조회
	    List<BoardDTO> boardList = boardService.getBoardList(dto);

	    // 모델에 데이터를 추가
	    model.addAttribute("boardList", boardList);
	    model.addAttribute("category", category);
	    model.addAttribute("searchCondition", searchCondition);  // 검색 조건
	    model.addAttribute("searchKeyword", searchKeyword);      // 검색어

	    return "/board/getBoardList";
	}

	@RequestMapping("/board/getBoard.do")
	public String getBoard(@RequestParam("bno") int bno, 
	                       @RequestParam("category") String category, 
	                       Model model) {
	    // 게시글 정보 가져오기
	    BoardDTO dto = new BoardDTO();
	    dto.setBno(bno);
	    dto.setCategory(category);

	    boardService.updateCommentCountOnBoardLoad(dto.getBno());

	    // 해당 게시글 가져오기
	    model.addAttribute("board", boardService.getBoard(dto));

	    // 게시글에 관련된 이미지 리스트 가져오기
	    List<ImageDTO> imageList = boardService.getImageList(dto);
	    model.addAttribute("imageList", imageList);

	    // 댓글 리스트 가져오기
	    List<CommentDTO> cmt_list = boardService.getComment(dto);
	    model.addAttribute("cmt_list", cmt_list);

	    model.addAttribute("category", category);

	    return "/board/getBoard";
	}

		
		
		


	@RequestMapping(value = "/board/insertBoard.do", method = RequestMethod.GET)
	public String insertBoardForm(@RequestParam("category") String category, Model model) {
		model.addAttribute("category", category);
		return "/board/insertBoard";
	}

	@RequestMapping(value = "/board/insertBoard.do", method = RequestMethod.POST)
	public String insertBoard(MultipartHttpServletRequest mRequest, @RequestParam("category") String category) throws IOException {
	    BoardDTO dto = new BoardDTO();
	    dto.setCategory(category);

	    // 게시글 기본 정보 처리
	    dto.setTitle(mRequest.getParameter("title"));
	    dto.setContent(mRequest.getParameter("content"));
	    dto.setHashtag(mRequest.getParameter("hashtag"));

	    // 로그인한 사용자 ID 세션에서 가져오기
	    HttpSession session = mRequest.getSession();
	    String id = (String) session.getAttribute("loginId");
	    dto.setId(id);

	    // 썸네일로 선택된 파일명 (input type="radio" value)
	    String thumbnailFileName = mRequest.getParameter("thumbnail");

	    // 파일 처리
	    List<MultipartFile> uploadFiles = mRequest.getFiles("uploadFiles");
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
	    String uploadPath = "C:\\springframework\\workspace\\animal\\upload\\";

	    List<ImageDTO> imageFileList = new ArrayList<>();

	    if (uploadFiles != null && !uploadFiles.isEmpty()) {
	        for (MultipartFile uploadFile : uploadFiles) {
	            if (!uploadFile.isEmpty()) {
	            	 String originalName = uploadFile.getOriginalFilename();
	                 String cleanedName = Paths.get(originalName).getFileName().toString();
	                 String newFileName = sdf.format(System.currentTimeMillis()) + "_" + cleanedName;
	                // 파일 저장
	                uploadFile.transferTo(new File(uploadPath + newFileName));

	                // 이미지 정보 저장
	                ImageDTO imageDTO = new ImageDTO();
	                imageDTO.setImageFileName(newFileName);
	                imageDTO.setRegDate(new Date());
	               

	                // 썸네일 여부 설정
	                if (thumbnailFileName != null && thumbnailFileName.equals(cleanedName)) {
	                    dto.setThumbnail(newFileName); // 실제 저장된 파일명으로 썸네일 설정
	                }
	                imageFileList.add(imageDTO);
	            }
	        }
	    }

	    // 게시글 저장 (bno 자동 생성)
	    boardService.insertBoard(dto);
	    int bno = dto.getBno();

	    // 이미지 저장
	    for (ImageDTO imageDTO : imageFileList) {
	        imageDTO.setBno(bno);
	        boardService.insertBoardImage(imageDTO);
	    }
	    
	 // 썸네일이 설정되어 있으면 DB 업데이트
	    if (dto.getThumbnail() != null) {
	        boardService.updateBoardThumbnail(bno, dto.getThumbnail());
	    }
	   
		/*
		 * // 썸네일 처리 if (dto.getThumbnail() == null && !imageFileList.isEmpty()) { //
		 * 사용자가 썸네일을 선택하지 않은 경우, 첫 번째 이미지를 썸네일로 설정 String fallbackThumbnail =
		 * imageFileList.get(0).getImageFileName(); dto.setThumbnail(fallbackThumbnail);
		 * }
		 */
	    return "redirect:getBoardList.do?category=" + category;
	}

	@RequestMapping(value = "/board/updateBoard.do", method = RequestMethod.GET)
	public String updateBoardForm(@RequestParam("bno") int bno, @RequestParam("category") String category, Model model) {
	    // 게시글 번호와 카테고리 설정
	    BoardDTO dto = new BoardDTO();
	    dto.setBno(bno);
	    dto.setCategory(category);

	    // 게시글 정보 가져오기
	    BoardDTO board = boardService.getBoard(dto);

	    // 게시글에 첨부된 이미지 리스트 가져오기
	    List<ImageDTO> imageList = boardService.getBoardImages(bno);
	    
	    System.out.println("이미지 리스트: " + imageList);

	    model.addAttribute("board", board);         // 게시글 데이터
	    model.addAttribute("imageList", imageList); // 이미지 리스트
	    model.addAttribute("category", category);   // 카테고리

	    return "/board/updateBoard"; // 수정 폼 JSP
	}

	@RequestMapping(value = "/board/updateBoard.do", method = RequestMethod.POST)
	public String updateBoard(MultipartHttpServletRequest mRequest,
	                          @ModelAttribute("board") BoardDTO dto,
	                          @RequestParam("category") String category,
	                          @RequestParam(value = "thumbnail", required = false) String thumbnailFileName,
	                          @RequestParam(value = "deleteImages", required = false) List<String> deleteImages) throws Exception {

	    dto.setCategory(category);
	    String uploadPath = "C:\\springframework\\workspace\\animal\\upload\\";
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");

	    // ✅ 1. 기존 이미지 삭제 처리
	    if (deleteImages != null && !deleteImages.isEmpty()) {
	        for (String delName : deleteImages) {
	            File file = new File(uploadPath + delName);
	            if (file.exists()) file.delete(); // 실제 파일 삭제
	            boardService.deleteImageByFileName(delName); // DB에서도 삭제
	        }
	    }

	    // ✅ 2. 새로 업로드된 이미지 처리
	    List<MultipartFile> uploadFiles = mRequest.getFiles("uploadFiles");
	    if (uploadFiles != null && !uploadFiles.isEmpty()) {
	        for (MultipartFile uploadFile : uploadFiles) {
	            if (!uploadFile.isEmpty()) {
	                String originalName = uploadFile.getOriginalFilename();
	                String cleanedName = Paths.get(originalName).getFileName().toString();
	                String newFileName = sdf.format(new Date()) + "_" + cleanedName;

	                
	                System.out.println("🔥 thumbnailFileName: " + thumbnailFileName);
	                System.out.println("🧩 originalName: " + originalName);
	                System.out.println("🧩 cleanedName: " + cleanedName);
	                System.out.println("✅ newFileName: " + newFileName);
	                
	                // 파일 저장
	                uploadFile.transferTo(new File(uploadPath + newFileName));

	                // 이미지 DTO 생성 및 DB 저장
	                ImageDTO imageDTO = new ImageDTO();
	                imageDTO.setBno(dto.getBno());
	                imageDTO.setImageFileName(newFileName);
	                imageDTO.setRegDate(new Date());
	                boardService.insertImage(imageDTO);

	                // 썸네일인지 체크해서 게시글 DTO에 반영
	                if (thumbnailFileName != null && thumbnailFileName.equals(originalName)) {  // 기존 이미지 파일명과 비교
	                	System.out.println("🌟 썸네일로 설정됨: " + newFileName);
	                    dto.setThumbnail(newFileName);
	                }
	            }
	            
	        }
	    }

	    // ✅ 3. 썸네일이 기존 이미지인 경우 처리
	    if (dto.getThumbnail() == null && thumbnailFileName != null) {
	    	System.out.println("🪄 기존 이미지가 썸네일로 설정됨: " + thumbnailFileName);
	        dto.setThumbnail(thumbnailFileName); // 기존 이미지가 썸네일로 선택됨
	    }

	    // ✅ 4. 게시글 정보 수정
	    boardService.updateBoard(dto);

	    return "redirect:getBoardList.do?category=" + category;
	}



	// 湲� �궘�젣
	@RequestMapping(value = "/board/deleteBoard.do", method = RequestMethod.GET)
	public String deleteBoard(BoardDTO dto, @RequestParam("category") String category) {
		dto.setCategory(category);
		boardService.deleteBoard(dto);
		return "redirect:getBoardList.do?category=" + category;
	}

	  // 댓글 추가
    @RequestMapping("/board/insertComment.do")
    public String insertComment(CommentDTO cdto, @RequestParam("category") String category) {
        boardService.addComment(cdto);  // 댓글 추가 후 comment_count 갱신
        return "redirect:/board/getBoard.do?bno=" + cdto.getBno() + "&category=" + category;
    }
	
	/*
	// �뙎湲� �벑濡�
	@RequestMapping(value = "/board/insertComment.do")
	public String insertComment(CommentDTO cdto, @RequestParam("category") String category) throws IOException {
		boardService.insertComment(cdto);
		return "redirect:getBoard.do?bno=" + cdto.getBno() + "&category=" + category;
	}
	*/

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

