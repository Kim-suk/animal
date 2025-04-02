package com.test.animal.cat_product.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.animal.cat_product.dao.Cat_ProductDAO;

@Service
public class Cat_ProductServiceImpl implements Cat_ProductService{
	@Autowired
	private Cat_ProductDAO dao;
}
