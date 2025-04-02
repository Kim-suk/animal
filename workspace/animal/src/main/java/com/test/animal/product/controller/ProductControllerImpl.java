package com.test.animal.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.test.animal.product.service.ProductService;

@Controller
public class ProductControllerImpl implements ProductController{
	@Autowired
	private ProductService service;
}
