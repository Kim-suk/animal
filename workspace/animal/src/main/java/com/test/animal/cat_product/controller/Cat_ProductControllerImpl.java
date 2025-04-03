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
}
