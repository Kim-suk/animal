package com.test.animal.cart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.animal.cart.dto.CartDTO;
import com.test.animal.cart.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartControllerImpl implements CartController {

    @Autowired
    private CartService cartService;

    // 장바구니 목록 조회
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @Override
    public String showCartList(HttpSession session, Model model) {
        String memberId = (String) session.getAttribute("loginId");

        if (memberId == null) {
            return "redirect:/member/loginForm.do";
        }

        List<CartDTO> cartList = cartService.getCartList(memberId);
        model.addAttribute("cartList", cartList);

        return "/product/cartList"; // JSP 경로 리턴
    }

    // 장바구니 상품 추가
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @Override
    public String addProductToCart(@ModelAttribute CartDTO cartDTO, HttpSession session) {
        String memberId = (String) session.getAttribute("loginId");

        if (memberId == null) {
            return "redirect:/member/loginForm.do";
        }

        cartDTO.setMemberId(memberId);

        // 이미 담긴 상품인지 확인
        boolean isInCart = cartService.isProductInCart(memberId, cartDTO.getProductId());

        if (isInCart) {
            session.setAttribute("cartSuccessMessage", "이미 장바구니에 담긴 상품입니다!");
        } else {
            cartService.addProductToCart(cartDTO);
            session.setAttribute("cartSuccessMessage", "장바구니에 상품이 담겼습니다!");
        }

        return "redirect:/product/product.do?id=" + cartDTO.getProductId(); // 상품 상세 페이지로 리디렉트
    }

	/*
	 * // 장바구니 수량 수정
	 * 
	 * @Override
	 * 
	 * @RequestMapping(value = "/updateQuantity", method = RequestMethod.POST)
	 * public String updateQuantity(@RequestParam("memberId") String memberId,
	 * 
	 * @RequestParam("productId") String productId,
	 * 
	 * @RequestParam("quantity") int quantity, Model model) {
	 * 
	 * // 장바구니 수량 업데이트 cartService.updateQuantity(memberId, productId, quantity);
	 * 
	 * // 갱신된 장바구니 목록을 가져와서 모델에 추가 List<CartDTO> cartList =
	 * cartService.getCartList(memberId); model.addAttribute("cartList", cartList);
	 * 
	 * // 장바구니 목록 페이지로 리디렉트 return "/product/cartList"; }
	 */


    // 장바구니 항목 삭제
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteCartItem(@RequestParam("productId") String productId,
                                 @RequestParam("memberId") String memberId) {
        cartService.deleteCartItem(productId, memberId);
        return "redirect:/cart/list";
    }
}
