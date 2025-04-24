package com.test.animal.payment.controller;

import com.test.animal.payment.dto.PaymentDTO;
import com.test.animal.payment.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Base64;
import java.nio.charset.StandardCharsets;

@Controller
@RequestMapping("/payment")
public class PaymentControllerImpl implements PaymentController {

	@Autowired
	private PaymentService paymentService;

	// 장바구니 결제 처리
	/*
	 * @Override
	 * 
	 * @RequestMapping(value = "/process", method = RequestMethod.POST) public
	 * String processPayment(HttpServletRequest request) { String memberId =
	 * request.getParameter("memberId"); System.out.println("✅ [DEBUG] memberId: " +
	 * memberId);
	 * 
	 * String[] productIds = request.getParameterValues("productIds"); String[]
	 * quantities = request.getParameterValues("quantities"); String[] prices =
	 * request.getParameterValues("prices");
	 * 
	 * int totalAmount = 0;
	 * 
	 * for (int i = 0; i < productIds.length; i++) { int price =
	 * Integer.parseInt(prices[i]); int quantity = Integer.parseInt(quantities[i]);
	 * String productId = productIds[i];
	 * 
	 * totalAmount += price * quantity;
	 * 
	 * }
	 * 
	 * // DTO 생성 및 서비스에 전달 PaymentDTO payment = new PaymentDTO();
	 * payment.setMemberId(memberId); payment.setTotalAmount(totalAmount);
	 * 
	 * // 한 번에 처리 paymentService.processPayment(payment);
	 * 
	 * return "/payment/success"; }
	 */

	@Override
	@RequestMapping("/success.do")
	public String paymentSuccess(@RequestParam("paymentKey") String paymentKey,
	                             @RequestParam("orderId") String orderId,
	                             @RequestParam("amount") int amount,
	                             @RequestParam("productName") String productName,
	                             @RequestParam("productImage") String productImage,
	                             HttpSession session,
	                             Model model) {
		
		String memberId = (String) session.getAttribute("loginId");
	    // 저장
	    PaymentDTO dto = new PaymentDTO();
	    dto.setPaymentKey(paymentKey);
	    dto.setOrderId(orderId);
	    dto.setMemberId(memberId);
	    dto.setAmount(amount);
	    paymentService.savePaymentInfo(dto);

	    // 저장한 값을 session이나 redirectAttributes에 임시 저장
	    session.setAttribute("lastOrderId", orderId);
	    session.setAttribute("lastAmount", amount);

	    if (productName != null && productImage != null) {
	        session.setAttribute("lastProductName", productName);
	        session.setAttribute("lastProductImageUrl", productImage);
	    }

	    // 리다이렉트로 중복 저장 방지
	    return "redirect:/payment/result.do";
	}
	
	
	@RequestMapping("/result.do")
	public String showResult(HttpSession session, Model model) {
	    String orderId = (String) session.getAttribute("lastOrderId");
	    Integer amount = (Integer) session.getAttribute("lastAmount");
	    String productName = (String) session.getAttribute("lastProductName");
	    String productImage = (String) session.getAttribute("lastProductImageUrl");
	    
	    if (orderId == null || amount == null) {
	        return "redirect:/"; // 잘못된 접근 방지
	    }

	    model.addAttribute("orderId", orderId);
	    model.addAttribute("amount", amount);
	    model.addAttribute("productName", productName);
	    model.addAttribute("productImage", productImage);

	    // 세션에서 제거
	    session.removeAttribute("lastOrderId");
	    session.removeAttribute("lastAmount");
	    session.removeAttribute("lastProductName");
	    session.removeAttribute("lastProductImageUrl");
	    
	    return "/payment/success"; 
	}

	/*
	 * @Override
	 * 
	 * @RequestMapping("/success.do") public String
	 * paymentSuccess(@RequestParam("paymentKey") String paymentKey,
	 * 
	 * @RequestParam("orderId") String orderId,
	 * 
	 * @RequestParam("amount") int amount, Model model) { RestTemplate restTemplate
	 * = new RestTemplate(); HttpHeaders headers = new HttpHeaders();
	 * 
	 * // ✅ Authorization 헤더 직접 추가 String secretKey =
	 * "test_sk_oEjb0gm23PWw9a5qzNK48pGwBJn5"; String encodedAuth =
	 * Base64.getEncoder().encodeToString((secretKey +
	 * ":").getBytes(StandardCharsets.UTF_8)); headers.add("Authorization", "Basic "
	 * + encodedAuth);
	 * 
	 * headers.setContentType(MediaType.APPLICATION_JSON);
	 * 
	 * Map<String, Object> body = new HashMap<>(); body.put("orderId", orderId);
	 * body.put("amount", amount);
	 * 
	 * HttpEntity<Map<String, Object>> request = new HttpEntity<>(body, headers);
	 * 
	 * ResponseEntity<String> response = restTemplate.postForEntity(
	 * "https://api.tosspayments.com/v1/payments/" + paymentKey, request,
	 * String.class);
	 * 
	 * if (response.getStatusCode() == HttpStatus.OK) {
	 * model.addAttribute("message", "결제 성공!"); return "/payment/success"; } else {
	 * model.addAttribute("message", "결제 승인 실패: " + response.getBody()); return
	 * "/payment/fail"; }
	 * 
	 * }
	 */
}