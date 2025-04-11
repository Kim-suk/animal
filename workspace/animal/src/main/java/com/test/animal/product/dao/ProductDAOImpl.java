package com.test.animal.product.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.product.dto.ProductDTO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SqlSession session;
	
	// 상품 상세
	@Override
	public ProductDTO productDetail(String id) {
		return session.selectOne("mapper.product.productDetail", id);
	}
	
	// 고양이 매인
	@Override
	public List<ProductDTO> getCatTop10() {
	    return session.selectList("mapper.product.getCatTop10");
	}
	
	// 고양이 간식
	@Override
	public List<ProductDTO> catFeedProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catFeedProducts");
	}
	@Override
	public List<ProductDTO> catFeedFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catFeedFilter", paramMap);
	}

	// 고양이 간식
	@Override
	public List<ProductDTO> catTreatProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catTreatProducts");
	}
	@Override
	public List<ProductDTO> catTreatFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catTreatFilter", paramMap);
	}

	// 고양이 모래
	@Override
	public List<ProductDTO> catSandProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catSandProducts");
	}
	@Override
	public List<ProductDTO> catSandFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catSandFilter", paramMap);
	}

	// 고양이 이동장
	@Override
	public List<ProductDTO> catCarrierProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catCarrierProducts");
	}
	@Override
	public List<ProductDTO> catCarrierFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catCarrierFilter", paramMap);
	}

	// 고양이 장난감
	@Override
	public List<ProductDTO> catToyProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catToyProducts");
	}
	@Override
	public List<ProductDTO> catToyFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catToyFilter", paramMap);
	}
	
	// 고양이 목욕용품
	@Override
	public List<ProductDTO> catBathProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catBathProducts");
	}
	@Override
	public List<ProductDTO> catBathFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catBathFilter", paramMap);
	}

	// 고양이 하우스
	@Override
	public List<ProductDTO> catHouseProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catHouseProducts");
	}
	@Override
	public List<ProductDTO> catHouseFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catHouseFilter", paramMap);
	}

	// 고양이 식기
	@Override
	public List<ProductDTO> catDishProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catDishProducts");
	}
	@Override
	public List<ProductDTO> catDishFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catDishFilter", paramMap);
	}

}
