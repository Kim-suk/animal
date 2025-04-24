package com.test.animal.payment.dto;

import java.sql.Date;

public class PaymentDTO {
	
	/*
	 * private String paymentId; private String memberId; private double
	 * totalAmount; private Date paymentDate; // 결제 시간 추가
	 */    
	
	private String paymentKey;
    private String orderId;
    private String memberId;
    private int amount;
    
	public String getPaymentKey() {
		return paymentKey;
	}
	public void setPaymentKey(String paymentKey) {
		this.paymentKey = paymentKey;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
    
}