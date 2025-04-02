package com.test.animal.dog_board.dao;
 
 import java.util.List;
 import java.util.Map;
 
 import org.apache.ibatis.session.SqlSession;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Repository;
 
 import com.test.animal.dog_board.dto.DogArticleDTO;
 import com.test.animal.dog_board.dto.DogImageDTO;
 
 @Repository
 public class DogBoardDAOImpl implements DogBoardDAO {
 	@Autowired
 	private SqlSession sqlSession;
 	
 	@Override
 	public List<DogArticleDTO> dog_listArticles() {
 		// TODO Auto-generated method stub
 		return sqlSession.selectList("mapper.dog_board.dog_selectAllArticlesList");
 	}
 
 	@Override
 	public int dog_selectNewArticleNo() {
 		// TODO Auto-generated method stub
 		return sqlSession.selectOne("mapper.dog_board.dog_selectNewArticleNo");
 	}
 
 	@Override
 	public int dog_insertNewArticle(Map<String, Object> articleMap) {
 		// TODO Auto-generated method stub
 		sqlSession.insert("mapper.dog_board.dog_insertNewArticle", articleMap);
 		return (Integer) articleMap.get("articleNo");
 	}
 
 	@Override
 	public DogArticleDTO dog_viewArticle(int articleNo) {
 		// TODO Auto-generated method stub
 		return sqlSession.selectOne("mapper.dog_board.dog_selectArticle", articleNo);
 	}
 
 	@Override
 	public void dog_updateArticle(Map<String, Object> articleMap) {
 		// TODO Auto-generated method stub
 		sqlSession.update("mapper.dog_board.dog_updateArticle", articleMap);
 	}
 
 	@Override
 	public void dog_deleteArticle(int articleNo) {
 		// TODO Auto-generated method stub
 		sqlSession.delete("mapper.dog_board.dog_deleteArticle", articleNo);
 	}
 
 	@Override
 	public int dog_selectNewImageFileNo() {
 		// TODO Auto-generated method stub
 		return sqlSession.selectOne("mapper.dog_board.dog_selectNewImageFileNo");
 	}
 
 	@Override
 	public void dog_insertNewImage(List<DogImageDTO> imageFileList) {
 		// TODO Auto-generated method stub
 		sqlSession.insert("mapper.dog_board.dog_insertNewImage", imageFileList);
 	}
 
 	@Override
 	public List<DogImageDTO> dog_selectImageFileList(int articleNo) {
 		// TODO Auto-generated method stub
 		return sqlSession.selectList("mapper.dog_board.dog_selectImageFileList", articleNo);
 	}
 
 	@Override
 	public int dog_deleteImage(int imageFileNo) {
 		// TODO Auto-generated method stub
 		return sqlSession.delete("mapper.dog_board.dog_deleteImage", imageFileNo);
 	}
 
 	@Override
 	public int dog_selectArticleNo(int imageFileNo) {
 		// TODO Auto-generated method stub
 		return sqlSession.selectOne("mapper.dog_board.dog_selectArticleNo", imageFileNo);
 	}
 }
 
 
 
 
 