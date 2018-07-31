package com.kh.TAT.myPage.model.vo;

import java.sql.Date;

import com.kh.TAT.common.model.vo.Payment;

public class MyPayment extends Payment{
 
	private String p_name;
	private int e_date;
	
	public MyPayment() {
		super();
	
	}
	
	public MyPayment(String m_code, String p_code, Date p_date, Date v_date,String p_name, int e_date){
		super(m_code, p_code, p_date, v_date);
		
		this.e_date =e_date;
		this.p_name =p_name;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getE_date() {
		return e_date;
	}

	public void setE_date(int e_date) {
		this.e_date = e_date;
	}
	
	
	
}
