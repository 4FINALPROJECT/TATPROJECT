package com.kh.TAT.editPage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.TAT.editPage.model.service.EditService;

@Controller
public class EditController {

	@Autowired
	EditService editS;
	
	// 편집 페이지 메인 이동
	@RequestMapping("/edit/Main.tat")
	public String edit(){
		return "editPage/editPage_Main";
	}
}
