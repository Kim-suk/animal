package com.test.animal.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.animal.board.dao.BoardDAO;
import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    private BoardDAO boardDAO;

    @Override
    public List<BoardDTO> getBoardList(BoardDTO dto) {
        return boardDAO.getBoardList(dto);
    }

    @Override
    public BoardDTO getBoard(BoardDTO dto) {
        boardDAO.updateReadCount(dto.getBno()); // 조회수 증가
        return boardDAO.getBoard(dto);
    }

    @Override
    public void insertBoard(BoardDTO dto) {
        boardDAO.insertBoard(dto);
    }

    @Override
    public void updateBoard(BoardDTO dto) {
        boardDAO.updateBoard(dto);
    }

    @Override
    public void deleteBoard(BoardDTO dto) {
        boardDAO.deleteBoard(dto);
    }

    @Override
    public List<CommentDTO> getComment(BoardDTO dto) {
        return boardDAO.getComment(dto.getBno());
    }

    @Override
    public void insertComment(CommentDTO cdto) {
        boardDAO.insertComment(cdto);
    }

    @Override
    public void updateLike(int bno) {
        boardDAO.updateLike(bno);
    }

    @Override
    public int selectLikeCount(int bno) {
        return boardDAO.selectLikeCount(bno);
    }
}
