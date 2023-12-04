package com.codemasters.project.dto;

import java.sql.Date;
import java.util.List;

public class NoticeDTO {
	
	private int notice_number;
	private String notice_name;
	private String notice_detail;
	private Date notice_date;
	
	private List nameList;
	private int startNum;
	private int endNum;
	
	public int getNotice_number() {
		return notice_number;
	}
	public void setNotice_number(int notice_number) {
		this.notice_number = notice_number;
	}
	public String getNotice_name() {
		return notice_name;
	}
	public void setNotice_name(String notice_name) {
		this.notice_name = notice_name;
	}
	public String getNotice_detail() {
		return notice_detail;
	}
	public void setNotice_detail(String notice_detail) {
		this.notice_detail = notice_detail;
	}
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	
	
	@Override
	public String toString() {
		return "NoticeDTO [notice_number=" + notice_number + ", notice_name=" + notice_name + ", notice_detail="
				+ notice_detail + ", notice_date=" + notice_date + "]";
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
	
	

}
