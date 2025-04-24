package com.test.animal.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.test.animal.product.dto.ProductDTO;

public interface ProductController {
	
	// ��ǰ ��
	ModelAndView productDetail(ProductDTO product, HttpServletRequest request, HttpServletResponse response);
	// ������ ž10
	ModelAndView catTop10();
	
	// ������ ��� ����
	ModelAndView catFeedFilter(List<String> age, List<String> weight, List<String> ingredient, List<String> grainSize);
	
	// ������ ���� ����
	ModelAndView catTreatFilter(List<String> target, List<String> kind, List<String> ingredient, List<String> function);
	
	// ������ �� ����
	ModelAndView catSandFilter(List<String> sandType, List<String> aroma, List<String> capacity);

	// ������ �̵��� ����
	ModelAndView catCarrierFilter(List<String> weight, List<String> carrierType);
	
	// ������ �峭�� ����
	ModelAndView catToyFilter(List<String> toyType, List<String> form);
	
	// ������ ����ǰ ����
	ModelAndView catBathFilter(List<String> bathType, List<String> dandruff);
	
	// ������ �Ͽ콺 ����
	ModelAndView catHouseFilter(List<String> houseType, List<String> capacity);
	
	// ������ �ı� ����
	ModelAndView catDishFilter(List<String> material, List<String> size, List<String> automatic);
	
	//������//
	ModelAndView dogtop10();
	
	// ������ ��� ����
	ModelAndView dogFeedFilter(List<String> age, List<String> weight, List<String> ingredient, List<String> grainSize);
	
	// ������ ���� ����
	ModelAndView dogTreatFilter(List<String> target, List<String> kind, List<String> ingredient, List<String> function);
	
	// ������ �躯��ǰ ����
	ModelAndView dogPoopFilter(List<String> type, List<String> size);

	// ������ �̵��� ����
	ModelAndView dogCarrierFilter(List<String> weight, List<String> carrierType);
	
	// ������ �峭�� ����
	ModelAndView dogToyFilter(List<String> toyType, List<String> form);
	
	// ������ ����ǰ ����
	ModelAndView dogBathFilter(List<String> bathType, List<String> dandruff);
	
	// ������ �Ͽ콺 ����
	ModelAndView dogHouseFilter(List<String> houseType, List<String> capacity);
	
	// ������ �ı� ����
	ModelAndView dogDishFilter(List<String> material, List<String> size, List<String> automatic);

}