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
	
	@RequestMapping("/cat_product/cat_all.do")
	public ModelAndView productList(
			HttpServletRequest request,
			HttpServletResponse response) {
	    List<ProductDTO> list = service.getCatTop10(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_all"); // 타일즈의 이름과 /까지 완전 똒같아야함
	    mav.addObject("productList", list);
	    return mav;
	}
	
	@Override
	@RequestMapping("/cat_product/cat_feed.do")
	public String productCatFeed() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_feed";
	}
	
	@Override
	@RequestMapping("/cat_product/cat_treat.do")
	public String productCatTreat() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_treat";
	}
	
	@Override
	@RequestMapping("/cat_product/cat_sand.do")
	public String productCatSand() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_sand";
	}
	
	@Override
	@RequestMapping("/cat_product/cat_carrier.do")
	public String productCatCarrier() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_carrier";
	}
	
	@Override
	@RequestMapping("/cat_product/cat_toy.do")
	public String productCatToy() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_toy";
	}
	
	@Override
	@RequestMapping("/cat_product/cat_bath.do")
	public String productCatBath() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_bath";
	}
	
	@Override
	@RequestMapping("/cat_product/cat_house.do")
	public String productCatHouse() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_house";
	}
	
	@Override
	@RequestMapping("/cat_product/cat_dish.do")
	public String productCatDish() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_dish";
	}
}
