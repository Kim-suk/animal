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
	ModelAndView productList();
	
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
	String productDogAll();
	
	String productDogFeed();

	String productDogTreat();

	String productDogPoop();

	String productDogCarrier();

	String productDogToy();

	String productDogBath();

	String productDogHouse();

	String productDogDish();

	

	

}
