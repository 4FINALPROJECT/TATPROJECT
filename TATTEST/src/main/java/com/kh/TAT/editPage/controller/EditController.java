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

	private Scanner scan;
	
	@Autowired
	EditService editS;
	
	// 편집 페이지 메인 이동
	@RequestMapping("/edit/Main.tat")
	public String edit(){
		return "editPage/editPage_Main";
	}
	
	
	@RequestMapping("/edit/newPage.tat")
	public String newPage(HttpSession session, HttpServletRequest request, Model model) throws Exception {
		
		Member m = (Member) session.getAttribute("m");
		
		if ( m != null ) {
			
			System.out.println(m.getM_code());
			
			String newPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/member/"+ m.getM_code());

			File userFile = new File(newPageRes);
			
			// 폴더 생성
			if ( !userFile.exists() ) {
				userFile.mkdirs();
				System.out.println("유저의 파일 저장 경로 확인 : "+ userFile.mkdirs());
			}

			// head 파일 함수 생성
			/////////////////////////////////
			String headres = request.getSession().getServletContext().getRealPath("/WEB-INF/views/edit/head.jsp");
			scan = new Scanner(new FileInputStream(headres));
			
			String headResult = "";
			
			while ( scan.hasNext() ) {
				headResult += scan.nextLine();
			}
			scan.close();
			String[] headSplit = headResult.split(">");
			String headSplitString = "";
			for ( String i : headSplit ) {
				headSplitString += i+">\n";
			}
			System.out.println("headSplitString 값 확인 : "+ headSplitString);
			/////////////////////////////////
			
			
			
			
			// body 파일 함수 생성
			/////////////////////////////////
			String bodyres = request.getSession().getServletContext().getRealPath("/WEB-INF/views/edit/home.jsp");
			scan = new Scanner(new FileInputStream(bodyres));
			
			String bodyResult = "";
			
			while ( scan.hasNext() ) {
				bodyResult += scan.nextLine();
			}
			scan.close();
			String[] bodySplit = bodyResult.split(">");
			String bodySplitString = "";
			for ( String i : bodySplit ) {
				bodySplitString += i+">\n";
			}
			System.out.println("bodySplitString 값 확인 : "+ bodySplitString);

			// footer 파일 함수 생성
			/////////////////////////////////
			String footerres = request.getSession().getServletContext().getRealPath("/WEB-INF/views/edit/footer.jsp");
			scan = new Scanner(new FileInputStream(footerres));
			
			String footerResult = "";
			
			while ( scan.hasNext() ) {
				footerResult += scan.nextLine();
			}
			scan.close();
			String[] footerSplit = footerResult.split(">");
			String footerSplitString = "";
			for ( String i : footerSplit ) {
				footerSplitString += i+">\n";
			}
			System.out.println("footerSplitString 값 확인 : "+ footerSplitString);
			/////////////////////////////////
			
			
			// 파일 저장
			FileWriter writer = null;
			
			// 사용자 파일 저장 경로
			File newHeadPage = new File(newPageRes+"/"+"head.jsp");
			File newBodyPage = new File(newPageRes+"/"+"home.jsp");
			File newFooterPage = new File(newPageRes+"/"+"footer.jsp");
			
			String readHeadSplit = newHeadPage.toString();
			String readBodySplit = newBodyPage.toString();
			String readFooterSplit = newFooterPage.toString();
			
			String readHeadTrue = readHeadSplit.substring(readHeadSplit.indexOf("webapp")+7);
			String readBodyTrue = readBodySplit.substring(readBodySplit.indexOf("webapp")+7);
			String readFooterTrue = readFooterSplit.substring(readFooterSplit.indexOf("webapp")+7);
			
			
			String headRead = readHeadTrue.replace("\\", "/");
			String bodyRead = readBodyTrue.replace("\\", "/");
			String footerRead = readFooterTrue.replace("\\", "/");
			

			System.out.println("head 변환 경로 값 : "+ headRead);
			System.out.println("body 변환 경로 값 : "+ bodyRead);
			System.out.println("footer 변환 경로 값 : "+ footerRead);
			
			
			
			
			
			if ( !newHeadPage.exists() ) {
				writer = new FileWriter(newHeadPage, false);
				writer.write(headSplitString);
				writer.flush();
				writer.close();
				
			} 
			if ( !newBodyPage.exists() ) {
				
				writer = new FileWriter(newBodyPage, false);
				writer.write(bodySplitString);
				writer.flush();
				writer.close();
				
			}
			if ( !newFooterPage.exists() ) {
				
				writer = new FileWriter(newFooterPage, false);
				writer.write(footerSplitString);
				writer.flush();
				writer.close();
			}
			
			model.addAttribute("editPageHead", headRead).addAttribute("editPageBody", bodyRead).
			addAttribute("editPageFooter", footerRead);
			
			session.setAttribute("fileCreate", newBodyPage.exists());

			System.out.println(newBodyPage.exists());
			
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
			String currentPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/member/"+ m.getM_code());
			
			
			// 받아올 db의 파일이름
			String userFileName = "home";
			
			File currentPage = new File(currentPageRes+"/"+ userFileName +".jsp");
			
			if ( !currentPage.exists() ) {
				String loc = "/"; 
				String msg = "잘못된 접근 경로 입니다.";
				
				model.addAttribute("loc", loc);
				model.addAttribute("msg", msg);
				
				return "common/msg";
			}
			
			String readSplit = currentPage.toString();
			
			String readTrue = "";
			readTrue = readSplit.substring(readSplit.indexOf("webapp")+7);
			
			
			String read = readTrue.replace("\\", "/");
			
			model.addAttribute("editPageBody", read);
			
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
	public Map<String, Object> editOop(Model model, @RequestParam String edit, HttpSession session, HttpServletRequest request) throws Exception {
		
		Member m = (Member)session.getAttribute("m");
		
		FileWriter writer = null;
		
		String editHead;
		String editBody;
		
		if ( m != null ) {
			System.out.println("세션 아이디 확인 : "+ m.getM_code());
			
			editHead = edit.substring(0, ( edit.indexOf(("<div class=\"edit-view-body-wrap\"")) ) );
			editBody = edit.substring( ( edit.indexOf(("<div class=\"edit-view-body-wrap\"")) ), 
					( edit.indexOf(("<div class=\"edit-view-foot-wrap\"")) ) );
			
			System.out.println("editHead 추출 : "+ editHead);
			System.out.println("editBody 추출 : "+ editBody);
			
			// 사용자 폴더 경로 받아오기
			String currentPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/member/"+ m.getM_code());
			
			// 받아올 db의 파일 이름
			String userFileName = "home";
			
			// 사용자의 head jsp 파일 받아오기
			File headPage = new File(currentPageRes+"/home.jsp");
			
			// 사용자의 body jsp 파일 받아오기
			File currentBodyPage = new File(currentPageRes+"/"+ userFileName +".jsp");
			
			
			System.out.println("File headPage 확인 : "+headPage);
			
			// head 파일 함수 생성
			/////////////////////////////////
			String headres = currentPageRes+"/head.jsp";
			scan = new Scanner(new FileInputStream(headres));
			
			String headResult = "";
			
			while ( scan.hasNext() ) {
				headResult += scan.nextLine();
			}
			scan.close();
			String[] headSplit = headResult.split(">");
			String headSplitString = "";
			for ( String i : headSplit ) {
				headSplitString += i+">\n";
			}
			System.out.println("headSplitString 값 확인 : \n"+ headSplitString);
			/////////////////////////////////
			
			
			
			
			// body 파일 함수 생성
			/////////////////////////////////
			String bodyres = currentPageRes+"/home.jsp";
			scan = new Scanner(new FileInputStream(bodyres));
			
			String bodyResult = "";
			
			while ( scan.hasNext() ) {
				bodyResult += scan.nextLine();
			}
			scan.close();
			String[] bodySplit = bodyResult.split(">");
			String bodySplitString = "";
			for ( String i : bodySplit ) {
				bodySplitString += i+">\n";
			}
			//System.out.println("bodySplitString 값 확인 : \n"+ bodySplitString);

			String bodyHead = bodySplitString.substring(0,bodySplitString.indexOf("<div class=\"edit-view-body-wrap"));
			String bodyReal = bodySplitString.substring(bodySplitString.indexOf("<div class=\"edit-view-body-wrap"), 
					bodySplitString.indexOf("<%@ include file=\"footer.jsp\" %>"));
			String bodyFoot = bodySplitString.substring(bodySplitString.indexOf("<%@ include file=\"footer.jsp\" %>"));
			
			
			//System.out.println("bodyHead : \n"+ bodyHead);
			//System.out.println("bodyHead : \n"+ bodyReal);
			//System.out.println("bodyHead : \n"+ bodyFoot);
			
			String bodyTotal = bodyHead+ editBody+ bodyFoot;
			
			System.out.println("버리 토럴 : "+ bodyTotal);
			
//			if ( !headPage.exists() ) {
//				writer = new FileWriter(headPage, true);
//				writer.write();
//				writer.flush();
//				writer.close();
//			}
//			
//			if ( !currentBodyPage.exists() ) {
//				writer = new FileWriter(currentBodyPage, true);
//				writer.write();
//				writer.flush();
//				writer.close();
//			}
			
			
		}
		Map<String, Object> map = new HashMap<>();
		
		//System.out.println("edit 값 : "+ edit);
		
		
		
		String editLog = edit.toString();
		
		//System.out.println("editLog 값 : "+ editLog);
		
		map.put("editLog", editLog);
		return map;
	}
}
