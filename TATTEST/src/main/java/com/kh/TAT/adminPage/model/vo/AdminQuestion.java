package com.kh.TAT.adminPage.model.vo;

import java.sql.Date;

public class AdminQuestion {
	
	private String qa_num;
	private String m_name;
	private String qc_name;
	private String qa_title;
	private String qa_content;
	private Date qa_date;
	private String a_content;
	private Date a_date;
	public AdminQuestion() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminQuestion(String qa_num, String m_name, String qc_name, String qa_title, String qa_content, Date qa_date,
			String a_content, Date a_date) {
		super();
		this.qa_num = qa_num;
		this.m_name = m_name;
		this.qc_name = qc_name;
		this.qa_title = qa_title;
		this.qa_content = qa_content;
		this.qa_date = qa_date;
		this.a_content = a_content;
		this.a_date = a_date;
	}
	public String getQa_num() {
		return qa_num;
	}
	public void setQa_num(String qa_num) {
		this.qa_num = qa_num;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getQc_name() {
		return qc_name;
	}
	public void setQc_name(String qc_name) {
		this.qc_name = qc_name;
	}
	public String getQa_title() {
		return qa_title;
	}
	public void setQa_title(String qa_title) {
		this.qa_title = qa_title;
	}
	public String getQa_content() {
		return qa_content;
	}
	public void setQa_content(String qa_content) {
		this.qa_content = qa_content;
	}
	public Date getQa_date() {
		return qa_date;
	}
	public void setQa_date(Date qa_date) {
		this.qa_date = qa_date;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String admin_content) {
		this.a_content = admin_content;
	}
	public Date getA_date() {
		return a_date;
	}
	public void setA_date(Date a_date) {
		this.a_date = a_date;
	}
	@Override
	public String toString() {
		return "AdminQuestion [qa_num=" + qa_num + ", m_name=" + m_name + ", qc_name=" + qc_name + ", qa_title="
				+ qa_title + ", qa_content=" + qa_content + ", qa_date=" + qa_date + ", a_content=" + a_content
				+ ", a_date=" + a_date + "]";
	}
	
	
	

}
