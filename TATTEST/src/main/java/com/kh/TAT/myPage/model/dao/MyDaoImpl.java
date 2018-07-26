package com.kh.TAT.myPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.myPage.model.vo.MyProject;

@Repository
public class MyDaoImpl implements MyDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public Member selectOneMemberCode(String m_code) {

		
		return sqlSession.selectOne("member.selectMember",m_code);
	}

	@Override
	public int updateProfile(Member m) {
		
		return sqlSession.update("member.updateProfile",m);
	}

	@Override
	public List<MyProject> selectAllProject(String m_code) {
		
		return sqlSession.selectList("member.selectAllProject",m_code);
	}
}
