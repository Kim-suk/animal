package com.test.animal.payment.service;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.test.animal.payment.dao.PaymentDAO;
import com.test.animal.payment.dto.PaymentDTO;
import com.test.animal.payment.dto.PaymentDetailDTO;

import java.util.Base64;
import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService {

	/*
	 * @Autowired private PaymentDAO paymentDAO;
	 * 
	 * @Autowired private RestTemplate restTemplate;
	 * 
	 * private static final String TOSS_API_KEY = "YOUR_TOSS_SECRET_KEY"; // ✅ 토스
	 * Secret Key private static final String TOSS_API_URL =
	 * "https://api.tosspayments.com/v1/payments";
	 * 
	 * // 결제 준비 - 클라이언트로 리디렉션 URL 반환
	 * 
	 * @Override public String preparePayment(HttpServletRequest request) throws
	 * Exception { String orderId = "order-" + System.currentTimeMillis(); String
	 * amount = request.getParameter("amount"); String customerName =
	 * request.getParameter("name");
	 * 
	 * JSONObject params = new JSONObject(); params.put("amount", amount);
	 * params.put("orderId", orderId); params.put("orderName", "AnimalStore 결제");
	 * params.put("customerName", customerName); params.put("successUrl",
	 * "http://localhost:8080/yourapp/payment/success.do"); params.put("failUrl",
	 * "http://localhost:8080/yourapp/payment/fail.do");
	 * 
	 * // 👉 인증 헤더 수동으로 설정 String encodedKey =
	 * Base64.getEncoder().encodeToString((TOSS_API_KEY + ":").getBytes());
	 * 
	 * HttpHeaders headers = new HttpHeaders(); headers.set("Authorization",
	 * "Basic " + encodedKey); headers.setContentType(MediaType.APPLICATION_JSON);
	 * 
	 * HttpEntity<String> entity = new HttpEntity<>(params.toString(), headers);
	 * ResponseEntity<String> response = restTemplate.postForEntity(TOSS_API_URL +
	 * "/prepare", entity, String.class);
	 * 
	 * JSONObject json = new JSONObject(response.getBody()); String paymentUrl =
	 * json.getString("nextRedirectPcUrl");
	 * 
	 * return "redirect:" + paymentUrl; }
	 * 
	 * // 결제 성공 시 처리
	 * 
	 * @Override public String handleSuccess(HttpServletRequest request) throws
	 * Exception { String paymentKey = request.getParameter("paymentKey"); String
	 * orderId = request.getParameter("orderId"); String amount =
	 * request.getParameter("amount");
	 * 
	 * JSONObject body = new JSONObject(); body.put("orderId", orderId);
	 * body.put("amount", amount); body.put("paymentKey", paymentKey);
	 * 
	 * // 👉 인증 헤더 String encodedKey =
	 * Base64.getEncoder().encodeToString((TOSS_API_KEY + ":").getBytes());
	 * 
	 * HttpHeaders headers = new HttpHeaders(); headers.set("Authorization",
	 * "Basic " + encodedKey); headers.setContentType(MediaType.APPLICATION_JSON);
	 * 
	 * HttpEntity<String> entity = new HttpEntity<>(body.toString(), headers);
	 * ResponseEntity<String> response = restTemplate.postForEntity(TOSS_API_URL +
	 * "/confirm", entity, String.class);
	 * 
	 * // DB 저장 JSONObject json = new JSONObject(response.getBody()); PaymentDTO dto
	 * = new PaymentDTO(); dto.setOrderId(orderId);
	 * dto.setAmount(Integer.parseInt(amount)); dto.setPaymentKey(paymentKey);
	 * dto.setCustomerName(json.getString("customerName"));
	 * 
	 * paymentDAO.insertPayment(dto);
	 * 
	 * return "/payment/success.jsp"; }
	 */

	 @Autowired
	    private PaymentDAO paymentDAO;

	    @Override
	    public int insertPayment(PaymentDTO paymentDTO) {
	        return paymentDAO.insertPayment(paymentDTO);
	    }

	    @Override
	    public int updatePaymentStatus(String orderNumber, String status) {
	        return paymentDAO.updatePaymentStatus(orderNumber, status);
	    }

	    @Override
	    public PaymentDTO getPaymentByOrderNumber(String orderNumber) {
	        return paymentDAO.getPaymentByOrderNumber(orderNumber);
	    }

	    @Override
	    public List<PaymentDTO> getPaymentsByUserId(String userId) {
	        return paymentDAO.getPaymentsByUserId(userId);
	    }
	    
}
