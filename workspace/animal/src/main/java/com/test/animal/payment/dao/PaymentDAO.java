package com.test.animal.payment.dao;

import java.util.List;

import com.test.animal.payment.dto.PaymentDTO;
import com.test.animal.payment.dto.PaymentDetailDTO;

public interface PaymentDAO {

	// 결제 정보 저장
    void insertPayment(PaymentDTO payment);

	void insertPaymentDetail(PaymentDetailDTO paymentDetail);

	/*
	 * // 결제 상세 정보 저장 void insertPaymentDetail(PaymentDetailDTO paymentDetail);
	 */
}
