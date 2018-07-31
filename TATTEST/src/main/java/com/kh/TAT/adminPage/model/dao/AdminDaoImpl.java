package com.kh.TAT.adminPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.TAT.adminPage.model.vo.PagingVo;
import com.kh.TAT.common.model.vo.Member;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<Member> selectMemberList(PagingVo paging) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList("member.selectMemberList", paging);
	}

	@Override
	public int selectTotalPaging() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.selectTotalPaging");
	}

	@Override
	public int totalPagingCount(int start) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.totalPagingCount", start);
	}

	
}
