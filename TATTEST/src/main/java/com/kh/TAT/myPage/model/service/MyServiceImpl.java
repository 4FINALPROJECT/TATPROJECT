package com.kh.TAT.myPage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.myPage.model.dao.MyDao;
import com.kh.TAT.myPage.model.vo.MyProject;

@Service
public class MyServiceImpl implements MyService {

	@Autowired
	MyDao myD;

	@Override
	public Member selectOneMemberCode(String m_code) {
		
		return myD.selectOneMemberCode(m_code);
	}

	@Override
	public int updateProfile(Member m) {
		
		return myD.updateProfile(m);
	}
	
	@Override
	public List<MyProject> selectAllProject(String m_code) {
		
		return myD.selectAllProject(m_code);
	}

	@Override
	public int updatePassword(Member m) {
		
		return myD.updatePassword(m);
	}

	@Override
	public String checkPwd(String m_code) {
		
		return myD.checkPwd(m_code);
	}

	@Override
	public int checkEmailDuplicate(String chk) {
		
		return myD.checkEmailDuplicate(chk);
	}

	@Override
	public int updateEmail(Member m) {
		
		return myD.updateEmail(m);
	}
}
