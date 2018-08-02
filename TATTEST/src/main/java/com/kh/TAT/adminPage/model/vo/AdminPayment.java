package com.kh.TAT.adminPage.model.vo;

import java.sql.Date;

public class AdminPayment {
	private String m_code;
	private String p_code;
	private Date p_date;
	private Date v_date;
	private String m_name;

	public AdminPayment() {
		super();
	}
	
	public AdminPayment(String m_code, String p_code, Date p_date, Date v_date) {
		super();
		this.m_code = m_code;
		this.p_code = p_code;
		this.p_date = p_date;
		this.v_date = v_date;
	}
	
	public String getM_code() {
		return m_code;
	}
	public void setM_code(String m_code) {
		this.m_code = m_code;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	public Date getV_date() {
		return v_date;
	}
	public void setV_date(Date v_date) {
		this.v_date = v_date;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	@Override
	public String toString() {
		return "Payment [m_code=" + m_code + ", p_code=" + p_code + ", p_date=" + p_date + ", v_date=" + v_date
				+ ", m_name=" + m_name + "]";
	}
	
	
}
