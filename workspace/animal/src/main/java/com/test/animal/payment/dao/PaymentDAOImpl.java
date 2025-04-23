package com.test.animal.payment.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.payment.dto.PaymentDTO;


@Repository
public class PaymentDAOImpl implements PaymentDAO {

    @Autowired
    private SqlSession sqlSession;

    private static final String NAMESPACE = "paymentMapper.";

    @Override
    public void insertPayment(PaymentDTO payment) {
        sqlSession.insert(NAMESPACE + "insertPayment", payment);
    }

    @Override
    public PaymentDTO selectPaymentByOrderId(String orderId) {
        return sqlSession.selectOne(NAMESPACE + "selectPaymentByOrderId", orderId);
    }

	@Override
	public PaymentDTO selectPaymentByCustomerEmail(String customerEmail) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "selectPaymentByCustomerEmail", customerEmail);
	}
}