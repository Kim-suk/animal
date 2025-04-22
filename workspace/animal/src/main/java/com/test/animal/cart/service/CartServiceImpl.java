package com.test.animal.cart.service;

import com.test.animal.cart.dao.CartDAO;
import com.test.animal.cart.dto.CartDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDAO cartDAO;

    // 회원의 장바구니 목록 조회
    @Override
    public List<CartDTO> getCartList(String memberId) {
        return cartDAO.getCartList(memberId);
    }

    // 해당 상품이 장바구니에 있는지 확인
    @Override
    public boolean isProductInCart(String memberId, String productId) {
        return cartDAO.isProductInCart(memberId, productId);
    }

    // 장바구니에 상품 추가
    @Override
    public void addProductToCart(CartDTO cartDTO) {
        cartDAO.addProductToCart(cartDTO);
    }

    // 장바구니 상품 수량 수정
	/*
	 * @Override public void updateQuantity(String memberId, String productId, int
	 * quantity) { cartDAO.updateQuantity(memberId, productId, quantity); }
	 */

    // 장바구니에서 상품 삭제
    public void deleteCartItem(String productId, String memberId) {
        cartDAO.deleteCartItem(productId, memberId);
    }

    // 로그아웃시 장바구니 완전 비우기
	@Override
	public void deleteCartByMemberId(String memberId) {
		cartDAO.deleteCartByMemberId(memberId);
	}
}
