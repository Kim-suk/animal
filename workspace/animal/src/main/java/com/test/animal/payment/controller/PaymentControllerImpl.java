package com.test.animal.payment.controller;

import com.test.animal.payment.dto.PaymentDTO;
import com.test.animal.payment.service.PaymentService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.nio.charset.StandardCharsets;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PaymentControllerImpl implements PaymentController {

	@Autowired
	private PaymentService paymentService;

	private final RestTemplate restTemplate = new RestTemplate();  // 직접 생성하여 사용

	// 1. 결제 준비 요청 (Toss로 요청 → 결제창 리다이렉트)
	@Override
	@RequestMapping("/payment/ready")
	public String preparePayment(@RequestParam("productIds") List<String> productIds,
			@RequestParam("productNames") List<String> productNames,
			@RequestParam("quantities") List<Integer> quantities,
			@RequestParam("prices") List<Integer> prices,
			Model model) {

		// 결제 요청을 위한 데이터를 토스 API로 보내기 위한 준비
		String paymentUrl = "https://api.tosspayments.com/v1/payments/prepare";  // 예시 URL
		// 필요한 파라미터 준비
		Map<String, Object> params = new HashMap<>();
		params.put("productIds", productIds);
		params.put("productNames", productNames);
		params.put("quantities", quantities);
		params.put("prices", prices);

		HttpHeaders headers = new HttpHeaders();
		headers.set("Authorization", "Bearer " + "토스 API 키");

		HttpEntity<Map<String, Object>> entity = new HttpEntity<>(params, headers);

		try {
			ResponseEntity<Map> response = restTemplate.exchange(paymentUrl, HttpMethod.POST, entity, Map.class);
			Map<String, Object> responseBody = response.getBody();
			String paymentUrlFromResponse = (String) responseBody.get("paymentUrl");

			// 결제 URL을 모델에 전달하여 JSP에서 사용
			model.addAttribute("paymentUrl", paymentUrlFromResponse);
			return "paymentPage"; // 결제 페이지로 이동
		} catch (Exception e) {
			e.printStackTrace();
			return "error"; // 오류 페이지로 이동
		}
	}

	// 2. 결제 성공 처리 (승인 요청 + DB 저장)
	@Override
	@RequestMapping("/payment/success")
	public String paymentSuccess(@RequestParam String paymentKey,
			@RequestParam String orderId,
			@RequestParam int amount,
			Model model) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();

		// ✅ Authorization 헤더 직접 추가
		String secretKey = "test_sk_oEjb0gm23PWw9a5qzNK48pGwBJn5";
		String encodedAuth = Base64.getEncoder().encodeToString((secretKey + ":").getBytes(StandardCharsets.UTF_8));
		headers.add("Authorization", "Basic " + encodedAuth);

		headers.setContentType(MediaType.APPLICATION_JSON);

		Map<String, Object> body = new HashMap<>();
		body.put("orderId", orderId);
		body.put("amount", amount);

		HttpEntity<Map<String, Object>> request = new HttpEntity<>(body, headers);

		ResponseEntity<String> response = restTemplate.postForEntity(
				"https://api.tosspayments.com/v1/payments/" + paymentKey, request, String.class);

		if (response.getStatusCode() == HttpStatus.OK) {
			model.addAttribute("message", "결제 성공!");
		} else {
			model.addAttribute("message", "결제 승인 실패: " + response.getBody());
		}

		return "paymentResult";
	}


	// 3. 결제 실패
	@Override
	@RequestMapping("/payment/fail")
	public String paymentFail(@RequestParam("code") String code,
			@RequestParam("message") String message,
			Model model) {
		model.addAttribute("errorCode", code);
		model.addAttribute("errorMessage", message);
		return "payment/fail";
	}

	// 4. 결제 취소
	@Override
	@RequestMapping("/payment/cancel")
	public String paymentCancel(HttpServletRequest request, Model model) {
		String orderNumber = request.getParameter("orderNumber");
		PaymentDTO paymentDTO = paymentService.getPaymentByOrderNumber(orderNumber);

		if (paymentDTO != null) {
			paymentService.updatePaymentStatus(orderNumber, "CANCELLED");
			model.addAttribute("message", "결제가 취소되었습니다.");
			return "payment/paymentCancel";
		} else {
			model.addAttribute("errorMessage", "결제 정보를 찾을 수 없습니다.");
			return "payment/paymentFail";
		}
	}

	// 5. 결제 내역 조회
	@Override
	@RequestMapping("/payment/history")
	public String paymentHistory(HttpServletRequest request, Model model) {
		String userId = request.getParameter("userId");
		List<PaymentDTO> paymentHistory = paymentService.getPaymentsByUserId(userId);

		if (paymentHistory != null && !paymentHistory.isEmpty()) {
			model.addAttribute("paymentHistory", paymentHistory);
			return "payment/paymentHistory";
		} else {
			model.addAttribute("message", "결제 내역이 없습니다.");
			return "payment/paymentHistory";
		}
	}
}
