package com.kh.TAT.common.model.vo;

import java.sql.Date;

public class TemplateReplyBoard {
	private int tr_num;
	private String t_code;
	private String m_code;
	private String tr_reply;
	private Date tr_date;
	private int tr_rate;
	
	public TemplateReplyBoard() {
		super();
	}

	public TemplateReplyBoard(int tr_num, String t_code, String m_code, String tr_reply, Date tr_date, int tr_rate) {
		super();
		this.tr_num = tr_num;
		this.t_code = t_code;
		this.m_code = m_code;
		this.tr_reply = tr_reply;
		this.tr_date = tr_date;
		this.tr_rate = tr_rate;
	}

	public int getTr_num() {
		return tr_num;
	}

	public void setTr_num(int tr_num) {
		this.tr_num = tr_num;
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

	
}
