package com.kh.TAT.adminPage.model.dao;

import java.util.List;

import com.kh.TAT.adminPage.model.vo.PagingVo;
import com.kh.TAT.adminPage.model.vo.AdminPayment;
import com.kh.TAT.adminPage.model.vo.AdminQuestion;
import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.FaqBoard;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.QuestionCategory;
import com.kh.TAT.common.model.vo.Template;


public interface AdminDao {

	// Member
	List<Member> selectMemberList(PagingVo paging);

	int MemberTotalPaging();

	int memberTotalPagingCount(int start);
	
	// Payment

	int paymentTotalPagingCount(int start);

	int PaymentTotalPaging();

	List<AdminPayment> selectPaymentList(PagingVo paging);
	
	// Project

	int projectTotalPagingCount(int start);

	List<Edit> selectProjectList(PagingVo paging);

	int ProjectTotalPaging();
	
	// Faq

	int faqTotalPagingCount(int start);

	List<FaqBoard> selectFaqList(PagingVo paging);

	int FaqTotalPaging();

	int insertFaqQuestion(FaqBoard faqboard);

	List<QuestionCategory> selectFaqSelect();
	
	List<FaqBoard> faqSelectUpdateList(int faq_num);

	int faqUpdateList(FaqBoard faqboard);

	int faqDeleteQuestion(FaqBoard faqboard);
	
	// Question

	int questionTotalPagingCount(int start);

	List<Edit> selectQuestionList(PagingVo paging);

	int questionTotalPaging();
	
	List<AdminQuestion> questionSelectUpdateList(int qa_num);
	
	int updateQuestion(int qa_num);

	
	// Template

	List<Template> selectTemplateList(PagingVo paging);

	int templateTotalPaging();

	int templateTotalPagingCount(int start);

	
	

}
