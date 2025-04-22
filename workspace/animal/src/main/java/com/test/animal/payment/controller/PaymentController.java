package com.test.animal.payment.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface PaymentController {

	//String paymentReady(List<Integer> productIds, List<String> productNames, List<Integer> quantities, List<Integer> prices, HttpServletRequest request, Model model);

    public String preparePayment(List<String> productIds, List<String> productNames, List<Integer> quantities,
    		List<Integer> prices, Model model);
    
    public String paymentSuccess(String paymentKey, String orderId, int amount, Model model);

    public String paymentFail(String code, String message, Model model);

    public String paymentCancel(HttpServletRequest request, Model model);

    public String paymentHistory(HttpServletRequest request, Model model);
}
