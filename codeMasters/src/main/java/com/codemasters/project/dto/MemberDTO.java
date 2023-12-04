package com.codemasters.project.dto;

import java.sql.Date;
import java.time.LocalDateTime;
import java.util.List;

public class MemberDTO {
	private int member_number; // 회원 번호
    private String mid; // 아이디
    private String mpw; // 비밀번호
    private String mname; // 이름
    private Date birthday; // 생년월일
    private String gender; // 성별
    private String email; // 이메일
    private String phone_number; // 전화번호
    private Date join_date; // 가입일
    private int member_grade; // 회원 등급 (0: 정지, 1: 일반회원, 2: 관리자)
    private String password_question; // 비밀번호 질문
    private String password_answer; // 비밀번호 답변
    
	private List nameList;
	private int startNum;
	private int endNum;
	
    
    public int getMember_number() {
		return member_number;
	}
	public void setMember_number(int member_number) {
		this.member_number = member_number;
	}
    
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date date) {
		this.join_date = date;
	}
	public int getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(int member_grade) {
		this.member_grade = member_grade;
	}
	public String getPassword_question() {
		return password_question;
	}
	public void setPassword_question(String password_question) {
		this.password_question = password_question;
	}
	public String getPassword_answer() {
		return password_answer;
	}
	public void setPassword_answer(String password_answer) {
		this.password_answer = password_answer;
	}
	@Override
	public String toString() {
		return "MemberDTO [member_number=" + member_number + ", mid=" + mid + ", mpw=" + mpw + ", mname=" + mname
				+ ", birthday=" + birthday + ", gender=" + gender + ", email=" + email + ", phone_number="
				+ phone_number + ", join_date=" + join_date + ", member_grade=" + member_grade + ", password_question="
				+ password_question + ", password_answer=" + password_answer + "]";
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
