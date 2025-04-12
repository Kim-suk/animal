package com.test.animal.board.service;

import java.util.List;
import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;

public interface BoardService {
    List<BoardDTO> getBoardList(BoardDTO dto);
    BoardDTO getBoard(BoardDTO dto);

    void insertBoard(BoardDTO dto);
    void updateBoard(BoardDTO dto);
    void deleteBoard(BoardDTO dto);

    List<CommentDTO> getComment(BoardDTO dto);
    void insertComment(CommentDTO cdto);

    void updateLike(int bno);
    int selectLikeCount(int bno);
}
