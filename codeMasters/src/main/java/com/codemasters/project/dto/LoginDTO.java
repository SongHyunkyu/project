package com.codemasters.project.dto;

public class LoginDTO {
	private String mid; // ���̵�
	private String mpw; // ��й�ȣ

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

	@Override
	public String toString() {
	    return "LoginDTO [mid=" + mid + ", mpw=" + mpw + "]";
	}
}
