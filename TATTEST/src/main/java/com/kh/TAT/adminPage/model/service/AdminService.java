package com.kh.TAT.adminPage.model.service;

import java.util.List;

import com.kh.TAT.adminPage.model.vo.PagingVo;
import com.kh.TAT.adminPage.model.vo.aPayment;
import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.FaqBoard;
import com.kh.TAT.common.model.vo.Member;



public interface AdminService {

	// Member
	List<Member> selectMemberList(PagingVo paging);
	
	int MemberTotalPaging();

	int memberTotalPagingCount(int start);
	
	// Payment

	int paymentTotalPagingCount(int start);

	int PaymentTotalPaging();

	List<aPayment> selectPaymentList(PagingVo paging);
	
	// Project

	int projectTotalPagingCount(int start);

	List<Edit> selectProjectList(PagingVo paging);

	int ProjectTotalPaging();

	int faqTotalPagingCount(int start);

	List<FaqBoard> selectFaqList(PagingVo paging);

	int FaqTotalPaging();

	int insertFaqQuestion(FaqBoard faqboard);

	List<FaqBoard> selecFaqSelect();
	
	// 

	



	

}
