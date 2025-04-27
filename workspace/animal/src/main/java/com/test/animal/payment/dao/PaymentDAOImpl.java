

package com.test.animal.payment.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.payment.dto.PaymentDTO;

@Repository
public class PaymentDAOImpl implements PaymentDAO {

    @Autowired
    private SqlSession sqlSession;

    // 장바구니 내에서 결제
    @Override
    public void insertPayment(PaymentDTO payment) {
        sqlSession.insert("mapper.payment.insertPayment", payment);
    }

    @Override
    public PaymentDTO selectPaymentByOrderId(String orderId) {
        return sqlSession.selectOne("mapper.payment.selectPaymentByOrderId", orderId);
    }

}