package com.kh.TAT.common.model.vo;

import java.sql.Date;

public class Member {
	private String m_code;
	private String m_email;
	private String m_pwd;
	private String m_name;
	private Date m_birth;
	private String m_gender;
	private Date enroll_date;
	private String is_usable;
	
	public Member() {
		super();
	}
	public Member(String m_code, String m_email, String m_pwd, String m_name, Date m_birth, String m_gender,
			Date enroll_date, String is_usable) {
		super();
		this.m_code = m_code;
		this.m_email = m_email;
		this.m_pwd = m_pwd;
		this.m_name = m_name;
		this.m_birth = m_birth;
		this.m_gender = m_gender;
		this.enroll_date = enroll_date;
		this.is_usable = is_usable;
	}
	
	public String getM_code() {
		return m_code;
	}
	public void setM_code(String m_code) {
		this.m_code = m_code;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_pwd() {
		return m_pwd;
	}
	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public Date getM_birth() {
		return m_birth;
	}
	public void setM_birth(Date m_birth) {
		this.m_birth = m_birth;
	}
	public String getM_gender() {
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public Date getEnroll_date() {
		return enroll_date;
	}
	public void setEnroll_date(Date enroll_date) {
		this.enroll_date = enroll_date;
	}
	public String getIs_usable() {
		return is_usable;
	}
	public void setIs_usable(String is_usable) {
		this.is_usable = is_usable;
	}
	@Override
	public String toString() {
		return "Member [m_code=" + m_code + ", m_email=" + m_email + ", m_pwd=" + m_pwd + ", m_name=" + m_name
				+ ", m_birth=" + m_birth + ", m_gender=" + m_gender + ", enroll_date=" + enroll_date + ", is_usable="
				+ is_usable + "]";
	}
	
	
}
