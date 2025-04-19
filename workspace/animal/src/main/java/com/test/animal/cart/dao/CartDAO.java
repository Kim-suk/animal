package com.test.animal.cart.dao;

import com.test.animal.cart.dto.CartDTO;

import java.util.List;

public interface CartDAO {
    List<CartDTO> getCartList(String memberId); // 장바구니 목록 조회
    boolean isProductInCart(String memberId, String productId); // 해당 상품이 장바구니에 있는지 확인
    void addProductToCart(CartDTO cartDTO); // 장바구니에 상품 추가
    //void updateQuantity(String memberId, String productId, int quantity); // 장바구니 상품 수량 수정
    void deleteCartItem(String productId, String memberId); // 장바구니에서 상품 삭제
	void deleteCartByMemberId(String memberId);				// 로그아웃시 장바구니 비우기
}
