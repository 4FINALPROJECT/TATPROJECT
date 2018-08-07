package com.kh.TAT.editPage.controller;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.editPage.model.service.EditService;

@SessionAttributes(value={"m_code"})
@Controller
public class EditController {

   private Scanner scan;
   
   @Autowired
   EditService editS;
   
   // 편집 페이지 메인 이동
   @RequestMapping(value="/edit/Main.tat", method={RequestMethod.GET, RequestMethod.POST})
   public String edit(HttpServletRequest request, HttpSession session, Model model) throws Exception {
      
      
      String m_code = (String) session.getAttribute("m_code");
      String e_code = request.getParameter("e_code");
            
      String loc = "/"; 
      String msg = "";

      String page = request.getParameter("cururl");
      
      if ( page == null ) {
         page = "home";
      }
      
      if ( m_code != null && e_code != null ) {
         
         
         Member member = editS.memberSelectPayment(m_code);
         
         System.out.println("member값 확인  : " + member.getIs_usable());
         
         request.setAttribute("member" , member);
         
         System.out.println("e_code 확인 : "+e_code);
         Edit edit = editS.projectSelectOne(e_code);
         
         
         //System.out.println("쿼리문 결과 확인 : "+ edit);
         System.out.println("쿼리문 프로젝트 이름 : "+ edit.getProj_name());
         //System.out.println(m_code);
         
         //String newPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/member/"+ m_code);
         String newPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/member/"+ m_code+ "/"+ edit.getE_code());

         File userFile = new File(newPageRes);
         
         // 폴더 생성
         if ( !userFile.exists() ) {
            userFile.mkdirs();
            //System.out.println("유저의 파일 저장 경로 확인 : "+ userFile.mkdirs());
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
         //System.out.println("headSplitString 값 확인 : "+ headSplitString);
         /////////////////////////////////
         
         // body 파일 함수 생성
         /////////////////////////////////
         String bodyres = request.getSession().getServletContext().getRealPath("/WEB-INF/views/edit/"+ page+ ".jsp");
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
         //System.out.println("bodySplitString 값 확인 : "+ bodySplitString);

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
         //System.out.println("footerSplitString 값 확인 : "+ footerSplitString);
         /////////////////////////////////
         
         
         // 파일 저장
         FileWriter writer = null;
         
         // 사용자 파일 저장 경로
         File newHeadPage = new File(newPageRes+"/"+"head.jsp");
         File newBodyPage = new File(newPageRes+"/"+ page +".jsp");
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
         request.setAttribute("fN", edit.getE_code());
         request.setAttribute("cururl", page);
         request.setAttribute("edit", edit);
         System.out.println(newBodyPage.exists());
         
         return "editPage/editPage_Main";
         
      } else if ( m_code == null ) {
         // 에러페이지 처리
         msg = "로그인 해주세요.";
         
      } else if ( e_code == null ){
         // 에러페이지 처리
         loc = "/my/Project.tat";
         msg = "잘못된 접근경로 입니다.";
         model.addAttribute("loc", loc);
         model.addAttribute("msg", msg);
         
         return "myPage/common/msg";
      } 
         model.addAttribute("loc", loc);
         model.addAttribute("msg", msg);
      
      return "mainPage/common/msg";
      
   }
   
   
   @RequestMapping("/edit/newPage.tat")
   public String newPage(HttpSession session, HttpServletRequest request, Model model) throws Exception {
      
      String m_code = (String) session.getAttribute("m_code");
      String e_code = request.getParameter("e_code");
      
      String loc = "/"; 
      String msg = "";
      
      if ( m_code != null && e_code != null ) {
         System.out.println("e_code 확인 : "+e_code);
         Edit edit = editS.projectSelectOne(e_code);
         
         
         //System.out.println("쿼리문 결과 확인 : "+ edit);
         System.out.println("쿼리문 프로젝트 이름 : "+ edit.getProj_name());
         //System.out.println(m_code);
         
         //String newPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/member/"+ m_code);
         String newPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/member/"+ m_code+ "/"+ edit.getE_code());

         File userFile = new File(newPageRes);
         
         // 폴더 생성
         if ( !userFile.exists() ) {
            userFile.mkdirs();
            //System.out.println("유저의 파일 저장 경로 확인 : "+ userFile.mkdirs());
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
         //System.out.println("headSplitString 값 확인 : "+ headSplitString);
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
         //System.out.println("bodySplitString 값 확인 : "+ bodySplitString);

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
         //System.out.println("footerSplitString 값 확인 : "+ footerSplitString);
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
         
         Member member = editS.memberSelectPayment(m_code);
         
         System.out.println("member값 확인  : " + member.getIs_usable());
         
         request.setAttribute("member" , member);
         
         model.addAttribute("editPageHead", headRead).addAttribute("editPageBody", bodyRead).
         addAttribute("editPageFooter", footerRead);
         
         session.setAttribute("fileCreate", newBodyPage.exists());
         request.setAttribute("fN", edit.getE_code());

         
         System.out.println(newBodyPage.exists());
         
         return "editPage/editPage_Main";
         
      } else if ( m_code == null ){
         // 에러페이지 처리
         msg = "로그인 해주세요.";
         
      } else if ( e_code == null ) {
         // 에러페이지 처리
         msg = "잘못된 접근경로 입니다.";
         
      }
         model.addAttribute("loc", loc);
         model.addAttribute("msg", msg);
      
      return "mainPage/common/msg";
   }
   
   @RequestMapping("/edit/editCurrentPage.tat")
   public String editCurrentPage(HttpSession session, HttpServletRequest request, Model model) {
      
      String m_code = (String) session.getAttribute("m_code");
      
      if ( m_code != null ) {
         String currentPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/member/"+ m_code);
         
         
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
         
         Member member = editS.memberSelectPayment(m_code);
         
         System.out.println("member값 확인  : " + member.getIs_usable());
         
         request.setAttribute("member" , member);
         
         return "editPage/editPage_Main";
      } else {
         // 에러페이지 처리
         String loc = "/"; 
         String msg = "로그인 해주세요.";
         
         model.addAttribute("loc", loc);
         model.addAttribute("msg", msg);
         
         return "mainPage/common/msg";
      }
            
   }
   
   @ResponseBody
   @RequestMapping(value="/edit/editOop.tat", method=RequestMethod.POST)
   public Map<String, Object> editOop(Model model, @RequestParam String edit, HttpSession session, HttpServletRequest request, @RequestParam String folderName,
         @RequestParam String cururl) throws Exception {
      
      String m_code = (String)session.getAttribute("m_code");
      
      
      String editHead;
      String editBody;
      
      System.out.println("ajax folder 확인 : "+ folderName);
      System.out.println("cururl 파일 이름 확인 : "+ cururl);
      if ( m_code != null ) {
         //System.out.println("세션 아이디 확인 : "+ m_code);
         
         editHead = edit.substring(0, ( edit.indexOf(("<div class=\"edit-view-body-wrap\"")) ) );
         editBody = edit.substring( ( edit.indexOf(("<div class=\"edit-view-body-wrap\"")) ), 
               ( edit.indexOf(("<div class=\"edit-view-foot-wrap\"")) ) );
         
         System.out.println("editHead 추출 : "+ editHead);
         System.out.println("editBody 추출 : "+ editBody);
         
         // 사용자 폴더 경로 받아오기
         String currentPageRes = request.getSession().getServletContext().getRealPath("/WEB-INF/views/member/"+ m_code+ "/"+ folderName);
         
         // 받아올 db의 파일 이름
         String userFileName = cururl;
         
         // 사용자의 head jsp 파일 받아오기
         File headPage = new File(currentPageRes+"/head.jsp");
         
         // 사용자의 body jsp 파일 받아오기
         File currentBodyPage = new File(currentPageRes+"/"+ userFileName +".jsp");
         
         
         //System.out.println("File headPage 확인 : "+headPage);
         
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
         //System.out.println("headSplitString 값 확인 : \n"+ headSplitString);
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
         
         String headHead = headSplitString.substring(0, headSplitString.indexOf("<div class=\"edit-wrap"));
         
         
         System.out.println(" 추출 헤더 자료 확인 : \n" +headHead);
         
         String headTotal = headHead+ editHead;
         
         //System.out.println("헤드 토럴 : \n"+headTotal);
         


         String bodyHead = bodySplitString.substring(0,bodySplitString.indexOf("<div class=\"edit-view-body-wrap"));
//         String bodyReal = bodySplitString.substring(bodySplitString.indexOf("<div class=\"edit-view-body-wrap"), 
//               bodySplitString.indexOf("<%@ include file=\"footer.jsp\" %>"));
         String bodyFoot = bodySplitString.substring(bodySplitString.indexOf("<%@ include file=\"footer.jsp\" %>"));
         
         
         //System.out.println("bodyHead : \n"+ bodyHead);
         //System.out.println("bodyHead : \n"+ bodyReal);
         //System.out.println("bodyHead : \n"+ bodyFoot);
         
         String bodyTotal = "\t"+bodyHead+ editBody+ bodyFoot;
         
         //System.out.println("버리 토럴 : \n"+ bodyTotal);
         
         
         BufferedWriter outHead = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(headPage), "UTF-8"));
         outHead.write(headTotal);
         outHead.flush();
         outHead.close();
         
         BufferedWriter outBody = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(currentBodyPage),"UTF-8"));
         outBody.write(bodyTotal);
         outBody.flush();
         outBody.close();
         
      }
         Map<String, Object> map = new HashMap<>();
         
         String editLog = edit.toString();
         
         map.put("editLog", editLog);
         return map;
   }
   
   @ResponseBody
   @RequestMapping(value="/edit/createFile.tat", method=RequestMethod.POST)
   public Map<String, Object> createFile(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
      Map<String, Object> map = new HashMap<>();
      
      
      return map;
   }
   
   /*@RequestMapping("/edit/FileDownload.tat")
   public void fileDownload(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
      
      String m_code = (String) session.getAttribute("m_code");
      // e_code 를 받고 
      String e_code = request.getParameter("e_code");
      
      
      if ( m_code != null && e_code != null ) {
         Edit edit = editS.projectSelectOne(e_code);
         
         // 파일저장 디렉토리
         String saveDirectory = request.getSession().getServletContext().getRealPath("/WEB-INF/views/member/"+ m_code+ "/"+ edit.getE_code());
         
         File file = new File(saveDirectory);
         
         // 압축 파일경로 존재하는지 chk
         if ( !file.exists() ) {
            System.out.println("파일 존재 X");
         }
         
         FileOutputStream fos = null;
         ZipOutputStream zos = null;

         fos = new FileOutputStream(new File(edit.getProj_name()+".zip"));
         zos = new ZipOutputStream(fos);

         zos.close();
         fos.close();
         
      }
      
   }*/
   
   // 편집 페이지 공유하기
   @ResponseBody
   @RequestMapping(value="/edit/shareFile.tat", method=RequestMethod.POST)
   public int shareFile(HttpSession session, @RequestParam String e_code) {
	   String m_code = (String) session.getAttribute("m_code");
	   Edit shareProject = new Edit();
	   shareProject.setM_code(m_code);
	   shareProject.setE_code(e_code);
	   int result = editS.shareFile(shareProject);
	   
		return result;
   }


// 편집 페이지 공유 취소하기
	@ResponseBody
	@RequestMapping(value="/edit/cancleShareFile.tat", method=RequestMethod.POST)
	public int cancleShareFile(HttpSession session, @RequestParam String e_code) {
		   String m_code = (String) session.getAttribute("m_code");
		   Edit shareProject = new Edit();
		   shareProject.setM_code(m_code);
		   shareProject.setE_code(e_code);
		   int result = editS.cancleShareFile(shareProject);
		   
			return result;
	}
}
