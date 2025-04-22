package com.test.animal.payment.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.payment.dto.PaymentDTO;
import com.test.animal.payment.dto.PaymentDetailDTO;

@Repository
public class PaymentDAOImpl implements PaymentDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void insertPayment(PaymentDTO payment) {
        sqlSession.insert("mapper.payment.insertPayment", payment);
    }

    @Override
    public void insertPaymentDetail(PaymentDetailDTO paymentDetail) {
        sqlSession.insert("mapper.payment.insertPaymentDetail", paymentDetail);
    }
}
