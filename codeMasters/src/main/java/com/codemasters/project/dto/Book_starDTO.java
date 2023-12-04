package com.codemasters.project.dto;

public class Book_starDTO {
	private int star_number;
	private int comments_number;
	private int book_number;
	private int member_number;
	private int star_count;
	
	
	public int getStar_number() {
		return star_number;
	}
	public void setStar_number(int star_number) {
		this.star_number = star_number;
	}
	public int getComments_number() {
		return comments_number;
	}
	public void setComments_number(int comments_number) {
		this.comments_number = comments_number;
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
	public int getStar_count() {
		return star_count;
	}
	public void setStar_count(int star_count) {
		this.star_count = star_count;
	}
	
	@Override
	public String toString() {
		return "Book_starDTO [star_number=" + star_number + ", comments_number=" + comments_number + ", book_number="
				+ book_number + ", member_number=" + member_number + ", star_count=" + star_count + "]";
	}
	
	
	
	
}
