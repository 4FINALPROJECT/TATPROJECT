package com.kh.TAT.adminPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.TAT.adminPage.model.vo.PagingVo;
import com.kh.TAT.adminPage.model.vo.aPayment;
import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.FaqBoard;
import com.kh.TAT.common.model.vo.Member;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	// Member
	@Override
	public List<Member> selectMemberList(PagingVo paging) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList("member.selectMemberList", paging);
	}

	@Override
	public int MemberTotalPaging() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.totalPaging");
	}

	@Override
	public int memberTotalPagingCount(int start) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.totalPagingCount", start);
	}

	
	// Payment 
	
	@Override
	public int paymentTotalPagingCount(int start) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("aPayment.totalPagingCount", start);
	}

	@Override
	public int PaymentTotalPaging() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("aPayment.totalPaging");
	}

	@Override
	public List<aPayment> selectPaymentList(PagingVo paging) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("aPayment.selectPaymentList",paging);
	}
	
	// Project

	@Override
	public int projectTotalPagingCount(int start) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("edit.totalPagingCount",start);
	}

	@Override
	public List<Edit> selectProjectList(PagingVo paging) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("edit.selectEditList", paging);
	}

	@Override
	public int ProjectTotalPaging() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("edit.totalPaging");
	}

	@Override
	public int faqTotalPagingCount(int start) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("faqBoard.totalPagingCount",start);
	}

	@Override
	public List<FaqBoard> selectFaqList(PagingVo paging) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("faqBoard.selectFaqList", paging);
	}

	@Override
	public int FaqTotalPaging() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("faqBoard.totalPaging");
	}

	@Override
	public int insertFaqQuestion(FaqBoard faqboard) {
		// TODO Auto-generated method stub
		return sqlSession.insert("faqBoard.insertFaqQuestion", faqboard);
	}

	@Override
	public List<FaqBoard> selectFaqSelect() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("faqBoard.selectFaqSelect");
	}
	
	

	
}
