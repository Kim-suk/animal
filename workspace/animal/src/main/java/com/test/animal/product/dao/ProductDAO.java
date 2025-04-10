package com.test.animal.product.dao;

import java.util.List;

import com.test.animal.product.dto.ProductDTO;

public interface ProductDAO {

	ProductDTO productDetail(String id);

	List<ProductDTO> getCatTop10();

}
