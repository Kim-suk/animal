package com.test.animal.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.animal.product.dao.ProductDAO;
import com.test.animal.product.dto.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAO dao;

	@Override
	public ProductDTO productDetail(String id) {
		// TODO Auto-generated method stub
		return dao.productDetail(id);
	}

	@Override
	public List<ProductDTO> getCatTop10() {
	    return dao.getCatTop10();
	}
}
