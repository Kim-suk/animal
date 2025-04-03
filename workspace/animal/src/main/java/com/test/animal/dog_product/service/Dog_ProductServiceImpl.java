package com.test.animal.dog_product.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.animal.cat_product.dao.Cat_ProductDAO;

@Service
public class Dog_ProductServiceImpl implements Dog_ProductService{
	@Autowired
	private Cat_ProductDAO dao;
}
