package com.kh.TAT.adminPage.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.FaqBoard;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.QuestionCategory;
import com.kh.TAT.adminPage.model.service.AdminService;
import com.kh.TAT.adminPage.model.vo.AdminPayment;
import com.kh.TAT.adminPage.model.vo.AdminQuestion;
import com.kh.TAT.adminPage.model.vo.PagingVo;
import com.kh.TAT.common.model.vo.Template;;

@Controller
public class AdminController {

	@Autowired
	AdminService adminS;
	
	// 관리자 메인 페이지 이동
	@RequestMapping("/admin/Main.tat")
	public String admin(){
		return "adminPage/adminPage_Main";
	}
	// 회원정보 페이지 이동
	@RequestMapping(value="/admin/Member.tat")
	public String Member(){
	    return "adminPage/adminPage_Member";
	}
	// 결제정보 페이지 이동
	@RequestMapping("/admin/Payment.tat")
	public String Payment(){
		return "adminPage/adminPage_Payment";
	}
	// 프로젝트정보 페이지 이동
	@RequestMapping("/admin/Project.tat")
	public String Project(){
		return "adminPage/adminPage_Project";
	}
	// 1:1문의관리 페이지 이동
	@RequestMapping("/admin/Question.tat")
	public String Question(){
		return "adminPage/adminPage_Question";
	}
	// FAQ관리 페이지 이동
	@RequestMapping("/admin/Faq.tat")
	public String Faq(){
		return "adminPage/adminPage_Faq";
	}
	// 템플릿관리 페이지 이동
	@RequestMapping("/admin/Template.tat")
	public String Template(){
		return "adminPage/adminPage_Template";
	}
	// 제휴관리 페이지 이동
	@RequestMapping("/admin/Affiliate.tat")
	public String Affiliate(){
		return "adminPage/adminPage_Affiliate";
	}
	// 페이징 전용 
	@ResponseBody
	@RequestMapping(value="/admin/MemberTotalCountAjax.tat")
	public int TotalPagingCount(@RequestParam("start") int start){
		int totalPagingCount = adminS.memberTotalPagingCount(start);
		System.out.println("게시글 갯수count : "+totalPagingCount);
		return totalPagingCount;
	}
	@ResponseBody
	@RequestMapping(value="/admin/MemberAjax.tat")
	public List<Member> Member(PagingVo paging,@RequestParam("start") int start){
		// 게시판 페이지 이동
		System.out.println("출력결과 start : "+start);
		
		paging.setIndex(start);
		
	    List<Member> memberList = adminS.selectMemberList(paging);
	    paging.setTotal(adminS.MemberTotalPaging());
	    
	    System.out.println("memberList :"+memberList);
	    
	    /*return "adminPage/adminPage_Member";*/
	    return memberList;

	}
	// 토탈갯수 새기
	@ResponseBody
	@RequestMapping(value="/admin/MemberTotalAjax.tat")
	public int MemberTotalpageList(){
		int totalpageList = adminS.MemberTotalPaging();
		System.out.println("게시글 갯수 : "+totalpageList);
		return totalpageList;
	}
	// --------- payment
	// 페이징 전용 
	@ResponseBody
	@RequestMapping(value="/admin/PaymentTotalCountAjax.tat")
	public int PaymentTotalPagingCount(@RequestParam("start") int start){
		int totalPagingCount = adminS.paymentTotalPagingCount(start);
		System.out.println("게시글 갯수count : "+totalPagingCount);
		return totalPagingCount;
	}
	@ResponseBody
	@RequestMapping(value="/admin/PaymentAjax.tat")
	public List<AdminPayment> Payment(PagingVo paging,@RequestParam("start") int start){
		// 게시판 페이지 이동
		System.out.println("출력결과 start : "+start);
	
		paging.setIndex(start);
			
		List<AdminPayment> paymentList = adminS.selectPaymentList(paging);
		paging.setTotal(adminS.PaymentTotalPaging());
		    
	    System.out.println("PaymentList :"+paymentList);
		    
		/*return "adminPage/adminPage_Member";*/
	    return paymentList;

	}
	@ResponseBody
	@RequestMapping(value="/admin/PaymentTotalAjax.tat")
	public int PaymenttotalpageList(){
		int totalpageList = adminS.PaymentTotalPaging();
		System.out.println("게시글 갯수 : "+totalpageList);
		return totalpageList;
	}
	// --------Project
	// 페이징 전용 
	@ResponseBody
	@RequestMapping(value="/admin/ProjectTotalCountAjax.tat")
	public int ProjectTotalPagingCount(@RequestParam("start") int start){
		int totalPagingCount = adminS.projectTotalPagingCount(start);
		System.out.println("게시글 갯수count : "+totalPagingCount);
		return totalPagingCount;
	}
	@ResponseBody
	@RequestMapping(value="/admin/ProjectAjax.tat")
	public List<Edit> Project(PagingVo paging,@RequestParam("start") int start){
		// 게시판 페이지 이동
		System.out.println("출력결과 start : "+start);
					
		paging.setIndex(start);
					
		List<Edit> projectList = adminS.selectProjectList(paging);
		paging.setTotal(adminS.ProjectTotalPaging());
				    
	    System.out.println("ProjectList :"+projectList);
				    
	    /*return "adminPage/adminPage_Member";*/
	    return projectList;

	}
	@ResponseBody
	@RequestMapping(value="/admin/ProjectTotalAjax.tat")
	public int ProjecttotalpageList(){
		int totalpageList = adminS.ProjectTotalPaging();
		System.out.println("게시글 갯수 : "+totalpageList);
		return totalpageList;
	}
	// -------FAQ 
	// 페이징 전용 
		@ResponseBody
		@RequestMapping(value="/admin/FaqTotalCountAjax.tat")
		public int FaqTotalPagingCount(@RequestParam("start") int start){
			int totalPagingCount = adminS.faqTotalPagingCount(start);
			System.out.println("게시글 갯수count : "+totalPagingCount);
			return totalPagingCount;
		}
		@ResponseBody
		@RequestMapping(value="/admin/FaqAjax.tat")
		public List<FaqBoard> Faq(PagingVo paging,@RequestParam("start") int start){
			// 게시판 페이지 이동
			System.out.println("출력결과 start : "+start);
						
			paging.setIndex(start);
						
			List<FaqBoard> faqList = adminS.selectFaqList(paging);
			paging.setTotal(adminS.FaqTotalPaging());
					    
		    System.out.println("FaqList :"+faqList);
					    
		    /*return "adminPage/adminPage_Member";*/
		    return faqList;

		}
		@ResponseBody
		@RequestMapping(value="/admin/FaqTotalAjax.tat")
		public int FaqtotalpageList(){
			int totalpageList = adminS.FaqTotalPaging();
			System.out.println("게시글 갯수 : "+totalpageList);
			return totalpageList;
		}
		@ResponseBody
		@RequestMapping(value="/admin/insertFaqQuestionAjax.tat")
		public int InsertFaqQuestion(@RequestParam("qccode") String qccode,@RequestParam("quest") String quest,
				@RequestParam("answer") String answer){
			FaqBoard faqboard = new FaqBoard();
			
			System.out.println("코드 : "+qccode+"질문 :"+quest+"답변 :"+answer);
			faqboard.setQc_code(qccode);
			faqboard.setFaq_question(quest);
			faqboard.setFaq_answer(answer);
			int faqQuestion = adminS.insertFaqQuestion(faqboard);
			
			return faqQuestion;
		}
		@ResponseBody
		@RequestMapping(value="/admin/FaqSelectAjax.tat")
		public List<QuestionCategory> FaqSelect(){
			
			
			List<QuestionCategory> faqSelect = adminS.selectFaqSelect();
			System.out.println("faqSelect : "+adminS.selectFaqSelect());
			return faqSelect;
		}
		@ResponseBody
		@RequestMapping(value="/admin/FaqSelectUpdateListAjax.tat")
		public List<FaqBoard> FaqSelectUpdate(@RequestParam("faq_num") int faq_num){
			// 게시판 페이지 이동
			System.out.println("출력할 faq_num 번호 : "+faq_num);
			
							
			List<FaqBoard> faqSelectUpdateList = adminS.faqSelectUpdateList(faq_num);
			
					    
		    System.out.println("FaqList :"+faqSelectUpdateList);
					    
		    /*return "adminPage/adminPage_Member";*/
		    return faqSelectUpdateList;

		}
		@ResponseBody
		@RequestMapping(value="/admin/updateFaqQuestionAjax.tat")
		public int updateFaqQuestion(@RequestParam("qccode") String qccode,@RequestParam("quest") String quest,
				@RequestParam("answer") String answer, @RequestParam("faq_num") int faq_num){
			FaqBoard faqboard = new FaqBoard();
			
			System.out.println("코드 : "+qccode+"질문 :"+quest+"답변 :"+answer);
			faqboard.setQc_code(qccode);
			faqboard.setFaq_question(quest);
			faqboard.setFaq_answer(answer);
			faqboard.setFaq_num(faq_num);
			int faqUpdateQuestion = adminS.updateFaqQuestion(faqboard);
			
			return faqUpdateQuestion;
		}
		
