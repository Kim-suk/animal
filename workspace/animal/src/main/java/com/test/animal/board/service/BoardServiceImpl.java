package com.test.animal.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.test.animal.board.dao.BoardDAO;
import com.test.animal.board.dto.ArticleDTO;
import com.test.animal.board.dto.ImageDTO;


@Service
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO dao;
	
	@Override
	public List<ArticleDTO> listArticles() {
		// TODO Auto-generated method stub
		return dao.listArticles();
	}

	@Override
	public int addNewArticle(Map<String, Object> articleMap) {
		// TODO Auto-generated method stub
		int articleNo = dao.selectNewArticleNo();
		articleMap.put("articleNo", articleNo);
		int result = dao.insertNewArticle(articleMap);
		
		List<ImageDTO> imageFileList = (List<ImageDTO>) articleMap.get("imageFileList");
		int imageFileNo = dao.selectNewImageFileNo();
		
		for(ImageDTO imageDTO : imageFileList) {
			imageDTO.setImageFileNo(++imageFileNo);
			imageDTO.setArticleNo(articleNo);
		}
		
		dao.insertNewImage(imageFileList);
		return result;
	}

	@Override
	public Map viewArticle(int articleNo) {
		// TODO Auto-generated method stub
		Map articleMap = new HashMap();
		ArticleDTO articleDTO = dao.viewArticle(articleNo);
		List<ImageDTO> imageFileList = dao.selectImageFileList(articleNo);
		
		articleMap.put("article", articleDTO);
		articleMap.put("imageFileList", imageFileList);
		return articleMap;
	}

	@Override
 	public void modArticle(Map<String, Object> articleMap) {
 	    // 1️⃣ articleNo가 있는지 확인
 	    if (!articleMap.containsKey("articleNo") || articleMap.get("articleNo") == null) {
 	        return; // articleNo 없으면 업데이트 중단
 	    }

 	    // 2️⃣ 게시글 업데이트 실행
 	    int updateCount = dao.updateArticle(articleMap);
 	    if (updateCount == 0) {
 	        return; // 업데이트 실패 시 중단
 	    }

 	    // 3️⃣ 이미지 리스트 확인
 	    List<ImageDTO> imageFileList = (List<ImageDTO>) articleMap.get("imageFileList");
 	    if (imageFileList == null || imageFileList.isEmpty()) {
 	        return; // 이미지가 없으면 추가 작업 없이 종료
 	    }

 	    // 4️⃣ 새로운 이미지 파일 번호 설정 후 삽입
 	    int imageFileNo = dao.selectNewImageFileNo();
 	    for (ImageDTO imageDTO : imageFileList) {
 	        imageDTO.setImageFileNo(++imageFileNo);
 	    }
 	    dao.insertNewImage(imageFileList);
 	}


	@Override
	public int deleteImage(int imageFileNo) {
		// TODO Auto-generated method stub
		int articleNo = dao.selectArticleNo(imageFileNo);
		dao.deleteImage(imageFileNo);
		return articleNo;
	}

	@Override
	public void removeArticle(int articleNo) {
		// TODO Auto-generated method stub
		
	}

}







