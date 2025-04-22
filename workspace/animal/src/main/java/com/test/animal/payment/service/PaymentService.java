package com.test.animal.payment.service;

import java.util.List;

import com.test.animal.payment.dto.PaymentDTO;

public interface PaymentService {

    // 결제 정보 저장
    int insertPayment(PaymentDTO paymentDTO);

    // 결제 상태 변경 (예: 취소)
    int updatePaymentStatus(String orderNumber, String status);

    // 주문번호로 결제 정보 조회
    PaymentDTO getPaymentByOrderNumber(String orderNumber);

    // 사용자 아이디로 결제 내역 조회
    List<PaymentDTO> getPaymentsByUserId(String userId);
}
