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

	// 강아지 메인
	@Override
	public List<ProductDTO> catTop10() {
	    return dao.catTop10();
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

	// 강아지 메인
	@Override
	public List<ProductDTO> dogTop10() {
		// TODO Auto-generated method stub
		return dao.dogTop10();
	}

	// 강아지 사료
	@Override
	public List<ProductDTO> dogFeedProducts() {
		// TODO Auto-generated method stub
		return dao.dogFeedProducts();
	}
	@Override
	public List<ProductDTO> dogFeedFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.dogFeedFilter(paramMap);
	}

	// 강아지 간식
	@Override
	public List<ProductDTO> dogTreatProducts() {
		// TODO Auto-generated method stub
		return dao.dogTreatProducts();
	}
	@Override
	public List<ProductDTO> dogTreatFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.dogTreatFilter(paramMap);
	}

	// 강아지 배변용품
	@Override
	public List<ProductDTO> dogPoopProducts() {
		// TODO Auto-generated method stub
		return dao.dogPoopProducts();
	}
	@Override
	public List<ProductDTO> dogPoopFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.dogPoopFilter(paramMap);
	}

	// 강아지 이동장
	@Override
	public List<ProductDTO> dogCarrierProducts() {
		// TODO Auto-generated method stub
		return dao.dogCarrierProducts();
	}
	@Override
	public List<ProductDTO> dogCarrierFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.dogCarrierFilter(paramMap);
	}

	// 강아지 장난감
	@Override
	public List<ProductDTO> dogToyProducts() {
		// TODO Auto-generated method stub
		return dao.dogToyProducts();
	}
	@Override
	public List<ProductDTO> dogToyFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.dogToyFilter(paramMap);
	}

	// 강아지 목욕용품
	@Override
	public List<ProductDTO> dogBathProducts() {
		// TODO Auto-generated method stub
		return dao.dogBathProducts();
	}
	@Override
	public List<ProductDTO> dogBathFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.dogBathFilter(paramMap);
	}

	// 강아지 하우스
	@Override
	public List<ProductDTO> dogHouseProducts() {
		// TODO Auto-generated method stub
		return dao.dogHouseProducts();
	}
	@Override
	public List<ProductDTO> dogHouseFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.dogHouseFilter(paramMap);
	}

	// 강아지 식기
	@Override
	public List<ProductDTO> dogDishProducts() {
		// TODO Auto-generated method stub
		return dao.dogDishProducts();
	}
	@Override
	public List<ProductDTO> dogDishFilter(Map<String, List<String>> filters, int conditionCount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filters", filters);
        paramMap.put("conditionCount", conditionCount);
		return dao.dogDishFilter(paramMap);
	}

}