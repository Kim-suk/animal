package com.test.animal.product.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.test.animal.product.dto.ProductDTO;

public interface ProductController {

	ModelAndView productDetail(ProductDTO product, HttpServletRequest request, HttpServletResponse response);

	ModelAndView productList();
	
	ModelAndView productCatFeed();

	ModelAndView productCatTreat();

	ModelAndView productCatSand();

	ModelAndView productCatCarrier();

	ModelAndView productCatToy();

	ModelAndView productCatBath();

	ModelAndView productCatHouse();

	ModelAndView productCatDish();
	////////////////////////////////////////////////////////
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
