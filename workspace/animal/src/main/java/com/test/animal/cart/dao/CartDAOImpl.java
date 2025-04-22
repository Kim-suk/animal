package com.test.animal.cart.dao;

import com.test.animal.cart.dto.CartDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class CartDAOImpl implements CartDAO {

    @Autowired
    private SqlSession sqlSession;

    // 장바구니 목록 조회
    @Override
    public List<CartDTO> getCartList(String memberId) {
        return sqlSession.selectList("mapper.cart.getCartList", memberId);
    }

    // 해당 상품이 장바구니에 있는지 확인
    @Override
    public boolean isProductInCart(String memberId, String productId) {
        int count = sqlSession.selectOne("mapper.cart.isProductInCart", memberId + productId);
        return count > 0;
    }

    // 장바구니에 상품 추가
    @Override
    public void addProductToCart(CartDTO cartDTO) {
        sqlSession.insert("mapper.cart.addProductToCart", cartDTO);
    }

    // 장바구니 상품 수량 수정
	/*
	 * @Override public void updateQuantity(String memberId, String productId, int
	 * quantity) { CartDTO cartDTO = new CartDTO(); cartDTO.setMemberId(memberId);
	 * cartDTO.setProductId(productId); cartDTO.setQuantity(quantity);
	 * sqlSession.update("mapper.cart.updateQuantity", cartDTO); }
	 */

    // 장바구니에서 상품 삭제
    @Override
    public void deleteCartItem(String productId, String memberId) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("productId", productId);
        paramMap.put("memberId", memberId);
        sqlSession.delete("mapper.cart.deleteCartItem", paramMap);
    }

    // 로그아웃시 장바구니 비우기
	@Override
	public void deleteCartByMemberId(String memberId) {
		sqlSession.delete("mapper.cart.deleteCartByMemberId", memberId);
	}
}
