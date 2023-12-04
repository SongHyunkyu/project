package com.codemasters.project.dto;

import java.sql.Date;
import java.util.List;

public class EventDTO {
	
	private int event_number;
	private String event_name;
	private String event_detail;
	private String event_img;
	private Date event_period_start;
	private Date event_period_end;
	private Date event_date;
	
	private List nameList;
	private int startNum;
	private int endNum;
	
	public int getEvent_number() {
		return event_number;
	}
	public void setEvent_number(int event_number) {
		this.event_number = event_number;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getEvent_detail() {
		return event_detail;
	}
	public void setEvent_detail(String event_detail) {
		this.event_detail = event_detail;
	}
	public String getEvent_img() {
		return event_img;
	}
	public void setEvent_img(String event_img) {
		this.event_img = event_img;
	}
	public Date getEvent_period_start() {
		return event_period_start;
	}
	public void setEvent_period_start(Date event_period_start) {
		this.event_period_start = event_period_start;
	}
	public Date getEvent_period_end() {
		return event_period_end;
	}
	public void setEvent_period_end(Date event_period_end) {
		this.event_period_end = event_period_end;
	}
	public Date getEvent_date() {
		return event_date;
	}
	public void setEvent_date(Date event_date) {
		this.event_date = event_date;
	}
	@Override
	public String toString() {
		return "EventDTO [event_number=" + event_number + ", event_name=" + event_name + ", event_detail="
				+ event_detail + ", event_img=" + event_img + ", event_period_start=" + event_period_start
				+ ", event_period_end=" + event_period_end + ", event_date=" + event_date + "]";
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
