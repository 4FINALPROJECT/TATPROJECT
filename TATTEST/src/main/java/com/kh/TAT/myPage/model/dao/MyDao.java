package com.kh.TAT.myPage.model.dao;

import com.kh.TAT.common.model.vo.Member;

public interface MyDao {

	Member selectOneMemberCode(String m_code);

	int updateProfile(Member m);

}
