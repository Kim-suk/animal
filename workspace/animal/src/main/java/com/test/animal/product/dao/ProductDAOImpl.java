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
	
	@Override
	public ProductDTO productDetail(String id) {
		return session.selectOne("mapper.product.productDetail", id);
	}

	@Override
	public List<ProductDTO> getCatTop10() {
	    return session.selectList("mapper.product.getCatTop10");
	}

	@Override
	public List<ProductDTO> catFeedProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catFeedProducts");
	}

	@Override
	public List<ProductDTO> catTreatProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catTreatProducts");
	}

	@Override
	public List<ProductDTO> catSandProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catSandProducts");
	}

	@Override
	public List<ProductDTO> catCarrierProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catCarrierProducts");
	}

	@Override
	public List<ProductDTO> catToyProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catToyProducts");
	}
	
	@Override
	public List<ProductDTO> catBathProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catBathProducts");
	}

	@Override
	public List<ProductDTO> catHouseProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catHouseProducts");
	}

	@Override
	public List<ProductDTO> catDishProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catDishProducts");
	}

}
