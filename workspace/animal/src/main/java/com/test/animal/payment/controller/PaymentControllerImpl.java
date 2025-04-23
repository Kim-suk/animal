//package com.test.animal.payment.controller;
//
//import com.test.animal.payment.dto.PaymentDTO;
//import com.test.animal.payment.service.PaymentService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import java.util.ArrayList;
//import java.util.List;
//
//@Controller
//@RequestMapping("/payment")
//public class PaymentControllerImpl implements PaymentController {
//
//    @Autowired
//    private PaymentService paymentService;
//
//    // 결제 등록
//    @Override
//    @RequestMapping("/insert")
//    @ResponseBody
//    public String insertPayment(@RequestBody PaymentDTO paymentDTO) {
//        int result = paymentService.insertPayment(paymentDTO);
//        return result > 0 ? "success" : "fail";
//    }
//
//    // 결제 상세 조회
//    @Override
//    @RequestMapping("/detail")
//    public ModelAndView getPayment(@RequestParam("paymentId") String paymentId) {
//        PaymentDTO dto = paymentService.getPaymentByOrderId(paymentId);
//        ModelAndView mv = new ModelAndView("paymentDetail");
//        mv.addObject("payment", dto);
//        return mv;
//    }
//
//    // 회원별 결제 목록 조회
//    @Override
//    @RequestMapping("/list")
//    public ModelAndView getPaymentsByMember(@RequestParam("memberId") String memberId) {
//        List<PaymentDTO> list = paymentService.getPaymentsByMemberId(memberId);
//        ModelAndView mv = new ModelAndView("paymentList");
//        mv.addObject("paymentList", list);
//        return mv;
//    }
//
//    // 결제 상태 업데이트
//    @Override
//    @RequestMapping("/updateStatus")
//    @ResponseBody
//    public String updatePaymentStatus(
//            @RequestParam("paymentId") String paymentId,
//            @RequestParam("status") String status
//    ) {
//        int result = paymentService.updatePaymentStatus(paymentId, status);
//        return result > 0 ? "updated" : "update_failed";
//    }
//}