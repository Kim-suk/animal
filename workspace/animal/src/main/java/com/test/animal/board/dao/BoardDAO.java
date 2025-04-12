package com.test.animal.board.dao;

import java.util.List;
import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;

public interface BoardDAO {
    List<BoardDTO> getBoardList(BoardDTO dto);
    BoardDTO getBoard(BoardDTO dto);
    void insertBoard(BoardDTO dto);
    void updateBoard(BoardDTO dto);
    void deleteBoard(BoardDTO dto);

    void updateReadCount(int bno);

    List<CommentDTO> getComment(int bno);
    void insertComment(CommentDTO cdto);

    void updateLike(int bno);
    int selectLikeCount(int bno);
}

