package com.kh.TAT.myPage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.TAT.myPage.model.service.MyService;

@Controller
public class MyController {

	@Autowired
	MyService myS;
	
	// 마이 페이지 메인 이동
	@RequestMapping("/my/Main.tat")
	public String my(){
		return "myPage/myPage_Main";
	}
	// 계정설정 페이지 이동
	@RequestMapping("/my/Info.tat")
	public String Info(){
		return "myPage/myPage_Info";
	}
	// 결제정보 페이지 이동
	@RequestMapping("/my/Payment.tat")
	public String Payment(){
		return "myPage/myPage_Payment";
	}
	// 프로젝트 페이지 이동
	@RequestMapping("/my/Project.tat")
	public String Project(){
		return "myPage/myPage_Project";
	}
	// 문의하기 페이지 이동
	@RequestMapping("/my/Question.tat")
	public String Question(){
		return "myPage/myPage_Question";
	}

}
