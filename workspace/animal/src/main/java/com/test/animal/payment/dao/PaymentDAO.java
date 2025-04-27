
package com.test.animal.payment.dao;

import java.util.List;

import com.test.animal.payment.dto.PaymentDTO;

public interface PaymentDAO {

	// 결제 정보 저장
    void insertPayment(PaymentDTO payment);

	PaymentDTO selectPaymentByOrderId(String orderId);

}