package com.test.animal.product.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.animal.product.dao.ProductDAO;
import com.test.animal.product.dto.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAO dao;

	@Override
	public ProductDTO productDetail(String id) {
		// TODO Auto-generated method stub
		return dao.productDetail(id);
	}

	@Override
	public List<ProductDTO> getCatTop10() {
	    return dao.getCatTop10();
	}
	
	// 고양이 사료
	@Override
	public List<ProductDTO> catFeedProducts() {
		// TODO Auto-generated method stub
		return dao.catFeedProducts();
	}
	@Override
	public List<ProductDTO> catFeedFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.catFeedFilter(paramMap);
	}
	
	// 고양이 간식
	@Override
	public List<ProductDTO> catTreatProducts() {
		// TODO Auto-generated method stub
		return dao.catTreatProducts();
	}
	@Override
	public List<ProductDTO> catTreatFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.catTreatFilter(paramMap);
	}
	
	// 고양이 모래
	@Override
	public List<ProductDTO> catSandProducts() {
		// TODO Auto-generated method stub
		return dao.catSandProducts();
	}
	@Override
	public List<ProductDTO> catSandFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.catSandFilter(paramMap);
	}
	
	// 고양이 이동장
	@Override
	public List<ProductDTO> catCarrierProducts() {
		// TODO Auto-generated method stub
		return dao.catCarrierProducts();
	}
	@Override
	public List<ProductDTO> catCarrierFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.catCarrierFilter(paramMap);
	}

	// 고양이 장난감
	@Override
	public List<ProductDTO> catToyProducts() {
		// TODO Auto-generated method stub
		return dao.catToyProducts();
	}
	@Override
	public List<ProductDTO> catToyFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.catToyFilter(paramMap);
	}
	
	// 고양이 목욕용품
	@Override
	public List<ProductDTO> catBathProducts() {
		// TODO Auto-generated method stub
		return dao.catBathProducts();
	}
	@Override
	public List<ProductDTO> catBathFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.catBathFilter(paramMap);
	}
	
	// 고양이 하우스
	@Override
	public List<ProductDTO> catHouseProducts() {
		// TODO Auto-generated method stub
		return dao.catHouseProducts();
	}
	@Override
	public List<ProductDTO> catHouseFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.catHouseFilter(paramMap);
	}
	
	// 고양이 식기
	@Override
	public List<ProductDTO> catDishProducts() {
		// TODO Auto-generated method stub
		return dao.catDishProducts();
	}
	@Override
	public List<ProductDTO> catDishFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.catDishFilter(paramMap);
	}

}
