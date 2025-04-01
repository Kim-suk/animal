package com.test.animal.cat_board.dao;
 
 import java.util.List;
 import java.util.Map;
 
 
 import com.test.animal.cat_board.dto.CatArticleDTO;
 import com.test.animal.cat_board.dto.CatImageDTO;
 
 public interface CatBoardDAO {
 
 	List<CatArticleDTO> cat_listArticles();
 	int cat_selectNewArticleNo();
 	int cat_insertNewArticle(Map<String, Object> articleMap);
 	CatArticleDTO cat_viewArticle(int articleNo);
 	void cat_updateArticle(Map<String, Object> articleMap);
 	void cat_deleteArticle(int articleNo);
 	int cat_selectNewImageFileNo();
 	List<CatImageDTO> cat_selectImageFileList(int articleNo);
 	int cat_deleteImage(int imageFileNo);
 	int cat_selectArticleNo(int imageFileNo);
 	void cat_insertNewImage(List<CatImageDTO> imageFileList);
 
 }