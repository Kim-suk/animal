package com.test.animal.payment.dao;

import java.util.List;

import com.test.animal.payment.dto.PaymentDTO;
import com.test.animal.payment.dto.PaymentDetailDTO;

public interface PaymentDAO {

    int insertPayment(PaymentDTO paymentDTO);
    int updatePaymentStatus(String orderNumber, String status);
    PaymentDTO getPaymentByOrderNumber(String orderNumber);
    List<PaymentDTO> getPaymentsByUserId(String userId);

}
