package com.kh.TAT.myPage.model.vo;

import java.sql.Date;

public class MyEditDetail {
	private String e_code;
	private String m_code;
	private String proj_name;
	private String proj_comment;
	private Date save_date;
	private String is_share;
	private int e_use_count;
	private int er_num;
	private String er_reply;
	private Date er_date;
	private int er_rate;
	public MyEditDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MyEditDetail(String e_code, String m_code, String proj_name, String proj_comment, Date save_date,
			String is_share, int e_use_count, int er_num, String er_reply, Date er_date, int er_rate) {
		super();
		this.e_code = e_code;
		this.m_code = m_code;
		this.proj_name = proj_name;
		this.proj_comment = proj_comment;
		this.save_date = save_date;
		this.is_share = is_share;
		this.e_use_count = e_use_count;
		this.er_num = er_num;
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
	public String getIs_share() {
		return is_share;
	}
	public void setIs_share(String is_share) {
		this.is_share = is_share;
	}
	public int getE_use_count() {
		return e_use_count;
	}
	public void setE_use_count(int e_use_count) {
		this.e_use_count = e_use_count;
	}
	public int getEr_num() {
		return er_num;
	}
	public void setEr_num(int er_num) {
		this.er_num = er_num;
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
