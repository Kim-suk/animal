package com.test.animal.payment.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.payment.dto.PaymentDTO;
import com.test.animal.payment.dto.PaymentDetailDTO;

@Repository
public class PaymentDAOImpl implements PaymentDAO{
	
    @Autowired
    private SqlSession sqlSession;

    @Override
    public int insertPayment(PaymentDTO paymentDTO) {
        return sqlSession.insert("mapper.payment.insertPayment", paymentDTO);
    }

    @Override
    public int updatePaymentStatus(String orderNumber, String status) {
        return sqlSession.update("mapper.payment.updatePaymentStatus", 
                new PaymentDTO(orderNumber, status));
    }

    @Override
    public PaymentDTO getPaymentByOrderNumber(String orderNumber) {
        return sqlSession.selectOne("mapper.payment.getPaymentByOrderNumber", orderNumber);
    }

    @Override
    public List<PaymentDTO> getPaymentsByUserId(String userId) {
        return sqlSession.selectList("mapper.payment.getPaymentsByUserId", userId);
    }
}
