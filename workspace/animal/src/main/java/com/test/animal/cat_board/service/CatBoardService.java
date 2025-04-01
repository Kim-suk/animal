package com.test.animal.cat_board.service;

import java.util.List;
import java.util.Map;


import com.test.animal.cat_board.dto.CatArticleDTO;

public interface CatBoardService {

	List<CatArticleDTO> cat_listArticles();
	int cat_addNewArticle(Map<String, Object> articleMap);
	Map cat_viewArticle(int articleNo);
	void cat_modArticle(Map<String, Object> articleMap);
	void cat_removeArticle(int articleNo);
	int cat_deleteImage(int imageFileNo);

}
