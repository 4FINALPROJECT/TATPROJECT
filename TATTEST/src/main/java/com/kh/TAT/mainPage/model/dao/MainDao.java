package com.kh.TAT.mainPage.model.dao;


import java.util.List;
import java.util.Map;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.Payment;


public interface MainDao {

	int insertMember(Member member);

	Member selectOneMember(String m_email);

	int checkemailDuplicate(String m_email);

	int changePWD(Member m);

	String getPw(Map<String, Object> paramMap);

	int insertPayment(Payment p);

	void updateUsable(String m_code);

	Member emailCheck(String f_email);

	int insertFMember(Member m);

	int insertGMember(Member m);

	List<Map<String, String>> selectAnswerBoard();

	int ddaySelect(String m_code);

	List<Map<String, String>> selectTemplateBoard();

}
