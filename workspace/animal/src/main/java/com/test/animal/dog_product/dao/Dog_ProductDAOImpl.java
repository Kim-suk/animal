package com.test.animal.dog_product.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Dog_ProductDAOImpl implements Dog_ProductDAO{
	@Autowired
	private SqlSession sqlsession;

}
