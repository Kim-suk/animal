package com.test.animal.product.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.test.animal.product.dto.ProductDTO;

public interface ProductController {

	ModelAndView productDetail(ProductDTO product, HttpServletRequest request, HttpServletResponse response);

	String productCatFeed();

	String productCatTreat();

	String productCatSand();

	String productCatCarrier();

	String productCatToy();

	String productCatBath();

	String productCatHouse();

	String productCatDish();

}
