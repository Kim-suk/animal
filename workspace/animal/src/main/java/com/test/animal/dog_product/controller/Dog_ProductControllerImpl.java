package com.test.animal.dog_product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.animal.cat_product.service.Cat_ProductService;

@Controller
@RequestMapping("/dog_product")
public class Dog_ProductControllerImpl implements Dog_ProductController{
	@Autowired
	private Cat_ProductService service;
	
	@Override
	@RequestMapping("/dog_all.do")
	public String productDogAll() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_all";
	}
	
	@Override
	@RequestMapping("/dog_feed.do")
	public String productDogFeed() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_feed";
	}
	
	@Override
	@RequestMapping("/dog_treat.do")
	public String productDogTreat() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_treat";
	}
	
	@Override
	@RequestMapping("/dog_poop.do")
	public String productDogPoop() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_poop";
	}
	
	@Override
	@RequestMapping("/dog_carrier.do")
	public String productDogCarrier() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_carrier";
	}
	
	@Override
	@RequestMapping("/dog_toy.do")
	public String productDogToy() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_toy";
	}
	
	@Override
	@RequestMapping("/dog_bath.do")
	public String productDogBath() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_bath";
	}
	
	@Override
	@RequestMapping("/dog_house.do")
	public String productDogHouse() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_house";
	}
	
	@Override
	@RequestMapping("/dog_dish.do")
	public String productDogDish() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_dish";
	}
}
