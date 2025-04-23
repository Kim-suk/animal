package com.test.animal.payment.dao;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.animal.payment.dto.PaymentDTO;

public interface PaymentDAO {
    void insertPayment(PaymentDTO payment);
    PaymentDTO selectPaymentByOrderId(String orderId);
	PaymentDTO selectPaymentByCustomerEmail(String customerEmail);
}