		@ResponseBody
		@RequestMapping(value="/admin/deleteFaqQuestionAjax.tat")
		public int deleteFaqQuestion(@RequestParam("faq_num") int faq_num){
			FaqBoard faqboard = new FaqBoard();
			
			faqboard.setFaq_num(faq_num);
			int faqDeleteQuestion = adminS.deleteFaqQuestion(faqboard);
			
			return faqDeleteQuestion;
		}
		
		
	// Question
		
		// 페이징 전용 
		@ResponseBody
		@RequestMapping(value="/admin/QuestionTotalCountAjax.tat")
		public int QuestionTotalPagingCount(@RequestParam("start") int start){
			int totalPagingCount = adminS.questionTotalPagingCount(start);
			System.out.println("게시글 갯수count : "+totalPagingCount);
			return totalPagingCount;
		}
		@ResponseBody
		@RequestMapping(value="/admin/QuestionAjax.tat")
		public List<Edit> Question(PagingVo paging,@RequestParam("start") int start){
			// 게시판 페이지 이동
			System.out.println("출력결과 start : "+start);
						
			paging.setIndex(start);
						
			List<Edit> questionList = adminS.selectQuestionList(paging);
			paging.setTotal(adminS.questionTotalPaging());
					    
		    System.out.println("QuestionList :"+questionList);
					    
		    /*return "adminPage/adminPage_Member";*/
		    return questionList;

		}
		@ResponseBody
		@RequestMapping(value="/admin/QuestionTotalAjax.tat")
		public int QuestiontotalpageList(){
			int totalpageList = adminS.questionTotalPaging();
			System.out.println("게시글 갯수 : "+totalpageList);
			return totalpageList;
		}
		
