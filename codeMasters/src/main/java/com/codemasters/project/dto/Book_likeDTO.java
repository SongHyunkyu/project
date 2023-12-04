package com.codemasters.project.dto;

public class Book_likeDTO {

	private int like_number;
	private int book_number;
	private int member_number;
	
	public int getLike_number() {
		return like_number;
	}
	public void setLike_number(int like_number) {
		this.like_number = like_number;
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

	@Override
	public String toString() {
		return "Book_likeDTO [like_number=" + like_number + ", book_number=" + book_number + ", member_number="
				+ member_number + "]";
	}
	
	
}
