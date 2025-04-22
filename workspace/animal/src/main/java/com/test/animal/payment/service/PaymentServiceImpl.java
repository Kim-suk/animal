package com.test.animal.payment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.animal.payment.dao.PaymentDAO;
import com.test.animal.payment.dto.PaymentDTO;
import com.test.animal.payment.dto.PaymentDetailDTO;

@Service
public class PaymentServiceImpl implements PaymentService {

	 @Autowired
	    private PaymentDAO paymentDAO;
	 
	 @Transactional
	 public void processPayment(PaymentDTO paymentDTO) {
	     // 결제 정보 삽입
	     paymentDAO.insertPayment(paymentDTO);  // payment_id 자동 채워짐

	     // 결제 상세 정보 삽입
	     for (PaymentDetailDTO detail : paymentDTO.getDetails()) {
	         detail.setPaymentId(paymentDTO.getPaymentId());  // 자동으로 채운 payment_id 사용
	         paymentDAO.insertPaymentDetail(detail);
	     }
	 }

}

