package com.test.animal.dog_board.dao;
 
 import java.util.List;
 import java.util.Map;
 
 
 import com.test.animal.dog_board.dto.DogArticleDTO;
 import com.test.animal.dog_board.dto.DogImageDTO;
 
 public interface DogBoardDAO {
 
 	List<DogArticleDTO> dog_listArticles();
 	int dog_selectNewArticleNo();
 	int dog_insertNewArticle(Map<String, Object> articleMap);
 	DogArticleDTO dog_viewArticle(int articleNo);
 	int dog_updateArticle(Map<String, Object> articleMap);
 	void dog_deleteArticle(int articleNo);
 	int dog_selectNewImageFileNo();
 	void dog_insertNewImage(List<DogImageDTO> imageFileList);
 	List<DogImageDTO> dog_selectImageFileList(int articleNo);
 	int dog_deleteImage(int imageFileNo);
 	int dog_selectArticleNo(int imageFileNo);
 
 }