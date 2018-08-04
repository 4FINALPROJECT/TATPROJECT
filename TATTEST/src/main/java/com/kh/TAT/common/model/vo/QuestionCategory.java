package com.kh.TAT.common.model.vo;

public class QuestionCategory {
  
	private String qc_code;
	private String qc_name;
	public QuestionCategory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuestionCategory(String qc_code, String qc_name) {
		super();
		this.qc_code = qc_code;
		this.qc_name = qc_name;
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

	@Override
	public String toString() {
		return "QuestionCategory [qc_code=" + qc_code + ", qc_name=" + qc_name + "]";
	}

}
