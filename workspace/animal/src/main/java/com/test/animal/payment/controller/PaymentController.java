package com.test.animal.payment.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.animal.cart.dto.CartDTO;
import com.test.animal.payment.dto.PaymentDTO;

public interface PaymentController {

	public String processPayment(HttpServletRequest request);
	public String success();
}

