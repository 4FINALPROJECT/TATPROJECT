package com.kh.TAT.common.model.vo;

import java.sql.Date;

public class TemplateReplyBoard {
	private String t_code;
	private String m_code;
	private String tr_reply;
	private Date tr_date;
	private int tr_rate;
	private int tr_no;
	
	public TemplateReplyBoard() {
		super();
	}

	public TemplateReplyBoard(String t_code, String m_code, String tr_reply, Date tr_date, int tr_rate, int tr_no) {
		super();
		this.t_code = t_code;
		this.m_code = m_code;
		this.tr_reply = tr_reply;
		this.tr_date = tr_date;
		this.tr_rate = tr_rate;
		this.tr_no = tr_no;
	}

	public String getT_code() {
		return t_code;
	}

	public void setT_code(String t_code) {
		this.t_code = t_code;
	}

	public String getM_code() {
		return m_code;
	}

	public void setM_code(String m_code) {
		this.m_code = m_code;
	}

	public String getTr_reply() {
		return tr_reply;
	}

	public void setTr_reply(String tr_reply) {
		this.tr_reply = tr_reply;
	}

	public Date getTr_date() {
		return tr_date;
	}

	public void setTr_date(Date tr_date) {
		this.tr_date = tr_date;
	}

	public int getTr_rate() {
		return tr_rate;
	}

	public void setTr_rate(int tr_rate) {
		this.tr_rate = tr_rate;
	}

	public int getTr_no() {
		return tr_no;
	}

	public void setTr_no(int tr_no) {
		this.tr_no = tr_no;
	}

	@Override
	public String toString() {
		return "TemplateReplyBoard [t_code=" + t_code + ", m_code=" + m_code + ", tr_reply=" + tr_reply + ", tr_date="
				+ tr_date + ", tr_rate=" + tr_rate + ", tr_no=" + tr_no + "]";
	}
	
	
	
}
