package com.test.animal.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;
import com.test.animal.board.dto.ImageDTO;

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
	public void insertBoardImage(ImageDTO imageDTO) {
    	sqlSession.insert(NAMESPACE + "insertBoardImage", imageDTO);		
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

	@Override
	public void updateBoardThumbnail(int bno, String thumbnailFileName) {
		// bno와 thumbnailFileName을 Map에 넣어서 전달
	    Map<String, Object> params = new HashMap<>();
	    params.put("bno", bno);
	    params.put("thumbnailFileName", thumbnailFileName);

	    // Mapper의 updateBoardThumbnail을 호출하여 썸네일 업데이트
	    sqlSession.update(NAMESPACE + "updateBoardThumbnail", params);
	}

	@Override
	public List<ImageDTO> selectImagesByBno(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + "selectImagesByBno", bno);
	}

	@Override
	public void deleteImageByFileName(String delName) {
		// TODO Auto-generated method stub
		sqlSession.delete(NAMESPACE + "deleteImageByFileName", delName);
	}

	@Override
	public void insertImage(ImageDTO imageDTO) {
		// TODO Auto-generated method stub
		sqlSession.insert(NAMESPACE + "insertImage", imageDTO);
	}

	@Override
	public void updateCommentCountOnInsert(int bno) {
		// TODO Auto-generated method stub
		 sqlSession.update(NAMESPACE + "updateCommentCountOnInsert", bno);
	}

	@Override
	public void updateCommentCountOnBoardLoad(int bno) {
		// TODO Auto-generated method stub
		sqlSession.update(NAMESPACE + "updateCommentCountOnBoardLoad", bno);
	}

	@Override
	public List<ImageDTO> getImageListByBno(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + "getImageListByBno", bno);
	}

	@Override
	public List<BoardDTO> getTopHospitalReviews() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + "getTopHospitalReviews");
	}	
}