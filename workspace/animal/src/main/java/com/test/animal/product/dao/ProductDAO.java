package com.test.animal.product.dao;

import java.util.List;

import com.test.animal.product.dto.ProductDTO;

public interface ProductDAO {


	ProductDTO productDetail(String id);

	List<ProductDTO> getCatTop10();

	List<ProductDTO> catFeedProducts();
	
	List<ProductDTO> catTreatProducts();

	List<ProductDTO> catSandProducts();

	List<ProductDTO> catCarrierProducts();

	List<ProductDTO> catToyProducts();
	
	List<ProductDTO> catBathProducts();

	List<ProductDTO> catHouseProducts();

	List<ProductDTO> catDishProducts();

	

}
