package com.kh.TAT.adminPage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.TAT.adminPage.model.dao.AdminDao;
import com.kh.TAT.adminPage.model.vo.PagingVo;
import com.kh.TAT.adminPage.model.vo.aPayment;
import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.FaqBoard;
import com.kh.TAT.common.model.vo.Member;


@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao adminD;
	
	// Member
	@Override
	public List<Member> selectMemberList(PagingVo paging) {
		// TODO Auto-generated method stub
		return adminD.selectMemberList(paging);
	}

	@Override
	public int MemberTotalPaging() {
		// TODO Auto-generated method stub
		return adminD.MemberTotalPaging();
	}

	@Override
	public int memberTotalPagingCount(int start) {
		// TODO Auto-generated method stub
		return adminD.memberTotalPagingCount(start);
	}

	// Payment
	
	@Override
	public int paymentTotalPagingCount(int start) {
		// TODO Auto-generated method stub
		return adminD.paymentTotalPagingCount(start);
	}

	@Override
	public int PaymentTotalPaging() {
		// TODO Auto-generated method stub
		return adminD.PaymentTotalPaging();
	}

	@Override
	public List<aPayment> selectPaymentList(PagingVo paging) {
		// TODO Auto-generated method stub
		return adminD.selectPaymentList(paging);
	}

	// Project
	
	@Override
	public int projectTotalPagingCount(int start) {
		// TODO Auto-generated method stub
		return adminD.projectTotalPagingCount(start);
	}

	@Override
	public List<Edit> selectProjectList(PagingVo paging) {
		// TODO Auto-generated method stub
		return adminD.selectProjectList(paging);
	}

	@Override
	public int ProjectTotalPaging() {
		// TODO Auto-generated method stub
		return adminD.ProjectTotalPaging();
	}

	// Faq
	@Override
	public int faqTotalPagingCount(int start) {
		// TODO Auto-generated method stub
		return adminD.faqTotalPagingCount(start);
	}

	@Override
	public List<FaqBoard> selectFaqList(PagingVo paging) {
		// TODO Auto-generated method stub
		return adminD.selectFaqList(paging);
	}

	@Override
	public int FaqTotalPaging() {
		// TODO Auto-generated method stub
		return adminD.FaqTotalPaging();
	}

	@Override
	public int insertFaqQuestion(FaqBoard faqboard) {
		// TODO Auto-generated method stub
		return adminD.insertFaqQuestion(faqboard);
	}

	@Override
	public List<FaqBoard> selecFaqSelect() {
		// TODO Auto-generated method stub
		return adminD.selectFaqSelect();
	}

	
}
