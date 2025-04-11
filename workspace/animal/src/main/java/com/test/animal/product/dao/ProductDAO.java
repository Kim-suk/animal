package com.test.animal.product.dao;

import java.util.List;
import java.util.Map;

import com.test.animal.product.dto.ProductDTO;

public interface ProductDAO {

	// 상품 상세
	ProductDTO productDetail(String id);
	
	// 고양이 메인 상점
	List<ProductDTO> getCatTop10();
	
	// 고양이 사료
	List<ProductDTO> catFeedProducts();
	List<ProductDTO> catFeedFilter(Map<String, Object> paramMap);
	
	// 고양이 간식
	List<ProductDTO> catTreatProducts();
	List<ProductDTO> catTreatFilter(Map<String, Object> paramMap);
	
	// 고양이 모래
	List<ProductDTO> catSandProducts();
	List<ProductDTO> catSandFilter(Map<String, Object> paramMap);

	
	// 고양이 이동장
	List<ProductDTO> catCarrierProducts();
	List<ProductDTO> catCarrierFilter(Map<String, Object> paramMap);
	
	// 고양이 장난감
	List<ProductDTO> catToyProducts();
	List<ProductDTO> catToyFilter(Map<String, Object> paramMap);
	
	// 고양이 목욕용품
	List<ProductDTO> catBathProducts();
	List<ProductDTO> catBathFilter(Map<String, Object> paramMap);

	// 고양이 하우스
	List<ProductDTO> catHouseProducts();
	List<ProductDTO> catHouseFilter(Map<String, Object> paramMap);

	// 고양이 식기
	List<ProductDTO> catDishProducts();
	List<ProductDTO> catDishFilter(Map<String, Object> paramMap);

}
