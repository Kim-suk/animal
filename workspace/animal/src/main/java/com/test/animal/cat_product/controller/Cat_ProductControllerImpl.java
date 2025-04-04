package com.test.animal.cat_product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.animal.cat_product.service.Cat_ProductService;

@Controller
@RequestMapping("/cat_product")
public class Cat_ProductControllerImpl implements Cat_ProductController{
	@Autowired
	private Cat_ProductService service;
	
	@Override
	@RequestMapping("/cat_all.do")
	public String productCatAll() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_all";
	}
	
	@Override
	@RequestMapping("/cat_feed.do")
	public String productCatFeed() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_feed";
	}
	
	@Override
	@RequestMapping("/cat_treat.do")
	public String productCatTreat() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_treat";
	}
	
	@Override
	@RequestMapping("/cat_sand.do")
	public String productCatSand() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_sand";
	}
	
	@Override
	@RequestMapping("/cat_carrier.do")
	public String productCatCarrier() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_carrier";
	}
	
	@Override
	@RequestMapping("/cat_toy.do")
	public String productCatToy() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_toy";
	}
	
	@Override
	@RequestMapping("/cat_bath.do")
	public String productCatBath() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_bath";
	}
	
	@Override
	@RequestMapping("/cat_house.do")
	public String productCatHouse() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_house";
	}
	
	@Override
	@RequestMapping("/cat_dish.do")
	public String productCatDish() {
		// TODO Auto-generated method stub
		return "/cat_product/cat_dish";
	}
	

	
}
