package com.codemasters.project.dto;

public class CartItemDTO{
	
	private int cart_number;
    private int book_number;
    private int member_number;
    private int amount;
    private String book_name;
    private int book_price;
    private String book_img;
	public int getCart_number() {
		return cart_number;
	}
	public void setCart_number(int cart_number) {
		this.cart_number = cart_number;
	}
	public int getBook_number() {
		return book_number;
	}
	public void setBook_number(int book_number) {
		this.book_number = book_number;
	}
	public int getMember_number() {
		return member_number;
	}
	public void setMember_number(int member_number) {
		this.member_number = member_number;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public String getBook_img() {
		return book_img;
	}
	public void setBook_img(String book_img) {
		this.book_img = book_img;
	}
	@Override
	public String toString() {
		return "CartItemDTO [cart_number=" + cart_number + ", book_number=" + book_number + ", member_number="
				+ member_number + ", amount=" + amount + ", book_name=" + book_name + ", book_price=" + book_price
				+ ", book_img=" + book_img + "]";
	}

    
    

	
}
