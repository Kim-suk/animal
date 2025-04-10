package com.test.animal.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.test.animal.product.dto.ProductDTO;
import com.test.animal.product.service.ProductService;

@Controller
public class ProductControllerImpl implements ProductController {
	
	@Autowired
	private ProductService service;
	
	// 제품 아이디에 따라 세부사항 페이지 이동
	@Override
	@RequestMapping("/product/product.do")
	public ModelAndView productDetail(
			@ModelAttribute("dto") ProductDTO product,
			HttpServletRequest request,
			HttpServletResponse response)  {
		ModelAndView mav = new ModelAndView("product");
		
		ProductDTO result = service.productDetail(product.getId());
		mav.addObject("product", result);
		return mav;
	}
	
	// 고양이 상점 메인
	@Override
	@RequestMapping("/cat_product/cat_all.do")
	public ModelAndView productList() {
	    List<ProductDTO> list = service.getCatTop10(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_all"); // 타일즈의 이름과 /까지 완전 똒같아야함
	    mav.addObject("productList", list);
	    return mav;
	}
	
	// 고양이 사료 페이지
	@Override
	@RequestMapping("/cat_product/cat_feed.do")
	public ModelAndView productCatFeed() {
	    List<ProductDTO> list = service.catFeedProducts(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_feed");
	    mav.addObject("productList", list);
	    return mav;
	}
	
	// 고양이 간식 페이지
	@Override
	@RequestMapping("/cat_product/cat_treat.do")
	public ModelAndView productCatTreat() {
		List<ProductDTO> list = service.catTreatProducts(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_treat");
	    mav.addObject("productList", list);
	    return mav;
	}
	
	// 고양이 모래 페이지
	@Override
	@RequestMapping("/cat_product/cat_sand.do")
	public ModelAndView productCatSand() {
		List<ProductDTO> list = service.catSandProducts(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_sand");
	    mav.addObject("productList", list);
	    return mav;
	}
	
	// 고양이 이동장 페이지
	@Override
	@RequestMapping("/cat_product/cat_carrier.do")
	public ModelAndView productCatCarrier() {
		List<ProductDTO> list = service.catCarrierProducts(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_carrier");
	    mav.addObject("productList", list);
	    return mav;
	}
	
	// 고양이 장난감 페이지
	@Override
	@RequestMapping("/cat_product/cat_toy.do")
	public ModelAndView productCatToy() {
		List<ProductDTO> list = service.catToyProducts(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_toy");
	    mav.addObject("productList", list);
	    return mav;
	}
	
	// 고양이 목욕용품 페이지
	@Override
	@RequestMapping("/cat_product/cat_bath.do")
	public ModelAndView productCatBath() {
		List<ProductDTO> list = service.catBathProducts(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_bath");
	    mav.addObject("productList", list);
	    return mav;
	}
	
	// 고양이 하우스 페이지
	@Override
	@RequestMapping("/cat_product/cat_house.do")
	public ModelAndView productCatHouse() {
		List<ProductDTO> list = service.catHouseProducts(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_house");
	    mav.addObject("productList", list);
	    return mav;
	}
	
	// 고양이 식기 페이지
	@Override
	@RequestMapping("/cat_product/cat_dish.do")
	public ModelAndView productCatDish() {
		List<ProductDTO> list = service.catDishProducts(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_dish");
	    mav.addObject("productList", list);
	    return mav;
	}
	
	// <<강아지 상점 관련>>
	
	// 강아지 상점 메인
	@Override
	@RequestMapping("/dog_product/dog_all.do")
	public String productDogAll() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_all";
	}
	
	// 강아지 사료 페이지
	@Override
	@RequestMapping("/dog_product/dog_feed.do")
	public String productDogFeed() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_feed";
	}
	
	// 강아지 간식 페이지
	@Override
	@RequestMapping("/dog_product/dog_treat.do")
	public String productDogTreat() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_treat";
	}
	
	// 강아지 배변용품 페이지
	@Override
	@RequestMapping("/dog_product/dog_poop.do")
	public String productDogPoop() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_poop";
	}
	
	// 강아지 이동장 페이지
	@Override
	@RequestMapping("/dog_product/dog_carrier.do")
	public String productDogCarrier() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_carrier";
	}
	
	// 강아지 장난감 페이지
	@Override
	@RequestMapping("/dog_product/dog_toy.do")
	public String productDogToy() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_toy";
	}
	
	// 강아지 목욕용품 페이지
	@Override
	@RequestMapping("/dog_product/dog_bath.do")
	public String productDogBath() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_bath";
	}
	
	// 강아지 하우스 페이지
	@Override
	@RequestMapping("/dog_product/dog_house.do")
	public String productDogHouse() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_house";
	}
	
	// 강아지 식기 페이지
	@Override
	@RequestMapping("/dog_product/dog_dish.do")
	public String productDogDish() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_dish";
	}
}
