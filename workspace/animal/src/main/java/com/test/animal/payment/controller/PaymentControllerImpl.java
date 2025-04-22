package com.test.animal.payment.controller;

import com.test.animal.payment.dto.PaymentDTO;
import com.test.animal.payment.dto.PaymentDetailDTO;
import com.test.animal.payment.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/payment")
public class PaymentControllerImpl implements PaymentController {

    @Autowired
    private PaymentService paymentService;

    // 결제 처리
    @Override
    @RequestMapping(value = "/process", method = RequestMethod.POST)
    public String processPayment(HttpServletRequest request) {
        String memberId = request.getParameter("memberId");
        String[] productIds = request.getParameterValues("productIds");
        String[] productNames = request.getParameterValues("productNames");
        String[] quantities = request.getParameterValues("quantities");
        String[] prices = request.getParameterValues("prices");

        List<PaymentDetailDTO> details = new ArrayList<>();
        int totalAmount = 0;

        for (int i = 0; i < productIds.length; i++) {
            int price = Integer.parseInt(prices[i]);
            int quantity = Integer.parseInt(quantities[i]);
            String productId = productIds[i];
            String productName = productNames[i];

            totalAmount += price * quantity;

            PaymentDetailDTO detail = new PaymentDetailDTO();
            detail.setProductId(productId);
            detail.setProductName(productName);
            detail.setQuantity(quantity);
            detail.setPrice(price);
            detail.setTotalAmount(price * quantity); // 상세 금액

            details.add(detail);
        }

        // DTO 생성 및 서비스에 전달
        PaymentDTO payment = new PaymentDTO();
        payment.setMemberId(memberId);
        payment.setTotalAmount(totalAmount);
        payment.setDetails(details);

        // 한 번에 처리
        paymentService.processPayment(payment);

        return "/payment/success";
    }

    
    // 결제 성공 페이지
    @Override
    @RequestMapping("/success")
    public String success() {
        return "/payment/success"; // 실제 성공 페이지 경로 확인 필요
    }
}
