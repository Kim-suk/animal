package com.test.animal.dog_board.dao;
 
 import java.util.List;
 import java.util.Map;

import com.test.animal.cat_board.dto.CatImageDTO;
import com.test.animal.dog_board.dto.DogArticleDTO;
 import com.test.animal.dog_board.dto.DogImageDTO;
 
 public interface DogBoardDAO {
 
 	List<DogArticleDTO> dog_listArticles();
 	int dog_selectNewArticleNo();
 	int dog_insertNewArticle(Map<String, Object> articleMap);
 	DogArticleDTO dog_viewArticle(int articleNo);
 	void dog_updateArticle(Map<String, Object> articleMap);
 	void dog_deleteArticle(int articleNo);
 	int dog_selectNewImageFileNo();
 	
 	List<DogImageDTO> dog_selectImageFileList(int articleNo);
 	int dog_deleteImage(int imageFileNo);
 	int dog_selectArticleNo(int imageFileNo);
	void dog_insertNewImage(List<DogImageDTO> imageFileList);
	void insertNewImage(List<DogImageDTO> imageFileList);
	void dog_insertNewArticle(List<DogImageDTO> imageFileList);
 
 }