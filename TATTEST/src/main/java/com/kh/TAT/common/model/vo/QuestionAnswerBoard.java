package com.kh.TAT.common.model.vo;

import java.sql.Date;

public class QuestionAnswerBoard {
	private int qa_num;
	private String m_code;
	private String qc_code;
	private String qa_title;
	private String qa_content;
	private Date qa_date;
	private String is_open;
	private String admin_code;
	private String a_content;
	private Date a_date;
	
	public QuestionAnswerBoard() {
		super();
	}
	public QuestionAnswerBoard(int qa_num, String m_code, String qc_code, String qa_title, String qa_content,
			Date qa_date, String is_open, String admin_code, String a_content, Date a_date) {
		super();
		this.qa_num = qa_num;
		this.m_code = m_code;
		this.qc_code = qc_code;
		this.qa_title = qa_title;
		this.qa_content = qa_content;
		this.qa_date = qa_date;
		this.is_open = is_open;
		this.admin_code = admin_code;
		this.a_content = a_content;
		this.a_date = a_date;
	}
	public int getQa_num() {
		return qa_num;
	}
	public void setQa_num(int qa_num) {
		this.qa_num = qa_num;
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
	public String getIs_open() {
		return is_open;
	}
	public void setIs_open(String is_open) {
		this.is_open = is_open;
	}
	public String getAdmin_code() {
		return admin_code;
	}
	public void setAdmin_code(String admin_code) {
		this.admin_code = admin_code;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
	public Date getA_date() {
		return a_date;
	}
	public void setA_date(Date a_date) {
		this.a_date = a_date;
	}
}
