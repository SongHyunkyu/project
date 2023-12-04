package com.codemasters.project.dto;

import java.sql.Date;
import java.util.List;

public class BookDTO {
	
	private int book_number;
	private String book_name;
	private int book_price;
	private String book_img;
	private Date publication_date;
	private String author;
	private String translator;
	private String publisher;
	private String book_detail;
	
	private int like_count;
	private int star_count;
	private int star_sum;
	
	private List nameList;
	private int startNum;
	private int endNum;
	
	
	public int getBook_number() {
		return book_number;
	}
	public void setBook_number(int book_number) {
		this.book_number = book_number;
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
	public Date getPublication_date() {
		return publication_date;
	}
	public void setPublication_date(Date publication_date) {
		this.publication_date = publication_date;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTranslator() {
		return translator;
	}
	public void setTranslator(String translator) {
		this.translator = translator;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getBook_detail() {
		return book_detail;
	}
	public void setBook_detail(String book_detail) {
		this.book_detail = book_detail;
	}
	public List getNameList() {
		return nameList;
	}
	public void setNameList(List nameList) {
		this.nameList = nameList;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	public int getLike_count() {
		return like_count;
	}
	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}
	public int getStar_count() {
		return star_count;
	}
	public void setStar_count(int star_count) {
		this.star_count = star_count;
	}
	public int getStar_sum() {
		return star_sum;
	}
	public void setStar_sum(int star_sum) {
		this.star_sum = star_sum;
	}
	@Override
	public String toString() {
		return "BookDTO [book_number=" + book_number + ", book_name=" + book_name + ", book_price=" + book_price
				+ ", book_img=" + book_img + ", publication_date=" + publication_date + ", author=" + author
				+ ", translator=" + translator + ", publisher=" + publisher + ", book_detail=" + book_detail
				+ ", like_count=" + like_count + ", star_count=" + star_count + ", star_sum=" + star_sum + ", nameList="
				+ nameList + ", startNum=" + startNum + ", endNum=" + endNum + "]";
	}

}
