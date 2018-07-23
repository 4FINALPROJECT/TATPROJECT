package com.kh.TAT.common.model.vo;

import java.sql.Date;

public class Template {
	private String t_code;
	private String m_code;
	private String t_category;
	private String file_name;
	private Date t_date;
	private int t_use_count;
	
	public Template() {
		super();
	}
	public Template(String t_code, String m_code, String t_category, String file_name, Date t_date, int t_use_count) {
		super();
		this.t_code = t_code;
		this.m_code = m_code;
		this.t_category = t_category;
		this.file_name = file_name;
		this.t_date = t_date;
		this.t_use_count = t_use_count;
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
	public String getT_category() {
		return t_category;
	}
	public void setT_category(String t_category) {
		this.t_category = t_category;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public Date getT_date() {
		return t_date;
	}
	public void setT_date(Date t_date) {
		this.t_date = t_date;
	}
	public int getT_use_count() {
		return t_use_count;
	}
	public void setT_use_count(int t_use_count) {
		this.t_use_count = t_use_count;
	}
}
