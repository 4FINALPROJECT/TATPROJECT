package com.kh.TAT.editPage.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.TAT.common.model.vo.Member;
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
	
private Scanner scan;
	
	@RequestMapping("/edit/newPage.tat")
	public String newPage(HttpSession session, HttpServletRequest request, Model model) throws Exception {
		
		Member m = (Member) session.getAttribute("m");
		
		if ( m != null ) {
			
			System.out.println(m.getM_code());
			
			String newPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/userRepository/"+ m.getM_code());

			File userFile = new File(newPageRes);
			
			if ( !userFile.exists() ) {
				userFile.mkdirs();
				System.out.println("유저의 파일 저장 경로 확인 : "+ userFile.mkdirs());
			}

			
			
			String res = request.getSession().getServletContext().getRealPath("/WEB-INF/views/edit/page1.jsp");
			

			scan = new Scanner(new FileInputStream(res));
			
			String result = "";
			
			while ( scan.hasNext() ) {
				result += scan.nextLine();
			}
			scan.close();
			
			
			System.out.println("경로 값 확인 : "+ result);
			
			String[] sa = result.split(">");

			
			String aaa = "";
			
			for ( String i : sa ) {
				aaa += i+">\n";
			}
			
			
			System.out.println("값 확인 : "+ aaa);

			
			
			
			// 파일 저장
			FileWriter writer = null;
			
			// 사용자 파일 저장 경로
			File userNewPage = new File(newPageRes+"/"+"page1.jsp");		
			
			String readSplit = userNewPage.toString();
			
			String readTrue = "";
			readTrue = readSplit.substring(47);
			
			
			String read = readTrue.replace("\\", "/");

			
			System.out.println("변환 경로 값 : "+ read);
			
			if ( !userNewPage.exists() ) {
				writer = new FileWriter(userNewPage, false);
				writer.write(aaa);
				writer.flush();
				writer.close();
			} 
			
			model.addAttribute("editPage", read).addAttribute("fileCreate", userNewPage.exists());
			
			System.out.println(userNewPage.exists());
			
			return "editPage/editPage_Main";
			
		} else {
			// 에러페이지 처리
			String loc = "/"; 
			String msg = "로그인 해주세요.";
			
			model.addAttribute("loc", loc);
			model.addAttribute("msg", msg);
			
			return "common/msg";
		}
		
	}
	
	@RequestMapping("/member/editCurrentPage.tat")
	public String editCurrentPage(HttpSession session, HttpServletRequest request, Model model) {
		
		Member m = (Member) session.getAttribute("m");
		
		if ( m != null ) {
			String newPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/userRepository/"+ m.getM_code());
			
			// 받아올 db의 파일이름
			String userFileName = "page1";
			
			File userNewPage = new File(newPageRes+"/"+ userFileName +".jsp");		
			
			if ( !userNewPage.exists() ) {
				String loc = "/"; 
				String msg = "잘못된 접근 경로 입니다.";
				
				model.addAttribute("loc", loc);
				model.addAttribute("msg", msg);
				
				return "common/msg";
			}
			
			String readSplit = userNewPage.toString();
			
			String readTrue = "";
			readTrue = readSplit.substring(47);
			
			
			String read = readTrue.replace("\\", "/");
			
			model.addAttribute("editPage", read);
			
			return "editPage/editPage_Main";
		} else {
			// 에러페이지 처리
			String loc = "/"; 
			String msg = "로그인 해주세요.";
			
			model.addAttribute("loc", loc);
			model.addAttribute("msg", msg);
			
			return "common/msg";
		}
				
	}
	
	@ResponseBody
	@RequestMapping(value="/member/editOop.tat", method=RequestMethod.POST)
	public Map<String, Object> editOop(Model model, @RequestParam String edit) {
		
		Map<String, Object> map = new HashMap<>();
		
		String editLog = edit.toString();
		
		System.out.println(edit);
		map.put("editLog", editLog);
		// return "editPage/editPage_Main";
		return map;
	}
}
