//package com.test.animal.payment.service;
//
//import java.io.BufferedReader;
//import java.io.InputStreamReader;
//import java.io.OutputStream;
//import java.net.HttpURLConnection;
//import java.net.URL;
//import java.util.Base64;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.test.animal.payment.dao.PaymentDAO;
//import com.test.animal.payment.dto.PaymentDTO;
//
//@Service
//public class PaymentServiceImpl implements PaymentService {
//
//    @Autowired
//    private PaymentDAO paymentDAO;
//
//    @Override
//    public void savePayment(PaymentDTO payment) {
//        paymentDAO.insertPayment(payment);
//    }
//
//    @Override
//    public PaymentDTO getPaymentByOrderId(String orderId) {
//        return paymentDAO.selectPaymentByOrderId(orderId);
//    }
//
//    @Override
//    public PaymentDTO getPaymentByCustomerEmail(String customerEmail) {
//        return paymentDAO.selectPaymentByCustomerEmail(customerEmail);
//    }
//
//    @Override
//    public String requestPayment(PaymentDTO dto) {
//        String secretKey = "test_sk_d46qopOB89PWDppAnMaorZmM75y0"; // Toss 테스트 시크릿 키
//        String apiUrl = "https://api.tosspayments.com/v1/payments";
//
//        try {
//            URL url = new URL(apiUrl);
//            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//            conn.setRequestMethod("POST");
//            conn.setDoOutput(true);
//
//            // 인증 헤더 설정
//            String encodedKey = Base64.getEncoder().encodeToString((secretKey + ":").getBytes("UTF-8"));
//            conn.setRequestProperty("Authorization", "Basic " + encodedKey);
//            conn.setRequestProperty("Content-Type", "application/json");
//
//            // 요청 본문 생성
//            String jsonInputString = "{"
//                    + "\"amount\":\"" + dto.getAmount() + "\","
//                    + "\"orderId\":\"" + dto.getOrderId() + "\","
//                    + "\"orderName\":\"" + dto.getOrderName() + "\","
//                    + "\"customerName\":\"" + dto.getCustomerName() + "\","
//                    + "\"successUrl\":\"" + dto.getReturnUrl() + "/success\","
//                    + "\"failUrl\":\"" + dto.getReturnUrl() + "/fail\""
//                    + "}";
//
//            try (OutputStream os = conn.getOutputStream()) {
//                byte[] input = jsonInputString.getBytes("utf-8");
//                os.write(input, 0, input.length);
//            }
//
//            int responseCode = conn.getResponseCode();
//            BufferedReader br = new BufferedReader(new InputStreamReader(
//                    responseCode == 200 ? conn.getInputStream() : conn.getErrorStream(), "utf-8"));
//
//            StringBuilder response = new StringBuilder();
//            String responseLine;
//
//            while ((responseLine = br.readLine()) != null) {
//                response.append(responseLine.trim());
//            }
//
//            return response.toString();
//
//        } catch (Exception e) {
//            e.printStackTrace();
//            return "{\"error\":\"결제 요청 중 오류 발생\"}";
//        }
//    }
//
//}
