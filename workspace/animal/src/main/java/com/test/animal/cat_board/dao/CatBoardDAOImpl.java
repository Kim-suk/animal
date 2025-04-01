package com.test.animal.cat_board.dao;
 
 import java.util.List;
 import java.util.Map;
 
 import org.apache.ibatis.session.SqlSession;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Repository;
 
 
 import com.test.animal.cat_board.dto.CatArticleDTO;
 import com.test.animal.cat_board.dto.CatImageDTO;
 
 @Repository
 public class CatBoardDAOImpl implements CatBoardDAO {
 	@Autowired
 	private SqlSession sqlSession;
 	
 	@Override
 	public List<CatArticleDTO> cat_listArticles() {
 		// TODO Auto-generated method stub
 		return sqlSession.selectList("mapper.board.cat_selectAllArticlesList");
 	}
 
 	@Override
 	public int cat_selectNewArticleNo() {
 		// TODO Auto-generated method stub
 		return sqlSession.selectOne("mapper.board.cat_selectNewArticleNo");
 	}
 
 	@Override
 	public int cat_insertNewArticle(Map<String, Object> articleMap) {
 		// TODO Auto-generated method stub
 		sqlSession.insert("mapper.board.cat_insertNewArticle", articleMap);
 		return (Integer) articleMap.get("articleNo");
 	}
 
 	@Override
 	public CatArticleDTO cat_viewArticle(int articleNo) {
 		// TODO Auto-generated method stub
 		return sqlSession.selectOne("mapper.board.cat_cat_selectArticle", articleNo);
 	}
 
 	@Override
 	public void cat_updateArticle(Map<String, Object> articleMap) {
 		// TODO Auto-generated method stub
 		sqlSession.update("mapper.board.cat_updateArticle", articleMap);
 	}
 
 	@Override
 	public void cat_deleteArticle(int articleNo) {
 		// TODO Auto-generated method stub
 		sqlSession.delete("mapper.board.deleteArticle", articleNo);
 	}
 
 	@Override
 	public int cat_selectNewImageFileNo() {
 		// TODO Auto-generated method stub
 		return sqlSession.selectOne("mapper.board.selectNewImageFileNo");
 	}
 
 	public void cat_insertNewImage(List<CatImageDTO> imageFileList) {
 		// TODO Auto-generated method stub
 		sqlSession.insert("mapper.board.insertNewImage", imageFileList);
 	}
 
 	@Override
 	public List<CatImageDTO> cat_selectImageFileList(int articleNo) {
 		
 		return sqlSession.selectList("mapper.board.cat_selectImageFileList", articleNo);
 	}
 
 	@Override
 	public int cat_deleteImage(int imageFileNo) {
 		// TODO Auto-generated method stub
 		return sqlSession.delete("mapper.board.cat_deleteImage", imageFileNo);
 	}
 
 	@Override
 	public int cat_selectArticleNo(int imageFileNo) {
 		// TODO Auto-generated method stub
 		return sqlSession.selectOne("mapper.board.cat_selectArticleNo", imageFileNo);
 	}
 
 
 }
 
 