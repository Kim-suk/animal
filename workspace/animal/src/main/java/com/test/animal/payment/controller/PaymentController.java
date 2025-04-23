//package com.test.animal.payment.controller;
//
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.http.ResponseEntity;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.test.animal.cart.dto.CartDTO;
//import com.test.animal.payment.dto.PaymentDTO;
//
//public interface PaymentController {
//    // 결제 등록
//    String insertPayment(PaymentDTO paymentDTO);
//
//    // 결제 상세 조회
//    ModelAndView getPayment(String paymentId);
//
//    // 결제 목록 조회 (회원 기준)
//    ModelAndView getPaymentsByMember(String memberId);
//
//    // 결제 상태 업데이트
//    String updatePaymentStatus(String paymentId, String status);
//}