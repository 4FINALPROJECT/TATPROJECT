package com.kh.TAT.adminPage.controller;

import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.kh.TAT.common.model.vo.Member;

import com.kh.TAT.adminPage.model.service.AdminService;
import com.kh.TAT.adminPage.model.vo.PagingVo;

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
	@RequestMapping(value="/admin/MemberAjax.tat")
	public List<Member> Member(PagingVo paging ,int start, int end){
		// 게시판 페이지 이동
		paging.setPageStartNum(start);
		paging.setPageLastNum(end);
	    List<Member> memberList = adminS.selectMemberList(paging);
	    paging.setTotal(adminS.selectTotalPaging());
	    
	    System.out.println("memberList :"+memberList);
	    
	    return memberList;

	}
	
	/*@ResponseBody
	@RequestMapping(value="/admin/MemberAjax.tat", method=RequestMethod.POST)
	public ModelAndView outputJsonList(ModelAndView modelAndView,int start, int end) {
		PagingVo paging = new PagingVo();
		paging.setPageStartNum(start);
		paging.setPageLastNum(end);
		
		List<Member> memberAjaxList = adminS.selectMemberList(paging);
	    		//adminS.memberAjaxList(start, end);
	     
	    Map map = new HashMap();
	    map.put("memberAjaxList", memberAjaxList);
	    
	     
	    modelAndView.addAllObjects(map);
	 
	    // Keypoint ! setViewName에 들어갈 String 파라미터는 JsonView bean 설정해줬던 id와 같아야 한다.
	    modelAndView.setViewName("jsonView");
	     
	    return modelAndView;
	}*/
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
}
