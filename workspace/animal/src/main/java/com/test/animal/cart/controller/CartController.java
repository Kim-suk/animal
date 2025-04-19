package com.test.animal.cart.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.animal.cart.dto.CartDTO;

import javax.servlet.http.HttpSession;

public interface CartController {
    String showCartList(HttpSession session, Model model); // 장바구니 목록 조회
    String addProductToCart(@ModelAttribute CartDTO cartDTO, HttpSession session); // 장바구니에 상품 추가
	/*
	 * String updateQuantity(@RequestParam("memberId") String memberId,
	 * 
	 * @RequestParam("productId") String productId,
	 * 
	 * @RequestParam("quantity") int quantity, Model model); // 장바구니 수량 수정
	 */    
    String deleteCartItem(@RequestParam("memberId") String memberId,
                                 @RequestParam("productId") String productId); // 장바구니에서 상품 삭제
}
