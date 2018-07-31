package com.kh.TAT.myPage.model.service;

import java.util.List;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.myPage.model.vo.MyProject;

public interface MyService {

	Member selectOneMemberCode(String m_code);

	int updateProfile(Member m);

	List<MyProject> selectAllProject(String m_code);

	int updatePassword(Member m);

	String checkPwd(String m_code);

	int checkEmailDuplicate(String chk);

	int updateEmail(Member m);

	

}
