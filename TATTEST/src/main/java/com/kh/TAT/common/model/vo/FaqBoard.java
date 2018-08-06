package com.kh.TAT.common.model.vo;

import java.sql.Date;

public class FaqBoard {
	private int faq_num;
	private String m_code;
	private String qc_code;
	private String qc_name;
	private String faq_question;
	private String faq_answer;
	private Date faq_date;
	
	
	public FaqBoard() {
		super();
	}
	public FaqBoard(int faq_num, String m_code, String qc_code,String qc_name, String faq_question, String faq_answer, Date faq_date) {
		super();
		this.faq_num = faq_num;
		this.m_code = m_code;
		this.qc_code = qc_code;
		this.qc_name = qc_name;
		this.faq_question = faq_question;
		this.faq_answer = faq_answer;
		this.faq_date = faq_date;
	}
	
	public FaqBoard(String qc_code, String faq_question, String faq_answer) {
		super();
		this.qc_code = qc_code;
		this.faq_question = faq_question;
		this.faq_answer = faq_answer;
	}
	public int getFaq_num() {
		return faq_num;
	}
	public void setFaq_num(int faq_num) {
		this.faq_num = faq_num;
	}
	public String getM_code() {
		return m_code;
	}
	public void setM_code(String m_code) {
		this.m_code = m_code;
	}
	public String getQc_code() {
		return qc_code;
	}
	public void setQc_code(String qc_code) {
		this.qc_code = qc_code;
	}
	public String getQc_name() {
		return qc_name;
	}
	public void setQc_name(String qc_name) {
		this.qc_name = qc_name;
	}
	public String getFaq_question() {
		return faq_question;
	}
	public void setFaq_question(String faq_question) {
		this.faq_question = faq_question;
	}
	public String getFaq_answer() {
		return faq_answer;
	}
	public void setFaq_answer(String faq_answer) {
		this.faq_answer = faq_answer;
	}
	public Date getFaq_date() {
		return faq_date;
	}
	public void setFaq_date(Date faq_date) {
		this.faq_date = faq_date;
	}
	@Override
	public String toString() {
		return "FaqBoard [faq_num=" + faq_num + ", m_code=" + m_code + ", qc_code=" + qc_code + ", faq_question="
				+ faq_question + ", faq_answer=" + faq_answer + ", faq_date=" + faq_date + "]";
	}
	
	
}
