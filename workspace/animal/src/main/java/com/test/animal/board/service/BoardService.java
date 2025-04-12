package com.test.animal.board.service;

import java.util.List;
import java.util.Map;

import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;

public interface BoardService {
	// CRUD 기능의 메소드 구현
	// 글 목록 조회
	List<BoardDTO> getBoardList();
	
	// 글 상세 조회
	BoardDTO getBoard(BoardDTO dto);
	
	// 글 등록
	void insertBoard(BoardDTO dto);

	// 글 수정
	void updateBoard(BoardDTO dto);

	// 글 삭제
	void deleteBoard(int bno);
	
	//댓글 등록
	int insertComment(CommentDTO dto);
	
	//댓글 읽기
	List<CommentDTO> getComment(BoardDTO dto);

	//좋아요 증가
	void updateLike(int bno);
	
	//좋아요 갯수 가져오기
	int selectLikeCount(int bno);

	Map getBoard(int bno);

	int addNewboard(Map<String, Object> boardMap);

	int likeBoard(int bno, String id);

	int deleteComment(int cno);

	List<CommentDTO> getComment(int bno);

	int addComment(Map<String, String> paramMap);

	int replyBoard(Map<String, Object> boardMap);

	void modBoard(Map<String, Object> boardMap);

	void updateHitCount(int bno);
}
