package com.test.animal.product.dao;

import java.util.List;
import java.util.Map;

import com.test.animal.product.dto.ProductDTO;

public interface ProductDAO {

	// ��ǰ ��
	ProductDTO productDetail(String id);

	// ������ ���� ����
	List<ProductDTO> catTop10();

	// ������ ���
	List<ProductDTO> catFeedProducts();
	List<ProductDTO> catFeedFilter(Map<String, Object> paramMap);

	// ������ ����
	List<ProductDTO> catTreatProducts();
	List<ProductDTO> catTreatFilter(Map<String, Object> paramMap);

	// ������ ��
	List<ProductDTO> catSandProducts();
	List<ProductDTO> catSandFilter(Map<String, Object> paramMap);

	// ������ �̵���
	List<ProductDTO> catCarrierProducts();
	List<ProductDTO> catCarrierFilter(Map<String, Object> paramMap);

	// ������ �峭��
	List<ProductDTO> catToyProducts();
	List<ProductDTO> catToyFilter(Map<String, Object> paramMap);

	// ������ ����ǰ
	List<ProductDTO> catBathProducts();
	List<ProductDTO> catBathFilter(Map<String, Object> paramMap);

	// ������ �Ͽ콺
	List<ProductDTO> catHouseProducts();
	List<ProductDTO> catHouseFilter(Map<String, Object> paramMap);

	// ������ �ı�
	List<ProductDTO> catDishProducts();
	List<ProductDTO> catDishFilter(Map<String, Object> paramMap);

	// ������ ���� ����
	List<ProductDTO> dogTop10();

	// ������ ���
	List<ProductDTO> dogFeedProducts();
	List<ProductDTO> dogFeedFilter(Map<String, Object> paramMap);

	// ������ ����
	List<ProductDTO> dogTreatProducts();
	List<ProductDTO> dogTreatFilter(Map<String, Object> paramMap);

	// ������ �躯��ǰ
	List<ProductDTO> dogPoopProducts();
	List<ProductDTO> dogPoopFilter(Map<String, Object> paramMap);

	// ������ �̵���
	List<ProductDTO> dogCarrierProducts();
	List<ProductDTO> dogCarrierFilter(Map<String, Object> paramMap);

	// ������ �峭��
	List<ProductDTO> dogToyProducts();
	List<ProductDTO> dogToyFilter(Map<String, Object> paramMap);

	// ������ ����ǰ
	List<ProductDTO> dogBathProducts();
	List<ProductDTO> dogBathFilter(Map<String, Object> paramMap);

	// ������ �Ͽ콺
	List<ProductDTO> dogHouseProducts();
	List<ProductDTO> dogHouseFilter(Map<String, Object> paramMap);

	// ������ �ı�
	List<ProductDTO> dogDishProducts();
	List<ProductDTO> dogDishFilter(Map<String, Object> paramMap);

}