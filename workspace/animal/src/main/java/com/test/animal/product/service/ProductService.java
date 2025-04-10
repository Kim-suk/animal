package com.test.animal.product.service;

import java.util.List;

import com.test.animal.product.dto.ProductDTO;

public interface ProductService {

	ProductDTO productDetail(String id);

	List<ProductDTO> getCatTop10();

}
