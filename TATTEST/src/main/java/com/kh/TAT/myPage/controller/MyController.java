package com.kh.TAT.myPage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.myPage.model.service.MyService;
import com.kh.TAT.myPage.model.vo.MyProject;

@Controller
public class MyController {

	@Autowired
	MyService myS;
	
	// 마이 페이지 메인 이동
	@RequestMapping("/my/Main.tat")
	public String my(HttpServletRequest request){
		
		HttpSession session = request.getSession(false);
		String m_code = (String)session.getAttribute("m_code");
		
		Member m = myS.selectOneMemberCode(m_code);
		request.setAttribute("m", m);
		System.out.println("m이 뭘까요? : "+m);
		
		return "myPage/myPage_Main";
	}
	// 계정설정 페이지 이동
	@RequestMapping("/my/Info.tat")
	public String Info(HttpServletRequest request){
	
		HttpSession session = request.getSession(false);
		String m_code = (String)session.getAttribute("m_code");
		
		Member m = myS.selectOneMemberCode(m_code);
		request.setAttribute("m", m);
		System.out.println("m이 뭘까요? : "+m);
		
		return "myPage/myPage_Info";
	}
	// 결제정보 페이지 이동
	@RequestMapping("/my/Payment.tat")
	public String Payment(){
		return "myPage/myPage_Payment";
	}
	// 프로젝트 페이지 이동
	@RequestMapping("/my/Project.tat")
	public String Project(HttpServletRequest request){
		
		int result = 0;
		
		HttpSession session = request.getSession(false);
		String m_code = (String)session.getAttribute("m_code");
		
		List<MyProject> list = myS.selectAllProject(m_code);
		
		request.setAttribute("list", list);
		
		for(MyProject hi : list){
			result++;
			System.out.println(result+". 결과값은 : "+"--------------------------------↙");
			System.out.println("가져온 E코드 : "+hi.getE_code());
			System.out.println("가져온 M코드 : "+hi.getM_code());
			System.out.println("가져온 내용 : "+hi.getProj_comment());
			System.out.println("가져온 프로젝트이름 : "+hi.getProj_name());
			System.out.println("가져온 count : "+hi.getComment_count());
			System.out.println("가져온 날짜 : "+hi.getSave_date());
		}
		
		return "myPage/myPage_Project";
	}
	// 프로젝트 상세보기 페이지 이동
	@RequestMapping("/my/ProjectDetail.tat")
	public String ProjectDetail(){
		return "myPage/myPage_ProjectDetail";
	}
	// 문의하기 페이지 이동
	@RequestMapping("/my/Question.tat")
	public String Question(){
		return "myPage/myPage_Question";
	}
	// 프로필 변경
	@RequestMapping("/my/updateProfile.tat")
	public String updateProfile(HttpServletRequest request, Member m){
		
		System.out.println("가져온 M 값 :"+m);
		
		HttpSession session = request.getSession(false);
		
		m.setM_code((String)session.getAttribute("m_code"));
		
		System.out.println("밑에 m 값 : " + m);
	
		int result = myS.updateProfile(m);
		
		if(result > 0){
			
			m = myS.selectOneMemberCode(m.getM_code());
			
		}
		
		request.setAttribute("m", m);
		
		return "myPage/myPage_Info";
	}

}
