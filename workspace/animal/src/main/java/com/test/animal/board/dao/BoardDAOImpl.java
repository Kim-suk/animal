package com.test.animal.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {

    @Autowired
    private SqlSession sqlSession;

    private final String NAMESPACE = "mapper.board.";

    @Override
    public List<BoardDTO> getBoardList(BoardDTO dto) {
        return sqlSession.selectList(NAMESPACE + "getBoardList", dto);
    }

    @Override
    public BoardDTO getBoard(BoardDTO dto) {
        return sqlSession.selectOne(NAMESPACE + "getBoard", dto);
    }

    @Override
    public void insertBoard(BoardDTO dto) {
        sqlSession.insert(NAMESPACE + "insertBoard", dto);
    }

    @Override
    public void updateBoard(BoardDTO dto) {
        sqlSession.update(NAMESPACE + "updateBoard", dto);
    }

    @Override
    public void deleteBoard(BoardDTO dto) {
        sqlSession.delete(NAMESPACE + "deleteBoard", dto);
    }

    @Override
    public void updateReadCount(int bno) {
        sqlSession.update(NAMESPACE + "updateReadCount", bno);
    }

    @Override
    public List<CommentDTO> getComment(int bno) {
        return sqlSession.selectList(NAMESPACE + "getComment", bno);
    }

    @Override
    public void insertComment(CommentDTO cdto) {
        sqlSession.insert(NAMESPACE + "insertComment", cdto);
    }

    @Override
    public void updateLike(int bno) {
        sqlSession.update(NAMESPACE + "updateLike", bno);
    }

    @Override
    public int selectLikeCount(int bno) {
        return sqlSession.selectOne(NAMESPACE + "selectLikeCount", bno);
    }
}
