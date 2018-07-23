package com.kh.TAT.common.model.vo;

import java.sql.Date;

public class EditReplyBoard {
	private String e_code;
	private String m_code;
	private String er_reply;
	private Date er_date;
	private int er_rate;
	
	public EditReplyBoard() {
		super();
	}
	public EditReplyBoard(String e_code, String m_code, String er_reply, Date er_date, int er_rate) {
		super();
		this.e_code = e_code;
		this.m_code = m_code;
		this.er_reply = er_reply;
		this.er_date = er_date;
		this.er_rate = er_rate;
	}
	public String getE_code() {
		return e_code;
	}
	public void setE_code(String e_code) {
		this.e_code = e_code;
	}
	public String getM_code() {
		return m_code;
	}
	public void setM_code(String m_code) {
		this.m_code = m_code;
	}
	public String getEr_reply() {
		return er_reply;
	}
	public void setEr_reply(String er_reply) {
		this.er_reply = er_reply;
	}
	public Date getEr_date() {
		return er_date;
	}
	public void setEr_date(Date er_date) {
		this.er_date = er_date;
	}
	public int getEr_rate() {
		return er_rate;
	}
	public void setEr_rate(int er_rate) {
		this.er_rate = er_rate;
	}
}
