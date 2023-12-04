package com.codemasters.project.dto;

import java.sql.Date;
import java.util.List;

public class InquiryDTO {
	
	private int inquiry_number;
	private String inquiry_detail;
	private Date inquiry_date;
	private String answer_detail;
	private Date answer_date;
	private int member_number;
	
	private List nameList;
	private int startNum;
	private int endNum;	
	
	
	public int getInquiry_number() {
		return inquiry_number;
	}
	public void setInquiry_number(int inquiry_number) {
		this.inquiry_number = inquiry_number;
	}
	public String getInquiry_detail() {
		return inquiry_detail;
	}
	public void setInquiry_detail(String inquiry_detail) {
		this.inquiry_detail = inquiry_detail;
	}
	public Date getInquiry_date() {
		return inquiry_date;
	}
	public void setInquiry_date(Date inquiry_date) {
		this.inquiry_date = inquiry_date;
	}
	public String getAnswer_detail() {
		return answer_detail;
	}
	public void setAnswer_detail(String answer_detail) {
		this.answer_detail = answer_detail;
	}
	public Date getAnswer_date() {
		return answer_date;
	}
	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}
	public int getMember_number() {
		return member_number;
	}
	public void setMember_number(int member_number) {
		this.member_number = member_number;
	}
	@Override
	public String toString() {
		return "InquiryDTO [inquiry_number=" + inquiry_number + ", inquiry_detail=" + inquiry_detail + ", inquiry_date="
				+ inquiry_date + ", answer_detail=" + answer_detail + ", answer_date=" + answer_date
				+ ", member_number=" + member_number + "]";
	}

	
	
}
