package com.test.animal.product.service;

import java.util.List;
import java.util.Map;

import com.test.animal.product.dto.ProductDTO;

public interface ProductService {
	// ���� ��������
	ProductDTO productDetail(String id);
	
	// ������ ����
	List<ProductDTO> catTop10();
	
	// ������ ���
	List<ProductDTO> catFeedProducts();
	List<ProductDTO> catFeedFilter(Map<String, List<String>> filters, int count);
	
	// ������ ����
	List<ProductDTO> catTreatProducts();
	List<ProductDTO> catTreatFilter(Map<String, List<String>> filters, int count);
	
	// ������ ��
	List<ProductDTO> catSandProducts();
	List<ProductDTO> catSandFilter(Map<String, List<String>> filters, int count);

	// ������ �̵���
	List<ProductDTO> catCarrierProducts();
	List<ProductDTO> catCarrierFilter(Map<String, List<String>> filters, int count);
	
	// ������ �峭��
	List<ProductDTO> catToyProducts();
	List<ProductDTO> catToyFilter(Map<String, List<String>> filters, int count);
	
	// ������ ����ǰ
	List<ProductDTO> catBathProducts();
	List<ProductDTO> catBathFilter(Map<String, List<String>> filters, int count);

	// ������ �Ͽ콺
	List<ProductDTO> catHouseProducts();
	List<ProductDTO> catHouseFilter(Map<String, List<String>> filters, int count);
	
	// ������ �ı�
	List<ProductDTO> catDishProducts();
	List<ProductDTO> catDishFilter(Map<String, List<String>> filters, int count);

	// ������ ����
	List<ProductDTO> dogTop10();

	// ������ ��� 
	List<ProductDTO> dogFeedProducts();
	List<ProductDTO> dogFeedFilter(Map<String, List<String>> filters, int count);

	// ������ ����
	List<ProductDTO> dogTreatProducts();
	List<ProductDTO> dogTreatFilter(Map<String, List<String>> filters, int count);

	// ������ �躯��ǰ
	List<ProductDTO> dogPoopProducts();
	List<ProductDTO> dogPoopFilter(Map<String, List<String>> filters, int count);

	// ������ �̵���
	List<ProductDTO> dogCarrierProducts();
	List<ProductDTO> dogCarrierFilter(Map<String, List<String>> filters, int count);

	// ������ �峭��
	List<ProductDTO> dogToyProducts();
	List<ProductDTO> dogToyFilter(Map<String, List<String>> filters, int count);

	// ������ ����ǰ
	List<ProductDTO> dogBathProducts();
	List<ProductDTO> dogBathFilter(Map<String, List<String>> filters, int count);

	// ������ �Ͽ콺
	List<ProductDTO> dogHouseProducts();
	List<ProductDTO> dogHouseFilter(Map<String, List<String>> filters, int count);

	// ������ �ı�
	List<ProductDTO> dogDishProducts();
	List<ProductDTO> dogDishFilter(Map<String, List<String>> filters, int count);
	
	
}