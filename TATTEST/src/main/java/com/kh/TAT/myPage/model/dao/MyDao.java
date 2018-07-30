package com.kh.TAT.myPage.model.dao;

import java.util.List;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.Payment;
import com.kh.TAT.myPage.model.vo.MyProject;

public interface MyDao {

	// 회원 정보 관련
	Member selectOneMemberCode(String m_code);

	int updateProfile(Member m);

	List<MyProject> selectAllProject(String m_code);

	int updatePassword(Member m);

	String checkPwd(String m_code);

	int checkEmailDuplicate(String chk);

	int updateEmail(Member m);

	// 결제 정보 관련
	Payment selectOnePayment(String m_code);

}
