package com.kh.TAT.myPage.model.vo;

import java.sql.Date;

public class MyProject {

	private String e_code;
	private String m_code;
	private String proj_name;
	private String proj_comment;
	private Date save_date;
	private int comment_count;
	
	public MyProject() {}

	public MyProject(String e_code, String m_code, String proj_name, String proj_comment, Date save_date,
			int comment_count) {
		super();
		this.e_code = e_code;
		this.m_code = m_code;
		this.proj_name = proj_name;
		this.proj_comment = proj_comment;
		this.save_date = save_date;
		this.comment_count = comment_count;
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

	public String getProj_name() {
		return proj_name;
	}

	public void setProj_name(String proj_name) {
		this.proj_name = proj_name;
	}

	public String getProj_comment() {
		return proj_comment;
	}

	public void setProj_comment(String proj_comment) {
		this.proj_comment = proj_comment;
	}

	public Date getSave_date() {
		return save_date;
	}

	public void setSave_date(Date save_date) {
		this.save_date = save_date;
	}

	public int getComment_count() {
		return comment_count;
	}

	public void setComment_count(int comment_count) {
		this.comment_count = comment_count;
	}

	@Override
	public String toString() {
		return "MyProject [e_code=" + e_code + ", m_code=" + m_code + ", proj_name=" + proj_name + ", proj_comment="
				+ proj_comment + ", save_date=" + save_date + ", comment_count=" + comment_count + "]";
	}
	
	
}
