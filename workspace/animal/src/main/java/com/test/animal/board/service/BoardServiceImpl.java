package com.test.animal.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.animal.board.service.BoardService;
import com.test.animal.board.dao.BoardDAO;
import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;

	public List<BoardDTO> getBoardList() {
		return boardDAO.getBoardList();
	}
	
	public BoardDTO getBoard(BoardDTO dto) {
		return boardDAO.getBoard(dto);
		
	}
	
	public void insertBoard(BoardDTO dto) {
		boardDAO.insertBoard(dto); // 100번 글 등록 성공
		
	}

	public void updateBoard(BoardDTO dto) {
		boardDAO.updateBoard(dto);
	}

	public void deleteBoard(BoardDTO dto) {
		boardDAO.deleteBoard(dto);
	}

	//댓글 등록
	public int insertComment(CommentDTO dto) {
		return boardDAO.insertComment(dto); 
		
	}

	//댓글 리스트
	public List<CommentDTO> getComment(BoardDTO dto) {
		return boardDAO.getComment(dto);
	}

	//좋아요 증가
	public void updateLike(int bno) {
		boardDAO.updateLike(bno);
		
	}

	//좋아요 갯수 가져오기
	public int selectLikeCount(int bno) {
		return boardDAO.selectLikeCount(bno);
	}

	@Override
	public void deleteBoard(int bno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map getBoard(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addNewboard(Map<String, Object> boardMap) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int likeBoard(int bno, String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteComment(int cno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CommentDTO> getComment(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addComment(Map<String, String> paramMap) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int replyBoard(Map<String, Object> boardMap) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void modBoard(Map<String, Object> boardMap) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateHitCount(int bno) {
		// TODO Auto-generated method stub
		
	}



}