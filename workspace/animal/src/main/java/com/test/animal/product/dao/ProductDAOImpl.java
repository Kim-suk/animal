package com.test.animal.product.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.product.dto.ProductDTO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SqlSession session;
	
	// ��ǰ ��
	@Override
	public ProductDTO productDetail(String id) {
		return session.selectOne("mapper.product.productDetail", id);
	}
	
	// ����� ����
	@Override
	public List<ProductDTO> catTop10() {
	    return session.selectList("mapper.product.getCatTop10");
	}
	
	// ����� ����
	@Override
	public List<ProductDTO> catFeedProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catFeedProducts");
	}
	@Override
	public List<ProductDTO> catFeedFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catFeedFilter", paramMap);
	}

	// ����� ����
	@Override
	public List<ProductDTO> catTreatProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catTreatProducts");
	}
	@Override
	public List<ProductDTO> catTreatFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catTreatFilter", paramMap);
	}

	// ����� ��
	@Override
	public List<ProductDTO> catSandProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catSandProducts");
	}
	@Override
	public List<ProductDTO> catSandFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catSandFilter", paramMap);
	}

	// ����� �̵���
	@Override
	public List<ProductDTO> catCarrierProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catCarrierProducts");
	}
	@Override
	public List<ProductDTO> catCarrierFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catCarrierFilter", paramMap);
	}

	// ����� �峭��
	@Override
	public List<ProductDTO> catToyProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catToyProducts");
	}
	@Override
	public List<ProductDTO> catToyFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catToyFilter", paramMap);
	}
	
	// ����� ����ǰ
	@Override
	public List<ProductDTO> catBathProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catBathProducts");
	}
	@Override
	public List<ProductDTO> catBathFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catBathFilter", paramMap);
	}

	// ����� �Ͽ콺
	@Override
	public List<ProductDTO> catHouseProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catHouseProducts");
	}
	@Override
	public List<ProductDTO> catHouseFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catHouseFilter", paramMap);
	}

	// ����� �ı�
	@Override
	public List<ProductDTO> catDishProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catDishProducts");
	}
	@Override
	public List<ProductDTO> catDishFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.catDishFilter", paramMap);
	}

	// ������ ����
	@Override
	public List<ProductDTO> dogTop10() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.getDogTop10");
	}

	// ������ ���
	@Override
	public List<ProductDTO> dogFeedProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogFeedProducts");
	}
	@Override
	public List<ProductDTO> dogFeedFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogFeedFilter", paramMap);
	}

	// ������ ����
	@Override
	public List<ProductDTO> dogTreatProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogTreatProducts");
	}
	@Override
	public List<ProductDTO> dogTreatFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogTreatFilter", paramMap);
	}

	// ������ �躯��ǰ
	@Override
	public List<ProductDTO> dogPoopProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogPoopProducts");
	}
	@Override
	public List<ProductDTO> dogPoopFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogPoopFilter", paramMap);
	}

	// ������ �̵���
	@Override
	public List<ProductDTO> dogCarrierProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogCarrierProducts");
	}
	@Override
	public List<ProductDTO> dogCarrierFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogCarrierFilter", paramMap);
	}

	// ������ �峭��
	@Override
	public List<ProductDTO> dogToyProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogToyProducts");
	}
	@Override
	public List<ProductDTO> dogToyFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogToyFilter", paramMap);
	}

	// ������ ����ǰ
	@Override
	public List<ProductDTO> dogBathProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogBathProducts");
	}
	@Override
	public List<ProductDTO> dogBathFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogBathFilter", paramMap);
	}
	
	// ������ �Ͽ콺
	@Override
	public List<ProductDTO> dogHouseProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogHouseProducts");
	}
	@Override
	public List<ProductDTO> dogHouseFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogHouseFilter", paramMap);
	}

	// ������ �ı�
	@Override
	public List<ProductDTO> dogDishProducts() {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogDishProducts");
	}
	@Override
	public List<ProductDTO> dogDishFilter(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.product.dogDishFilter", paramMap);
	}

}