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
 	    // 새로운 글 번호 가져오기
 	    Integer articleNo = dao.cat_selectNewArticleNo();
 	    if (articleNo == null) {
 	        articleNo = 1;  // 기본값 설정
 	    }

 	    articleMap.put("articleNo", articleNo);
 	    
 	    // 글 등록
 	    int result = dao.cat_insertNewArticle(articleMap);

 	    // 이미지 리스트 가져오기
 	    List<CatImageDTO> imageFileList = (List<CatImageDTO>) articleMap.get("imageFileList");
 	    if (imageFileList != null && !imageFileList.isEmpty()) {
 	        int imageFileNo = dao.cat_selectNewImageFileNo();
 	        
 	        for (CatImageDTO imageDTO : imageFileList) {
 	            imageDTO.setImageFileNo(++imageFileNo);
 	            imageDTO.setArticleNo(articleNo);
 	        }

 	        dao.cat_insertNewImage(imageFileList);
 	    }

 	    return result;
 	}
 
 	@Override
 	public Map cat_viewArticle(int articleNo) {
 		// TODO Auto-generated method stub
 		Map articleMap = new HashMap();
 		CatArticleDTO catarticleDTO = dao.cat_viewArticle(articleNo);
 		List<CatImageDTO> imageFileList = dao.cat_selectImageFileList(articleNo);
 		
 		articleMap.put("article", catarticleDTO);
 		articleMap.put("imageFileList", imageFileList);
 		return articleMap;
 	}
 
 	@Override
 	public void cat_modArticle(Map<String, Object> articleMap) {
 	    // 1️⃣ articleNo가 있는지 확인
 	    if (!articleMap.containsKey("articleNo") || articleMap.get("articleNo") == null) {
 	        return; // articleNo 없으면 업데이트 중단
 	    }

 	    // 2️⃣ 게시글 업데이트 실행
 	    int updateCount = dao.cat_updateArticle(articleMap);
 	    if (updateCount == 0) {
 	        return; // 업데이트 실패 시 중단
 	    }

 	    // 3️⃣ 이미지 리스트 확인
 	    List<CatImageDTO> imageFileList = (List<CatImageDTO>) articleMap.get("imageFileList");
 	    if (imageFileList == null || imageFileList.isEmpty()) {
 	        return; // 이미지가 없으면 추가 작업 없이 종료
 	    }

 	    // 4️⃣ 새로운 이미지 파일 번호 설정 후 삽입
 	    int imageFileNo = dao.cat_selectNewImageFileNo();
 	    for (CatImageDTO imageDTO : imageFileList) {
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
 