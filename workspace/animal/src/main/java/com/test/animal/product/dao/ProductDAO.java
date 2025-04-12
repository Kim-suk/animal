package com.test.animal.product.dao;

import java.util.List;
import java.util.Map;

import com.test.animal.product.dto.ProductDTO;

public interface ProductDAO {

	// 상품 상세
	ProductDTO productDetail(String id);

	// 고양이 메인 상점
	List<ProductDTO> catTop10();

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

	// 강아지 메인 상점
	List<ProductDTO> dogTop10();

	// 강아지 사료
	List<ProductDTO> dogFeedProducts();
	List<ProductDTO> dogFeedFilter(Map<String, Object> paramMap);

	// 강아지 간식
	List<ProductDTO> dogTreatProducts();
	List<ProductDTO> dogTreatFilter(Map<String, Object> paramMap);

	// 강아지 배변용품
	List<ProductDTO> dogPoopProducts();
	List<ProductDTO> dogPoopFilter(Map<String, Object> paramMap);

	// 강아지 이동장
	List<ProductDTO> dogCarrierProducts();
	List<ProductDTO> dogCarrierFilter(Map<String, Object> paramMap);

	// 강아지 장난감
	List<ProductDTO> dogToyProducts();
	List<ProductDTO> dogToyFilter(Map<String, Object> paramMap);

	// 강아지 목욕용품
	List<ProductDTO> dogBathProducts();
	List<ProductDTO> dogBathFilter(Map<String, Object> paramMap);

	// 강아지 하우스
	List<ProductDTO> dogHouseProducts();
	List<ProductDTO> dogHouseFilter(Map<String, Object> paramMap);

	// 강아지 식기
	List<ProductDTO> dogDishProducts();
	List<ProductDTO> dogDishFilter(Map<String, Object> paramMap);

}
