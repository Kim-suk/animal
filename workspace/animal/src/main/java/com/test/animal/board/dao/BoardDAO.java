package com.test.animal.board.dao;

import java.util.List;
import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;
import com.test.animal.board.dto.ImageDTO;

public interface BoardDAO {
    List<BoardDTO> getBoardList(BoardDTO dto);
    BoardDTO getBoard(BoardDTO dto);
    void insertBoard(BoardDTO dto);
    void insertBoardImage(ImageDTO imageDTO);
    void updateBoard(BoardDTO dto);
    void deleteBoard(BoardDTO dto);

    void updateReadCount(int bno);

    List<CommentDTO> getComment(int bno);
    void insertComment(CommentDTO cdto);

    void updateLike(int bno);
    int selectLikeCount(int bno);
	void updateBoardThumbnail(int bno, String thumbnailFileName);
	List<ImageDTO> selectImagesByBno(int bno);
	void deleteImageByFileName(String delName);
	void insertImage(ImageDTO imageDTO);

	void updateCommentCountOnInsert(int bno);
	void updateCommentCountOnBoardLoad(int bno);
	List<ImageDTO> getImageListByBno(int bno);
	List<BoardDTO> getTopHospitalReviews();
	
	
}