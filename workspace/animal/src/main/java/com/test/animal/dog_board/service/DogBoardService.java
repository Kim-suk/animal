package com.test.animal.dog_board.service;

import java.util.List;
import java.util.Map;

import com.test.animal.dog_board.dto.DogArticleDTO;

public interface DogBoardService {

	List<DogArticleDTO> dog_listArticles();
	int dog_addNewArticle(Map<String, Object> articleMap);
	Map dog_viewArticle(int articleNo);
	void dog_modArticle(Map<String, Object> articleMap);
	void dog_removeArticle(int articleNo);
	int dog_deleteImage(int imageFileNo);

}
	