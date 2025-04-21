package com.test.animal.board.service;

import java.util.List;
import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;
import com.test.animal.board.dto.ImageDTO;

public interface BoardService {
    List<BoardDTO> getBoardList(BoardDTO dto);
    BoardDTO getBoard(BoardDTO dto);

    void insertBoard(BoardDTO dto);
    void insertBoardImage(ImageDTO imageDTO);
    void updateBoardThumbnail(int bno, String thumbnailFileName);
    void updateBoard(BoardDTO dto);
    void deleteBoard(BoardDTO dto);

    List<CommentDTO> getComment(BoardDTO dto);
    void insertComment(CommentDTO cdto);

    void updateLike(int bno);
    int selectLikeCount(int bno);
	List<ImageDTO> getBoardImages(int bno);
	void deleteImageByFileName(String delName);
	void insertImage(ImageDTO imageDTO);
	void updateCommentCountOnBoardLoad(int bno);
	void addComment(CommentDTO cdto);
	List<ImageDTO> getImageList(BoardDTO dto);
	
	List<BoardDTO> getTopHospitalReviews();
}