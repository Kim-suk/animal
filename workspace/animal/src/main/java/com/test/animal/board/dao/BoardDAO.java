package com.test.animal.board.dao;

import java.util.List;
import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;

public interface BoardDAO {

	
	List<BoardDTO> getBoardList();
	List<CommentDTO> getComment(BoardDTO dto);
	void deleteBoard(BoardDTO dto);
	int insertComment(CommentDTO dto);
	void updateBoard(BoardDTO dto);
	void updateLike(int bno);
	int selectLikeCount(int bno);
	void insertBoard(BoardDTO dto);
	BoardDTO getBoard(BoardDTO dto);

}
