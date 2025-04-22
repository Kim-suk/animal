package com.test.animal.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.test.animal.product.dto.ProductDTO;

public interface ProductController {
	
	// 상품 상세
	ModelAndView productDetail(ProductDTO product, HttpServletRequest request, HttpServletResponse response);
	// 고양이 탑10
	ModelAndView catTop10();
	
	// 고양이 사료 필터
	ModelAndView catFeedFilter(List<String> age, List<String> weight, List<String> ingredient, List<String> grainSize);
	
	// 고양이 간식 필터
	ModelAndView catTreatFilter(List<String> target, List<String> kind, List<String> ingredient, List<String> function);
	
	// 고양이 모래 필터
	ModelAndView catSandFilter(List<String> sandType, List<String> aroma, List<String> capacity);

	// 고양이 이동장 필터
	ModelAndView catCarrierFilter(List<String> weight, List<String> carrierType);
	
	// 고양이 장난감 필터
	ModelAndView catToyFilter(List<String> toyType, List<String> form);
	
	// 고양이 목욕용품 필터
	ModelAndView catBathFilter(List<String> bathType, List<String> dandruff);
	
	// 고양이 하우스 필터
	ModelAndView catHouseFilter(List<String> houseType, List<String> capacity);
	
	// 고양이 식기 필터
	ModelAndView catDishFilter(List<String> material, List<String> size, List<String> automatic);
	
	//강아지//
	ModelAndView dogtop10();
	
	// 강아지 사료 필터
	ModelAndView dogFeedFilter(List<String> age, List<String> weight, List<String> ingredient, List<String> grainSize);
	
	// 강아지 간식 필터
	ModelAndView dogTreatFilter(List<String> target, List<String> kind, List<String> ingredient, List<String> function);
	
	// 강아지 배변용품 필터
	ModelAndView dogPoopFilter(List<String> type, List<String> size);

	// 강아지 이동장 필터
	ModelAndView dogCarrierFilter(List<String> weight, List<String> carrierType);
	
	// 강아지 장난감 필터
	ModelAndView dogToyFilter(List<String> toyType, List<String> form);
	
	// 강아지 목욕용품 필터
	ModelAndView dogBathFilter(List<String> bathType, List<String> dandruff);
	
	// 강아지 하우스 필터
	ModelAndView dogHouseFilter(List<String> houseType, List<String> capacity);
	
	// 강아지 식기 필터
	ModelAndView dogDishFilter(List<String> material, List<String> size, List<String> automatic);

}