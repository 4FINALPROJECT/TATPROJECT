package com.kh.TAT.myPage.model.dao;

import java.util.List;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.myPage.model.vo.MyProject;

public interface MyDao {

	Member selectOneMemberCode(String m_code);

	int updateProfile(Member m);

	List<MyProject> selectAllProject(String m_code);

}
