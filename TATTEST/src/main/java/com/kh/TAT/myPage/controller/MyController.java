package com.kh.TAT.myPage.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.EditReplyBoard;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.QuestionAnswerBoard;
import com.kh.TAT.common.model.vo.QuestionCategory;
import com.kh.TAT.myPage.model.service.MyService;
import com.kh.TAT.myPage.model.service.mail.MailService;
import com.kh.TAT.myPage.model.vo.MyPayment;
import com.kh.TAT.myPage.model.vo.MyProject;

@Controller
public class MyController {

   @Autowired
   private BCryptPasswordEncoder bcryptPasswordEncoder;
   
   @Autowired
   MyService myS;
   
   @Autowired
   private MailService mailService;
   
   public void setMailService(MailService mailService) {
           this.mailService = mailService;
       }
   
   // 마이 페이지 메인 이동
   @RequestMapping("/my/Main.tat")
   public String my(HttpServletRequest request){
      
      HttpSession session = request.getSession(false);
      String m_code = (String)session.getAttribute("m_code");
      
      Member m = myS.selectOneMemberCode(m_code);
      request.setAttribute("m", m);
      
      List<MyProject> list = myS.selectAllProject(m_code);
      
      request.setAttribute("list", list);
      System.out.println("list : "+list);
      
      return "myPage/myPage_Main";
   }
   // 계정설정 페이지 이동
   @RequestMapping("/my/Info.tat")
   public String Info(HttpServletRequest request){
   
      HttpSession session = request.getSession(false);
      String m_code = (String)session.getAttribute("m_code");
      
      Member m = myS.selectOneMemberCode(m_code);
      request.setAttribute("m", m);
      
      return "myPage/myPage_Info";
   }
   
