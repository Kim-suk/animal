package com.test.animal.payment.service;

import java.util.List;
import java.util.Map;

import com.test.animal.cart.dto.CartDTO;
import com.test.animal.payment.dto.PaymentDTO;

public interface PaymentService {

	void processPayment(PaymentDTO paymentDTO);
}