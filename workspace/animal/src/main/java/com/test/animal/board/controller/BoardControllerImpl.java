package com.test.animal.board.controller;

import java.io.File;
import java.util.*;
import javax.servlet.http.*;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;
import org.springframework.web.servlet.ModelAndView;
import com.test.animal.board.service.BoardService;
import com.test.animal.board.dto.*;

@Controller
@RequestMapping("board")
@EnableTransactionManagement
public class BoardControllerImpl implements BoardController {
	private static final String BOARD_REPO = "C:\\board\\file_repo";

	@Autowired
	private BoardService service;

	// 게시글 목록
	@Override
	@RequestMapping("/listboards.do")
	public ModelAndView getBoardList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		List<BoardDTO> getBoardList = service.getBoardList();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("getBoardList", getBoardList);
		return mav;
	}

	// 게시글 보기 (조회수 증가 포함)
	@Override
	@RequestMapping("/viewboard.do")
	public ModelAndView getBoard(@RequestParam("bno") int bno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		service.updateHitCount(bno); // 조회수 증가
		Map boardMap = service.getBoard(bno);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("boardMap", boardMap);
		return mav;
	}

	// 게시글 등록
	@Override
	@RequestMapping(value = "/addBoard.do", method = RequestMethod.POST)
	public ResponseEntity insertBoard(MultipartHttpServletRequest mRequest, HttpServletResponse response) throws Exception {
		mRequest.setCharacterEncoding("utf-8");
		Map<String, Object> boardMap = new HashMap<>();
		Enumeration<String> enu = mRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = enu.nextElement();
			boardMap.put(name, mRequest.getParameter(name));
		}

		List<String> fileList = upload(mRequest);
		List<ImageDTO> imageFileList = new ArrayList<>();
		for (String fileName : fileList) {
			ImageDTO image = new ImageDTO();
			image.setImageFileName(fileName);
			imageFileList.add(image);
		}
		boardMap.put("imageFileList", imageFileList);

		String id = (String) mRequest.getSession().getAttribute("loginId");
		boardMap.put("id", id);
		boardMap.putIfAbsent("parentNo", 0);

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html;charset=utf-8");
		try {
			int bno = service.addNewboard(boardMap);
			for (ImageDTO imageDTO : imageFileList) {
				File srcFile = new File(BOARD_REPO + "\\temp\\" + imageDTO.getImageFileName());
				File destDir = new File(BOARD_REPO + "\\" + bno);
				FileUtils.moveFileToDirectory(srcFile, destDir, true);
			}
			String msg = "<script>alert('게시글 등록 완료'); location.href='/animal/board/listboards.do';</script>";
			return new ResponseEntity(msg, headers, HttpStatus.OK);
		} catch (Exception e) {
			for (ImageDTO imageDTO : imageFileList) {
				File file = new File(BOARD_REPO + "\\temp\\" + imageDTO.getImageFileName());
				file.delete();
			}
			String msg = "<script>alert('등록 실패'); location.href='/animal/board/boardForm.do';</script>";
			return new ResponseEntity(msg, headers, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	// 게시글 수정
	@Override
	@RequestMapping(value = "/modBoard.do", method = RequestMethod.POST)
	public ResponseEntity updateBoard(MultipartHttpServletRequest mRequest, HttpServletResponse response) throws Exception {
		Map<String, Object> boardMap = new HashMap<>();
		Enumeration<String> enu = mRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = enu.nextElement();
			boardMap.put(name, mRequest.getParameter(name));
		}

		List<String> fileList = upload(mRequest);
		List<ImageDTO> imageFileList = new ArrayList<>();
		for (String fileName : fileList) {
			ImageDTO image = new ImageDTO();
			image.setImageFileName(fileName);
			imageFileList.add(image);
		}
		boardMap.put("imageFileList", imageFileList);

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html;charset=utf-8");
		try {
			service.modBoard(boardMap);
			for (ImageDTO imageDTO : imageFileList) {
				File srcFile = new File(BOARD_REPO + "\\temp\\" + imageDTO.getImageFileName());
				File destDir = new File(BOARD_REPO + "\\" + boardMap.get("bno"));
				FileUtils.moveFileToDirectory(srcFile, destDir, true);
			}
			String msg = "<script>alert('수정 완료'); location.href='/animal/board/viewboard.do?bno=" + boardMap.get("bno") + "';</script>";
			return new ResponseEntity(msg, headers, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "<script>alert('수정 실패'); history.back();</script>";
			return new ResponseEntity(msg, headers, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	// 답글 작성
	@RequestMapping(value = "/replyBoard.do", method = RequestMethod.POST)
	public ResponseEntity replyBoard(MultipartHttpServletRequest mRequest, HttpServletResponse response) throws Exception {
		mRequest.setCharacterEncoding("utf-8");
		Map<String, Object> boardMap = new HashMap<>();
		Enumeration<String> enu = mRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = enu.nextElement();
			boardMap.put(name, mRequest.getParameter(name));
		}
		boardMap.put("id", mRequest.getSession().getAttribute("loginId"));

		// 답글 등록은 service에서 계층 구조 처리
		int result = service.replyBoard(boardMap);

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html;charset=utf-8");
		String msg = "<script>alert('답글 작성 완료'); location.href='/animal/board/listboards.do';</script>";
		return new ResponseEntity(msg, headers, HttpStatus.OK);
	}

	// 게시글 삭제
	@Override
	@RequestMapping("/deleteBoard.do")
	public ResponseEntity deleteBoard(@RequestParam("bno") int bno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html;charset=utf-8");
		try {
			service.deleteBoard(bno);
			FileUtils.deleteDirectory(new File(BOARD_REPO + "\\" + bno));
			String msg = "<script>alert('삭제 완료'); location.href='/animal/board/listboards.do';</script>";
			return new ResponseEntity(msg, headers, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "<script>alert('삭제 실패'); history.back();</script>";
			return new ResponseEntity(msg, headers, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	// 좋아요 처리
	@Override
	@RequestMapping(value = "/like.do", method = RequestMethod.POST)
	public ResponseEntity likeAction(@RequestParam("bno") int bno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = (String) request.getSession().getAttribute("loginId");
		int result = service.likeBoard(bno, id);
		return new ResponseEntity<>(result, HttpStatus.OK);
	}

	// 댓글 등록
	@RequestMapping(value = "/addComment.do", method = RequestMethod.POST)
	public ResponseEntity addComment(@RequestParam Map<String, String> paramMap, HttpServletRequest request) throws Exception {
		paramMap.put("id", (String) request.getSession().getAttribute("loginId"));
		int result = service.addComment(paramMap);
		return new ResponseEntity<>(result, HttpStatus.OK);
	}

	// 파일 업로드 메서드
	private List<String> upload(MultipartHttpServletRequest mRequest) throws Exception {
		List<String> fileList = new ArrayList<>();
		Iterator<String> fileNames = mRequest.getFileNames();
		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = mRequest.getFile(fileName);
			String originalFileName = mFile.getOriginalFilename();
			if (mFile.getSize() != 0) {
				File file = new File(BOARD_REPO + "\\temp\\" + originalFileName);
				file.getParentFile().mkdirs();
				mFile.transferTo(file);
				fileList.add(originalFileName);
			}
		}
		return fileList;
	}
	// 댓글 등록
	@Override
	@RequestMapping(value = "/addComment.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> addComment(@ModelAttribute CommentDTO commentDTO, HttpServletRequest request) throws Exception {
	    String id = (String) request.getSession().getAttribute("loginId");
	    commentDTO.setId(id);

	    int result = service.insertComment(commentDTO);
	    if (result > 0) {
	        return new ResponseEntity<>("success", HttpStatus.OK);
	    } else {
	        return new ResponseEntity<>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	    }
	}

	// 댓글 목록 조회
	@Override
	@RequestMapping(value = "/listComments.do", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<List<CommentDTO>> listComments(@RequestParam("bno") int bno) throws Exception {
	    List<CommentDTO> commentList = service.getComment(bno);
	    return new ResponseEntity<>(commentList, HttpStatus.OK);
	}

	// 댓글 삭제
	@Override
	@RequestMapping(value = "/deleteComment.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> deleteComment(@RequestParam("cno") int cno) throws Exception {
	    int result = service.deleteComment(cno);
	    if (result > 0) {
	        return new ResponseEntity<>("success", HttpStatus.OK);
	    } else {
	        return new ResponseEntity<>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	    }
	}

}
	
	
