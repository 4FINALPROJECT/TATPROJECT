package com.kh.TAT.mainPage.model.service;


import java.util.List;
import java.util.Map;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.Payment;
import com.kh.TAT.common.model.vo.Template;
import com.kh.TAT.common.model.vo.TemplateReplyBoard;


public interface MainService {

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

	Template tempDetail(String t_code);

	List<Map<String, String>> replyBoard(String t_code);

	int insertReplyBoard(TemplateReplyBoard ter);

	Member selectOneMCode(String m_code);

}
