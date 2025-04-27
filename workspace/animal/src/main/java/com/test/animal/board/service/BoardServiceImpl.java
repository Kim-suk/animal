package com.test.animal.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.animal.board.dao.BoardDAO;
import com.test.animal.board.dto.BoardDTO;
import com.test.animal.board.dto.CommentDTO;
import com.test.animal.board.dto.ImageDTO;

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
    public void insertBoardImage(ImageDTO imageDTO) {
        boardDAO.insertBoardImage(imageDTO);
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

	@Override
	public void updateBoardThumbnail(int bno, String thumbnailFileName) {
		// TODO Auto-generated method stub
	    boardDAO.updateBoardThumbnail(bno, thumbnailFileName);
	}

	@Override
	public List<ImageDTO> getBoardImages(int bno) {
		// TODO Auto-generated method stub
		return boardDAO.selectImagesByBno(bno);
	}

	@Override
	public void deleteImageByFileName(String delName) {
		// TODO Auto-generated method stub
		boardDAO.deleteImageByFileName(delName);
	}

	@Override
	public void insertImage(ImageDTO imageDTO) {
		// TODO Auto-generated method stub
		boardDAO.insertImage(imageDTO);
	}

	@Override
	public void updateCommentCountOnBoardLoad(int bno) {
		// TODO Auto-generated method stub
		boardDAO.updateCommentCountOnBoardLoad(bno);  // 댓글 수 계산하여 갱신
	}

	@Override
	public void addComment(CommentDTO cdto) {
		// TODO Auto-generated method stub
		boardDAO.insertComment(cdto);  // 댓글 추가
        boardDAO.updateCommentCountOnInsert(cdto.getBno());  // 댓글 수 증가
	}

	@Override
	public List<ImageDTO> getImageList(BoardDTO dto) {
		// TODO Auto-generated method stub
		return boardDAO.getImageListByBno(dto.getBno());
	}

	@Override
	public List<BoardDTO> getTopHospitalReviews() {
		// TODO Auto-generated method stub
		return boardDAO.getTopHospitalReviews();
	}

}