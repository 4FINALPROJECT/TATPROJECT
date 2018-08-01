package com.kh.TAT.myPage.model.service;

import java.util.List;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.QuestionAnswerBoard;
import com.kh.TAT.myPage.model.vo.MyPayment;
import com.kh.TAT.myPage.model.vo.MyProject;

public interface MyService {

	// 회원 정보 관련 
	Member selectOneMemberCode(String m_code);

	int updateProfile(Member m);

	List<MyProject> selectAllProject(String m_code);

	int updatePassword(Member m);

	String checkPwd(String m_code);

	int checkEmailDuplicate(String chk);

	int updateEmail(Member m);

	
	// 결제 정보 관련 
	MyPayment selectOnePayment(String m_code);

	List<MyPayment> selectListPayment(String m_code);

	
	// 1:1 게시판 관련
	List<QuestionAnswerBoard> selectQuestionBoard(String m_code);

	List<QuestionAnswerBoard> widgetComment(String m_code);

	

}
