package com.test.animal.cat_board.service;
 
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
 
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 import org.springframework.transaction.annotation.Propagation;
 import org.springframework.transaction.annotation.Transactional;
 
 
 import com.test.animal.cat_board.dto.CatArticleDTO;
 import com.test.animal.cat_board.dto.CatImageDTO;
 import com.test.animal.cat_board.dao.CatBoardDAO;
 
 @Service
 @Transactional(propagation = Propagation.REQUIRED)
 public class CatBoardServiceImpl implements CatBoardService {
 	@Autowired
 	private CatBoardDAO dao;
 	
 	@Override
 	public List<CatArticleDTO> cat_listArticles() {
 		// TODO Auto-generated method stub
 		return dao.cat_listArticles();
 	}
 
 	@Override
 	public int cat_addNewArticle(Map<String, Object> articleMap) {
 		// TODO Auto-generated method stub
 		int articleNo = dao.cat_selectNewArticleNo();
 		articleMap.put("articleNo", articleNo);
 		int result = dao.cat_insertNewArticle(articleMap);
 		
 		List<CatImageDTO> imageFileList = (List<CatImageDTO>) articleMap.get("imageFileList");
 		int imageFileNo = dao.cat_selectNewImageFileNo();
 		
 		for(CatImageDTO imageDTO : imageFileList) {
 			imageDTO.setImageFileNo(++imageFileNo);
 			imageDTO.setArticleNo(articleNo);
 		}
 		
 		dao.cat_insertNewImage(imageFileList);
 		return result;
 	}
 
 	@Override
 	public Map cat_viewArticle(int articleNo) {
 		// TODO Auto-generated method stub
 		Map articleMap = new HashMap();
 		CatArticleDTO articleDTO = dao.cat_viewArticle(articleNo);
 		List<CatImageDTO> imageFileList = dao.cat_selectImageFileList(articleNo);
 		
 		articleMap.put("article", articleDTO);
 		articleMap.put("imageFileList", imageFileList);
 		return articleMap;
 	}
 
 	@Override
 	public void cat_modArticle(Map<String, Object> articleMap) {
 		// TODO Auto-generated method stub
 		List<CatImageDTO> imageFileList = (List<CatImageDTO>) articleMap.get("imageFileList");
 		int imageFileNo = dao.cat_selectNewImageFileNo();
 		dao.cat_updateArticle(articleMap);
 		for(CatImageDTO imageDTO : imageFileList) {
 			imageDTO.setImageFileNo(++imageFileNo);
 		}
 		dao.cat_insertNewImage(imageFileList);
 	}
 
 	@Override
 	public void cat_removeArticle(int articleNo) {
 		// TODO Auto-generated method stub
 		dao.cat_deleteArticle(articleNo);
 	}
 
 	@Override
 	public int cat_deleteImage(int imageFileNo) {
 		// TODO Auto-generated method stub
 		int articleNo = dao.cat_selectArticleNo(imageFileNo);
 		dao.cat_deleteImage(imageFileNo);
 		return articleNo;
 	}
 
 }
 