		@ResponseBody
		@RequestMapping(value="/admin/QuestionCommentAjax.tat")
		public List<AdminQuestion> QuestionSelectUpdate(@RequestParam("qa_num") int qa_num){
			// 게시판 페이지 이동
			System.out.println("출력할 qa_num 번호 : "+qa_num);
			
							
			List<AdminQuestion> questionSelectUpdateList = adminS.questionSelectUpdateList(qa_num);
			
					    
		    System.out.println("qaList :"+questionSelectUpdateList);
					    
		    /*return "adminPage/adminPage_Member";*/
		    return questionSelectUpdateList;

		}
		
		@ResponseBody
		@RequestMapping(value="/admin/updateQuestionAjax.tat")
		public int updateQuestion(@RequestParam("qa_num") int qa_num){

			System.out.println("qa_num2 : "+qa_num);
			int updateQuestion = adminS.updateQuestion(qa_num);
			
			return updateQuestion;
		}
		// Template
		
		@ResponseBody
		@RequestMapping(value="/admin/TemplateTotalCountAjax.tat")
		public int TemplateTotalPagingCount(@RequestParam("start") int start){
			int totalPagingCount = adminS.templateTotalPagingCount(start);
			System.out.println("게시글 갯수count : "+totalPagingCount);
			return totalPagingCount;
		}
		@ResponseBody
		@RequestMapping(value="/admin/TemplateAjax.tat")
		public List<Template> Template(PagingVo paging,@RequestParam("start") int start){
			// 게시판 페이지 이동
			System.out.println("출력결과 start : "+start);
			
			paging.setIndex(start);
			
		    List<Template> templateList = adminS.selectTemplateList(paging);
		    paging.setTotal(adminS.templateTotalPaging());
		    
		    System.out.println("templateList :"+templateList);
		    
		    /*return "adminPage/adminPage_Member";*/
		    return templateList;

		}
		// 토탈갯수 새기
		@ResponseBody
		@RequestMapping(value="/admin/TemplateTotalAjax.tat")
		public int TemplateTotalpageList(){
			int totalpageList = adminS.templateTotalPaging();
			System.out.println("게시글 갯수 : "+totalpageList);
			return totalpageList;
		}
		
	
	
	
}
