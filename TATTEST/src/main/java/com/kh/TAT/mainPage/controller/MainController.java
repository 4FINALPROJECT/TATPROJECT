package com.kh.TAT.mainPage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.TAT.mainPage.model.service.MainService;

@Controller
public class MainController {

	@Autowired
	MainService mainS;
	
	// 기능소개 페이지 이동
	@RequestMapping("/main/Feature.tat")
	public String Feature(){
		return "mainPage/mainPage_Feature";
	}
	
	// 둘러보기 페이지 이동
	@RequestMapping("/main/Explore.tat")
	public String Explore(){
		return "mainPage/mainPage_Explore";
	}
	
	// 둘러보기 상세보기 페이지 이동
	@RequestMapping("/main/ExploreDetail.tat")
	public String ExploreDetail(){
		return "mainPage/mainPage_ExploreDetail";
	}
	
	// 프리미엄 페이지 이동
	@RequestMapping("/main/Upgrade.tat")
	public String Upgrade(){
		return "mainPage/mainPage_Upgrade";
	}
	
	// 템플릿 페이지 이동
	@RequestMapping("/main/Template.tat")
	public String Template(){
		return "mainPage/mainPage_Template";
	}
	
	// 템플릿 상세보기 페이지 이동
	@RequestMapping("/main/TemplateDetail.tat")
	public String TemplateDetail(){
		return "mainPage/mainPage_TemplateDetail";
	}
	
	// 제휴신청 페이지 이동
	@RequestMapping("/main/Affiliate.tat")
	public String Affiliate(){
		return "mainPage/mainPage_Affiliate";
	}
	
	// 1:1문의 페이지 이동
	@RequestMapping("/main/Question.tat")
	public String Question(){
		return "mainPage/mainPage_Question";
	}
	
	// FAQ 페이지 이동
	@RequestMapping("/main/Faq.tat")
	public String Faq(){
		return "mainPage/mainPage_Faq";
	}
	
	// 회사 소개 페이지 이동
	@RequestMapping("/main/About.tat")
	public String About(){
		return "mainPage/mainPage_About";
	}

}