   // 결제정보 페이지 이동
   @RequestMapping("/my/Payment.tat")
   public String Payment(HttpServletRequest request){

      HttpSession session = request.getSession(false);
      String m_code = (String)session.getAttribute("m_code");
      
      MyPayment p = myS.selectOnePayment(m_code);
      request.setAttribute("p", p);
      
      List<MyPayment> pl = myS.selectListPayment(m_code);
      request.setAttribute("pl", pl);
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
   public String ProjectDetail(HttpServletRequest request, @RequestParam String e_code){
      
      
      
      Edit p = myS.selectOneProjectDetail(e_code);
      List<EditReplyBoard> rList = myS.selectListReply(e_code);
      int count = myS.countComment(e_code);
      
      request.setAttribute("p", p);
      request.setAttribute("rList", rList);
      request.setAttribute("count", count);
      
      return "myPage/myPage_ProjectDetail";
   }
   
   // 문의하기 페이지 이동
   @RequestMapping("/my/Question.tat")
   public String Question(HttpServletRequest request){
      
      HttpSession session = request.getSession(false);
      String m_code = (String)session.getAttribute("m_code");
      
      List<QuestionAnswerBoard> list = myS.selectQuestionBoard(m_code);
      List<QuestionAnswerBoard> widget = myS.widgetComment(m_code);
      List<QuestionCategory> categoryList = myS.selectCategory();
      
      
      request.setAttribute("list", list);
      request.setAttribute("widget", widget);
      request.setAttribute("categoryList", categoryList);
      System.out.println("위젯 : "+widget);
      System.out.println("list : "+list);
      
      return "myPage/myPage_Question";
   }
   // 게시물 상세보기 이동
   @RequestMapping("/my/QuestionDetail.tat")
   public String QuestionDetail(HttpServletRequest request, @RequestParam int qa_num){
      
      HttpSession session = request.getSession(false);
      String m_code = (String)session.getAttribute("m_code");
      
      List<QuestionAnswerBoard> list = myS.selectQuestionBoard(m_code);
      List<QuestionAnswerBoard> widget = myS.widgetComment(m_code);
      List<QuestionCategory> categoryList = myS.selectCategory();
      
      QuestionAnswerBoard QAB = myS.selectOneBoard(qa_num);
      
      request.setAttribute("list", list);
      request.setAttribute("widget", widget);
      request.setAttribute("QAB", QAB);
      request.setAttribute("categoryList", categoryList);
      
      return "myPage/myPage_QuestionDetail";
   }
   
   // 프로필 변경
   @RequestMapping(value="/my/updateProfile.tat", method=RequestMethod.POST)
   public String updateProfile(HttpServletRequest request, Member m){
      
      System.out.println("가져온 M 값 :"+m);
      
      HttpSession session = request.getSession(false);
      
      String m_code = (String)session.getAttribute("m_code");
      
      m.setM_code(m_code);
      
      System.out.println("밑에 m 값 : " + m);
   
      int result = myS.updateProfile(m);
      
      if(result > 0){
         
         m = myS.selectOneMemberCode(m.getM_code());
         
      }
      List<MyProject> list = myS.selectAllProject(m_code);
      
      request.setAttribute("list", list);
      
      request.setAttribute("m", m);
      
      return "myPage/myPage_Main";
   }
   // 비밀번호 변경시 기존 비밀번호와 맞는지 유무 확인
   @ResponseBody
   @RequestMapping(value="/my/validPwd.tat", method=RequestMethod.POST)
   public boolean checkPwd(HttpServletRequest req, @RequestParam String password1){
      
      boolean result = false;
      
      System.out.println("암호화 하기전 현재 비밀번호 : "+password1);
      
      Map<String, Object> map = new HashMap<>();
      
      HttpSession session = req.getSession(false);
      
      String m_code = (String) session.getAttribute("m_code");
      
      String chk = myS.checkPwd(m_code);
      
      System.out.println("데이터베이스에서 가져온 chk : " +chk);
      
      if(bcryptPasswordEncoder.matches(password1, chk)){
         
          result = true;
         
          return result;
      }
      
      return result;
   }
   
   
   // 위에 로직 후 비밀번호 변경
   @RequestMapping(value="/my/updatePassword.tat", method=RequestMethod.POST)
   public String updatePassword(HttpServletRequest req, 
                     @RequestParam String password2
                     ){
      System.out.println("받아온 비밀번호 : "+password2);
      
      HttpSession session = req.getSession(false);
      
      String m_code = (String) session.getAttribute("m_code");
      
      System.out.println("받아온 유저 PK : "+m_code);
            
      Member m = new Member();
      
      m.setM_code(m_code);
      m.setM_pwd(bcryptPasswordEncoder.encode(password2));
      
      int result = myS.updatePassword(m);
      
      
      return "redirect:/main/memberLogout.tat";
      
   }
   
//   이메일 중복 확인
   @ResponseBody
   @RequestMapping("/my/validEmail.tat")
   public Map<String, Object> checkIdDuplicate(@RequestParam String chk){
      
      System.out.println("현재 이메일 : "+chk);
      
      Map<String, Object> map = new HashMap<>();
      
      int isUsable = myS.checkEmailDuplicate(chk) == 0 ? 0 : 1;
      
      map.put("isUsable", isUsable);
      
      System.out.println(map);
      return map;
   
      
   }
   
   // 회원가입 이메일 인증번호 보내기
      @ResponseBody         
       @RequestMapping("/my/sendNumber.tat")
       public String sendMailAuth(HttpSession session, @RequestParam String email) {
          
         int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
          
           String joinCode = String.valueOf(ran);
    
           String subject = "이메일 변경 관련 인증 코드 발급 안내 입니다.";
           
           StringBuilder sb = new StringBuilder();
           
           sb.append("<html><body><h1>TAT 계정변경</h1><br></body></html>귀하의 인증 코드는" + joinCode + " 입니다.");
          
           System.out.println("인증받을 이메일 : " +email);
           System.out.println("인증키 : "+joinCode);
           System.out.println("제목 : "+subject);
     
           boolean emailChk = mailService.send(subject, sb.toString(), "tatcompany.no1@gmail.com", email);
           
           if(emailChk == true){
              
           return joinCode;
           
           }
           
         return "??";    
       }
   // 이메일 변경
      
      @RequestMapping(value="/my/updateEmail.tat", method=RequestMethod.POST)
      public String updateEmail(HttpServletRequest req, @RequestParam String email){
         
         HttpSession session = req.getSession(false);
         
         String m_code = (String) session.getAttribute("m_code");
         
         Member m = new Member();
         
         m.setM_code(m_code);
         m.setM_email(email);
         
         int result = myS.updateEmail(m);
         
         return "redirect:/main/memberLogout.tat";
         
      }
      
   // 1:1 게시물 작성
      @RequestMapping("/my/WriteBoard.tat")
      public String writeBoard(HttpSession session,HttpServletRequest request, 
                           @RequestParam String title, 
                           @RequestParam String content, 
                           @RequestParam String category
                           ){
         String openYN = request.getParameter("openYN");
         
         if(openYN == null) openYN = "N";
         
         System.out.println(title);
         System.out.println(content);
         System.out.println(category);
         System.out.println("체크 박스 값 : "+openYN);
         
         String m_code = (String) session.getAttribute("m_code");
         
         QuestionAnswerBoard qab = new QuestionAnswerBoard();
         
         qab.setQa_title(title);
         qab.setQa_content(content);
         qab.setQc_code(category);
         qab.setM_code(m_code);
         qab.setIs_open(openYN);
         
         int result = myS.insertWriteBoard(qab);
         
         return "redirect:/my/Question.tat";
      }
      
   // 프로젝트 생성 
      
   @RequestMapping("/my/createProject.tat")
   public String writeBoard(HttpSession session,HttpServletRequest request, @RequestParam String proj_name, @RequestParam String proj_comment){
      
      String m_code = (String) session.getAttribute("m_code");
      
      System.out.println("proj_name : "+ proj_name);
      System.out.println("proj_name : "+ proj_comment);
      
      Edit newProject = new Edit();  
      
      newProject.setProj_name(proj_name);
      newProject.setProj_comment(proj_comment);
      newProject.setM_code(m_code);
      
      int result = myS.createProject(newProject);
      
      return "redirect:/my/Project.tat";
   }
   
   // 프로젝트 댓글 작성
   @RequestMapping(value="/my/insertProjectReply.tat",method={RequestMethod.GET, RequestMethod.POST})
   public String insertProjectReply(HttpServletRequest request,  @RequestParam String er_reply,@RequestParam String e_code, @RequestParam String img){
      
           HttpSession session = request.getSession(false);
         String m_code = (String)session.getAttribute("m_code");
        
         
         System.out.println("m_code : "+m_code);
         System.out.println("er_reply : "+er_reply);
         System.out.println("e_code : "+e_code);
         
         EditReplyBoard ERB = new EditReplyBoard();
         
         ERB.setE_code(e_code);
         ERB.setM_code(m_code);
         ERB.setEr_reply(er_reply);
         
         myS.insertProjectReply(ERB);
         
   
      
      return "redirect:/my/ProjectDetail.tat?e_code="+e_code+"&img="+img;
   }
   
   
  //프로젝트 명 변경
   @RequestMapping(value="/my/updateProjectName.tat",method={RequestMethod.GET, RequestMethod.POST})
   public String updateProjectName(@RequestParam String e_code,  @RequestParam String proj_name, @RequestParam String img){
      
           
         System.out.println("e_code : "+e_code);
         
         Edit edit = new Edit();
         
         edit.setE_code(e_code);
         edit.setProj_name(proj_name);
         
         
         int result =myS.updateProjectName(edit);
         
   
      
      return "redirect:/my/ProjectDetail.tat?e_code="+e_code+"&img="+img;
   }
   
   //프로젝트 설명 변경
   @RequestMapping(value="/my/updateProjectComment.tat",method={RequestMethod.GET, RequestMethod.POST})
   public String updateProjectComment(@RequestParam String e_code, @RequestParam String proj_comment, @RequestParam String img){
      
           
         System.out.println("e_code : "+e_code);
         
         Edit edit = new Edit();
         
         edit.setE_code(e_code);
         edit.setProj_comment(proj_comment);
         
         int result =myS.updateProjectComment(edit);
         
   
      
      return "redirect:/my/ProjectDetail.tat?e_code="+e_code+"&img="+img;
   }
   
}