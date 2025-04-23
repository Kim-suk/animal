package com.test.animal.payment.dto;

import java.sql.Date;

public class PaymentDTO {
	
    private String paymentId;
    private String memberId;
    private double totalAmount;
    private Date paymentDate;  
    private String paymentstatus;  
    
	public String getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public double getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
	/**
	 * @return the paymentstatus
	 */
	public String getPaymentstatus() {
		return paymentstatus;
	}
	/**
	 * @param paymentstatus the paymentstatus to set
	 */
	public void setPaymentstatus(String paymentstatus) {
		this.paymentstatus = paymentstatus;
	}
    
}