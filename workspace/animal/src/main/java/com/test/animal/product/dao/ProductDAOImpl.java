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

}
