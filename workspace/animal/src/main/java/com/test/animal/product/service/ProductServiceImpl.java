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

	@Override
	public List<ProductDTO> catFeedProducts() {
		// TODO Auto-generated method stub
		return dao.catFeedProducts();
	}

	@Override
	public List<ProductDTO> catTreatProducts() {
		// TODO Auto-generated method stub
		return dao.catTreatProducts();
	}

	@Override
	public List<ProductDTO> catSandProducts() {
		// TODO Auto-generated method stub
		return dao.catSandProducts();
	}

	@Override
	public List<ProductDTO> catCarrierProducts() {
		// TODO Auto-generated method stub
		return dao.catCarrierProducts();
	}

	@Override
	public List<ProductDTO> catToyProducts() {
		// TODO Auto-generated method stub
		return dao.catToyProducts();
	}

	@Override
	public List<ProductDTO> catBathProducts() {
		// TODO Auto-generated method stub
		return dao.catBathProducts();
	}

	@Override
	public List<ProductDTO> catHouseProducts() {
		// TODO Auto-generated method stub
		return dao.catHouseProducts();
	}

	@Override
	public List<ProductDTO> catDishProducts() {
		// TODO Auto-generated method stub
		return dao.catDishProducts();
	}
}
