package com.test.animal.dog_board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.test.animal.dog_board.dao.DogBoardDAO;
import com.test.animal.dog_board.dto.DogArticleDTO;
import com.test.animal.dog_board.dto.DogImageDTO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class DogBoardServiceImpl implements DogBoardService {
	@Autowired
	private DogBoardDAO dao;
	
	@Override
	public List<DogArticleDTO> dog_listArticles() {
		// TODO Auto-generated method stub
		return dao.dog_listArticles();
	}

	@Override
	public int dog_addNewArticle(Map<String, Object> articleMap) {
		// TODO Auto-generated method stub
		int articleNo = dao.dog_selectNewArticleNo();
		articleMap.put("articleNo", articleNo);
		int result = dao.dog_insertNewArticle(articleMap);
		
		List<DogImageDTO> imageFileList = (List<DogImageDTO>) articleMap.get("imageFileList");
		int imageFileNo = dao.dog_selectNewImageFileNo();
		
		for(DogImageDTO imageDTO : imageFileList) {
			imageDTO.setImageFileNo(++imageFileNo);
			imageDTO.setArticleNo(articleNo);
		}
		
		dao.dog_insertNewImage(imageFileList);
		return result;
	}

	@Override
	public Map dog_viewArticle(int articleNo) {
		// TODO Auto-generated method stub
		Map articleMap = new HashMap();
		DogArticleDTO articleDTO = dao.dog_viewArticle(articleNo);
		List<DogImageDTO> imageFileList = dao.dog_selectImageFileList(articleNo);
		
		articleMap.put("article", articleDTO);
		articleMap.put("imageFileList", imageFileList);
		return articleMap;
	}

	@Override
	public void dog_modArticle(Map<String, Object> articleMap) {
		// TODO Auto-generated method stub
		List<DogImageDTO> imageFileList = (List<DogImageDTO>) articleMap.get("imageFileList");
		int imageFileNo = dao.dog_selectNewImageFileNo();
		dao.dog_updateArticle(articleMap);
		for(DogImageDTO imageDTO : imageFileList) {
			imageDTO.setImageFileNo(++imageFileNo);
		}
		dao.dog_insertNewImage(imageFileList);
	}

	@Override
	public void dog_removeArticle(int articleNo) {
		// TODO Auto-generated method stub
		dao.dog_deleteArticle(articleNo);
	}

	@Override
	public int dog_deleteImage(int imageFileNo) {
		// TODO Auto-generated method stub
		int articleNo = dao.dog_selectArticleNo(imageFileNo);
		dao.dog_deleteImage(imageFileNo);
		return articleNo;
	}

}







