package com.test.animal.cat_product.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Cat_ProductDAOImpl implements Cat_ProductDAO{
	@Autowired
	private SqlSession sqlsession;

}
