package com.kh.TAT.myPage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.TAT.common.model.vo.Member;

@Repository
public class MyDaoImpl implements MyDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public Member selectOneMemberCode(String m_code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateProfile(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}
}
