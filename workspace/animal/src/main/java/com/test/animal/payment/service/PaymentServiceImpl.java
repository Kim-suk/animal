package com.test.animal.payment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.animal.payment.dao.PaymentDAO;
import com.test.animal.payment.dto.PaymentDTO;

@Service
public class PaymentServiceImpl implements PaymentService {

	 @Autowired
	    private PaymentDAO paymentDAO;
	 
		/*
		 * @Transactional public void processPayment(PaymentDTO paymentDTO) { // 결제 정보
		 * 삽입 paymentDAO.insertPayment(paymentDTO); // payment_id 자동 채워짐
		 * 
		 * }
		 */
	 
	 @Override
	 public void savePaymentInfo(PaymentDTO dto) {
	     paymentDAO.insertPayment(dto); 
	 }

	 @Override
	 public PaymentDTO getPaymentInfo(String orderId) {
	     return paymentDAO.selectPaymentByOrderId(orderId);
	 }

}