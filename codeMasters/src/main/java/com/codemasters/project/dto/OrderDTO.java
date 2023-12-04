package com.codemasters.project.dto;


import java.sql.Date;
import java.util.List;

public class OrderDTO {

	private int purchase_number; // 구매 번호
	private int total; // 총구매액
	private String shipping; // 배송지
	private String purchase_name; // 주문자 이름
	private String purchase_phone; // 주문자 전화번호
	private String payment; // 결제방법
	private Date purchase_date; // 구매일자
	
	private int member_number; // 회원 번호
	private Integer book_number; // 책 번호
	private Integer cart_number; // 장바구니 번호
	
	public int getPurchase_number() {
		return purchase_number;
	}
	public void setPurchase_number(int purchase_number) {
		this.purchase_number = purchase_number;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getShipping() {
		return shipping;
	}
	public void setShipping(String shipping) {
		this.shipping = shipping;
	}
	public String getPurchase_name() {
		return purchase_name;
	}
	public void setPurchase_name(String purchase_name) {
		this.purchase_name = purchase_name;
	}
	public String getPurchase_phone() {
		return purchase_phone;
	}
	public void setPurchase_phone(String purchase_phone) {
		this.purchase_phone = purchase_phone;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public Date getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(Date purchase_date) {
		this.purchase_date = purchase_date;
	}
	public int getMember_number() {
		return member_number;
	}
	public void setMember_number(int member_number) {
		this.member_number = member_number;
	}
	public Integer getBook_number() {
		return book_number;
	}
	public void setBook_number(Integer integer) {
		this.book_number = integer;
	}
	public Integer getCart_number() {
		return cart_number;
	}
	public void setCart_number(Integer integer) {
		this.cart_number = integer;
	}
	@Override
	public String toString() {
		return "OrderDTO [purchase_number=" + purchase_number + ", total=" + total + ", shipping=" + shipping
				+ ", purchase_name=" + purchase_name + ", purchase_phone=" + purchase_phone + ", payment=" + payment
				+ ", purchase_date=" + purchase_date + ", member_number=" + member_number + ", book_number="
				+ book_number + ", cart_number=" + cart_number + "]";
	}

}
