package com.kh.TAT.mainPage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.messaging.MessagingException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.EditReplyBoard;
import com.kh.TAT.common.model.vo.Email;
import com.kh.TAT.common.model.vo.EmailSender;
import com.kh.TAT.common.model.vo.FaqBoard;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.Payment;
import com.kh.TAT.common.model.vo.QuestionAnswerBoard;
import com.kh.TAT.common.model.vo.Template;
import com.kh.TAT.common.model.vo.TemplateReplyBoard;
import com.kh.TAT.mainPage.model.service.MainService;

@Controller
@SessionAttributes(value={"m", "f", "g", "qa", "p", "te", "edit", "temp", "m_code", "v_code", "m_name", "ter", "tempReply","er", "editReply", "editlist", "question"})
public class MainController {

   @Autowired
   MainService mainS;
   
   @Autowired
   private BCryptPasswordEncoder bcryptPasswordEncoder;
   
   @Autowired
   private EmailSender emailSender;
      
    @Autowired
   private Email email;
      
   @Autowired
   private JavaMailSender mailSender;
   
   private String pageRemember = "mainPage/logoutPage";
   
   // 기능소개 페이지 이동
   @RequestMapping("/main/Feature.tat")
   public String Feature(){
      pageRemember = "mainPage/mainPage_Feature";
      return pageRemember;
   }
   
   // 둘러보기 페이지 이동
   @RequestMapping("/main/Explore.tat")
   public ModelAndView Explore(Edit ed){
      
      ModelAndView mv = new ModelAndView();
      
      List<Map<String, String>> Editlist = mainS.selectEditBoard();
      
      mv.addObject("edit", Editlist);
      
      pageRemember = "mainPage/mainPage_Explore";
      
      mv.setViewName(pageRemember);
      
      return mv;
   }
   
   // 둘러보기 최신 날짜순 정렬
   @RequestMapping("/main/DateRecent.tat")
   public ModelAndView DateRecent(Edit ed){
      
      ModelAndView mv = new ModelAndView();
      
      List<Map<String, String>> Editlist = mainS.selectRecentBoard();
      
      mv.addObject("edit", Editlist);
      
      pageRemember = "mainPage/mainPage_Explore";
      
      mv.setViewName(pageRemember);
      
      return mv;
   }
   
   // 둘러보기 댓글 개수순 정렬
      @RequestMapping("/main/ReplyCount.tat")
      public ModelAndView ReplyCount(Edit ed, HttpServletRequest request){
         
         ModelAndView mv = new ModelAndView();
         
         String e_code = request.getParameter("e_code");
         
         List<Map<String, String>> Editlist = mainS.selectReplyCountBoard();
         
         mv.addObject("edit", Editlist);
         
         pageRemember = "mainPage/mainPage_Explore";
         
         mv.setViewName(pageRemember);
         
         return mv;
      }
   
      // 둘러보기 별점순 정렬
         @RequestMapping("/main/RateCount.tat")
         public ModelAndView RateCount(Edit ed){
               
         ModelAndView mv = new ModelAndView();
               
         List<Map<String, String>> Editlist = mainS.selectRateCountBoard();
               
         mv.addObject("edit", Editlist);
               
         pageRemember = "mainPage/mainPage_Explore";
               
         mv.setViewName(pageRemember);
               
         return mv;
         
         }
               
      
   // 둘러보기 상세보기 페이지 이동
   @RequestMapping("/main/ExploreDetail.tat")
   public ModelAndView ExploreDetail(HttpServletRequest request, Edit edit, Edit newedit){
      String e_code = request.getParameter("e_code");
      String m_code = request.getParameter("m_code");
      String msg = null;
      
      System.out.println("m_code : "+ m_code);
      
      ModelAndView mv = new ModelAndView();
      mv.addObject("v_code", m_code);
      
      edit = mainS.editDetail(e_code);
      newedit.setE_code(e_code);
      newedit.setM_code(m_code);
      List<Map<String, String>> EditReplylist = mainS.EditreplyBoard(e_code);
      
      /*List<Map<String, String>> editlist = mainS.selectEditBoard();*/
      
      List<Map<String, String>> editlist = mainS.selectEdit(newedit);
      
      mv.addObject("editlist", editlist);
      mv.addObject("msg", msg);
      mv.addObject("edit", edit);
      
      mv.addObject("editReply", EditReplylist);
      /*String m_code = (String) session.getAttribute("m_code");
      Member m = mainS.selectOneMCode(m_code);
      mv.addObject("m", m);*/
      
      pageRemember = "mainPage/mainPage_ExploreDetail";
      
      mv.setViewName(pageRemember);
      
      return mv;
   }
   
   // 둘러보기 댓글 작성
   @RequestMapping("/main/insertEditReply.tat")
   public ModelAndView insertEditReply(EditReplyBoard er,  HttpServletRequest request, Edit edit,
      @RequestParam String er_reply, @RequestParam int er_rate, EditReplyBoard editReply){
      
      ModelAndView mv = new ModelAndView();
      String msg = "";
      
      String e_code = request.getParameter("e_code");
      String m_code = request.getParameter("m_code");
      String m_code2 = request.getParameter("m_code2");
      
      // System.out.println("e_code : " + er.getE_code());
      System.out.println("m_code : " + m_code2);
      
      //ter.setT_code(t_code);
      //ter.setM_code(m_code);
      //ter.setM_code(ter.getM_code());
      er.setEr_reply(er_reply);
      er.setEr_rate(er_rate);
      edit.setE_code(e_code);
      int result = mainS.insertEditReplyBoard(er);
      
      if(result > 0){
         msg = "댓글 등록 성공!";
         
         mv.addObject("v_code", m_code2);   
         
         mv.addObject("msg", msg);
         List<Map<String, String>> editReplylist = mainS.EditreplyBoard(er.getE_code());
         
         System.out.println(editReplylist);
               
         mv.addObject("editReply", editReplylist);
         mv.addObject("edit", edit);
         mv.addObject("er", er);
         
         pageRemember = "mainPage/mainPage_ExploreDetail";
         
         mv.setViewName(pageRemember);
      } else {
         pageRemember = "mainPage/common/mainPage_error";
         
         mv.setViewName(pageRemember);
         System.out.println("등록 실패!!");
      }
      
      return mv;
   }
   
   // 둘러보기 댓글 삭제 //
   @RequestMapping("/main/DeleteEditReply.tat")
   public ModelAndView DeleteEditReply(HttpServletRequest request, EditReplyBoard er){
      ModelAndView mv = new ModelAndView();
      
      String m_code = request.getParameter("m_code");
      int er_num = Integer.parseInt(request.getParameter("er_num"));
      String e_code = request.getParameter("e_code");
      String msg = "";
      
      er.setM_code(m_code);
      er.setEr_num(er_num);
      er.setE_code(e_code);
      
      mainS.DeleteEditReply(er);
      msg = "삭제 성공";
      
      List<Map<String, String>> editReplylist = mainS.EditreplyBoard(e_code);
      mv.addObject("er", er);
      mv.addObject("editReply", editReplylist);
      mv.addObject("msg", msg);
      
      pageRemember = "mainPage/mainPage_ExploreDetail";
      
      mv.setViewName(pageRemember);
      
      return mv;
   }
   
   // 둘러보기 댓글 수정 //
   @RequestMapping("/main/UpdateEditReply.tat")
   public ModelAndView UpdateEditReply(HttpServletRequest request, EditReplyBoard er){
      ModelAndView mv = new ModelAndView();
      
      String er_reply = request.getParameter("er_reply");
      String e_code = request.getParameter("e_code");      
      int er_num = Integer.parseInt(request.getParameter("er_num"));
      String msg = "";
      
      er.setEr_reply(er_reply);
      er.setE_code(e_code);
      er.setEr_num(er_num);
      
      mainS.UpdateEditReply(er);
      msg = "수정 완료";
      List<Map<String, String>> EditReplylist = mainS.EditreplyBoard(e_code);
      mv.addObject("editReply", EditReplylist);
      mv.addObject("msg", msg);
      
      pageRemember = "mainPage/mainPage_ExploreDetail";
      
      mv.setViewName(pageRemember);
      
      return mv;
   }
   // 프리미엄 페이지 이동
   @RequestMapping("/main/Upgrade.tat")
   public ModelAndView Upgrade(HttpServletRequest request){
      HttpSession session = request.getSession(false);
      ModelAndView mv = new ModelAndView();

      String m_code = (String) session.getAttribute("m_code");
      Member m = mainS.selectOneMCode(m_code);
      mv.addObject("m", m);
      
      pageRemember = "mainPage/mainPage_Upgrade";
      
      mv.setViewName(pageRemember);
      return mv;
   }
   
   // 템플릿 페이지 이동
   @RequestMapping("/main/Template.tat")
   public ModelAndView TemplateS(Template te){
      
      String msg = "";
      String loc = "/";
      
      ModelAndView mv = new ModelAndView();
      
      List<Map<String, String>> templist = mainS.selectTemplateBoard();
      
      msg = "Template Success";
      
      mv.addObject("te", templist);
      mv.addObject("msg", msg);
      mv.addObject("loc", loc);
      
      pageRemember= "mainPage/mainPage_Template";
      
      mv.setViewName(pageRemember);
      return mv;
   }
   
   // 템플릿 상세보기 페이지 이동
   @RequestMapping("/main/TemplateDetail.tat")
   public ModelAndView TemplateDetail(HttpServletRequest request, Template temp, TemplateReplyBoard tempReply){
      HttpSession session = request.getSession(false);
      
      String t_code = request.getParameter("t_code");
      String msg = "템플릿 상세보기 접속";
      
      ModelAndView mv = new ModelAndView();
      
      temp = mainS.tempDetail(t_code);
      List<Map<String, String>> tempReplylist = mainS.replyBoard(t_code);
      
      mv.addObject("temp", temp);
      mv.addObject("msg", msg);
      mv.addObject("tempReply", tempReplylist);
      /*String m_code = (String) session.getAttribute("m_code");
      Member m = mainS.selectOneMCode(m_code);
      mv.addObject("m", m);*/
      pageRemember = "mainPage/mainPage_TemplateDetail";
      
      mv.setViewName(pageRemember);
      
      System.out.println("보자보자"+ tempReplylist);
      return mv;
   }
   
   // 댓글 등록 메소드
   @RequestMapping("/main/insertReply.tat")
   public ModelAndView insertReply(TemplateReplyBoard ter, 
         @RequestParam String tr_reply, @RequestParam int tr_rate, TemplateReplyBoard tempReply){
      
      ModelAndView mv = new ModelAndView();
      String msg = "";
      /*
      String t_code = request.getParameter("t_code");
      String m_code = request.getParameter("m_code");
      */
      System.out.println("t_code : " + ter.getT_code());
      System.out.println("m_code : " + ter.getM_code());
      
      //ter.setT_code(t_code);
      //ter.setM_code(m_code);
      //ter.setM_code(ter.getM_code());
      ter.setTr_reply(tr_reply);
      ter.setTr_rate(tr_rate);
      
      int result = mainS.insertReplyBoard(ter);
      
      if(result > 0){
         msg = "댓글 등록 성공!";
         mv.addObject("msg", msg);
         List<Map<String, String>> tempReplylist = mainS.replyBoard(ter.getT_code());
         System.out.println(tempReplylist);
         mv.addObject("tempReply", tempReplylist);
         mv.addObject("ter", ter);
         pageRemember = "mainPage/mainPage_TemplateDetail";
         
         mv.setViewName(pageRemember);
      } else {
         pageRemember = "mainPage/common/mainPage_error";
         
         mv.setViewName(pageRemember);
         System.out.println("등록 실패!!");
      }
      
      return mv;
   }
   
   // 댓글 삭제 메소드
   @RequestMapping("/main/DeleteReply.tat")
   public ModelAndView DeleteReply(HttpServletRequest request, TemplateReplyBoard ter){
      ModelAndView mv = new ModelAndView();
      
      String m_code = request.getParameter("m_code");
      int tr_num = Integer.parseInt(request.getParameter("tr_num"));
      String t_code = request.getParameter("t_code");
      String msg = "";
      
      ter.setM_code(m_code);
      ter.setTr_num(tr_num);
      
      
      System.out.println("삭제할 아이디값: "+m_code);
      System.out.println("삭제할 댓글번호 값: "+tr_num);
      
      mainS.DeleteReply(ter);
      msg = "삭제 성공";
      
      List<Map<String, String>> tempReplylist = mainS.replyBoard(t_code);
      mv.addObject("tempReply", tempReplylist);
      mv.addObject("msg", msg);
      
      pageRemember = "mainPage/mainPage_TemplateDetail";
      
      mv.setViewName(pageRemember);
      
      return mv;
   }
   
   // 템플릿 댓글 수정
   @RequestMapping("/main/UpdateReply.tat")
   public ModelAndView UpdateReply(HttpServletRequest request, TemplateReplyBoard ter){
      ModelAndView mv = new ModelAndView();
      
      String tr_reply = request.getParameter("tr_reply");
      String t_code = request.getParameter("t_code");      
      int tr_num = Integer.parseInt(request.getParameter("tr_num"));
      String msg = "";
      
      ter.setTr_reply(tr_reply);
      ter.setT_code(t_code);
      ter.setTr_num(tr_num);
      
      mainS.UpdateReply(ter);
      msg = "수정 성공";
      
      List<Map<String, String>> tempReplylist = mainS.replyBoard(t_code);
      mv.addObject("tempReply", tempReplylist);
      mv.addObject("msg", msg);
      
      pageRemember = "mainPage/mainPage_TemplateDetail";
      
      mv.setViewName(pageRemember);
      
      return mv;
   }
   
   // 제휴신청 페이지 이동
   @RequestMapping("/main/Affiliate.tat")
   public String Affiliate(){
      pageRemember = "mainPage/mainPage_Affiliate";
      return pageRemember;
   }
   
   // 1:1문의 페이지 이동
   @RequestMapping("/main/Question.tat")
   public ModelAndView Question(QuestionAnswerBoard qa){
      
      String msg = "";
      String loc = "/";
      
      ModelAndView mv = new ModelAndView();
      
      List<Map<String, String>> qalist = mainS.selectAnswerBoard();
      
      msg = "QA Success";
      
      mv.addObject("qa", qalist);
      mv.addObject("msg", msg);
      mv.addObject("loc", loc);
      
      pageRemember = "mainPage/mainPage_Question";
      
      mv.setViewName(pageRemember);
      
      return mv;
   }
   
   // 1:1 디테일 페이지 //
   @RequestMapping("/main/QuestionDetail.tat")
   public ModelAndView QuestionDetail(HttpServletRequest request, QuestionAnswerBoard question){
      ModelAndView mv = new ModelAndView();
      
      int qa_num = Integer.parseInt(request.getParameter("qa_num"));      
      
      question = mainS.QuestionBoard(qa_num);
      
      mv.addObject("question", question);
      mv.setViewName("mainPage/mainPage_QuestionDetail");
      
      return mv;
   }
   
   // FAQ 페이지 이동
   @RequestMapping("/main/Faq.tat")
   public ModelAndView Faq(FaqBoard faq){
      
      String msg = "";
      String loc = "/";
      
      ModelAndView mv = new ModelAndView();
      
      List<Map<String, String>> faqlist = mainS.selectFaqBoard();
      
      msg = "QA Success";
      
      mv.addObject("faq", faqlist);
      mv.addObject("msg", msg);
      mv.addObject("loc", loc);
      
      pageRemember = "mainPage/mainPage_Faq";
      
      mv.setViewName(pageRemember);
      return mv;
   }
   
   // 회사 소개 페이지 이동
   @RequestMapping("/main/About.tat")
   public String About(){
      pageRemember = "mainPage/mainPage_About";
      return pageRemember;
   }
   
   // 회원가입 메소드
      @RequestMapping("/main/memberInsert.tat")
      public String memberInsert(HttpServletRequest request, Member member, Payment p, Model model){
         
         System.out.println("회원가입 시작!");
         
         String rawPassword = member.getM_pwd();
         
         member.setM_pwd(bcryptPasswordEncoder.encode(rawPassword));
         
         int result = mainS.insertMember(member);
         
         System.out.println("비밀번호 : "+member.getM_pwd());
         
         String loc = "/";
         String msg = "";
         
         if(result > 0) msg = "회원가입 성공!";
         else msg = "회원가입 실패!";
         
         model.addAttribute("loc", loc);
         model.addAttribute("msg", msg);
         
         return "mainPage/common/msg";
      }
      
      // 로그인 부분
      @RequestMapping(value="/main/Main.tat", method={RequestMethod.POST,RequestMethod.GET})
      public ModelAndView memberLogin(@RequestParam String m_email,
            @RequestParam String m_pwd, HttpServletRequest request, Payment p){
         HttpSession session = request.getSession();
         /*
         String m_code = request.getParameter("m_code");
         String p_code = request.getParameter("p_code");
         
         p.setM_code(m_code);
         p.setP_code(p_code);*/
         
         ModelAndView mv = new ModelAndView();
         
         Member m = mainS.selectOneMember(m_email);
         
         String msg = "";
         String loc = "/";         
         
         String code = "";
         String name = "";
         
         if(m == null) {
            msg = "존재하지 않는 이메일 입니다.";
         } else {
            System.out.println("M_CODE 값 : "+m.getM_code());
            System.out.println("PASSWORD: "+m.getM_pwd());
            if(bcryptPasswordEncoder.matches(m_pwd, m.getM_pwd())){
               msg = "로그인 성공!";
               code = m.getM_code();
               name = m.getM_name();
               // mv.addObject("m", m);
               mv.addObject("m_code", code);
               mv.addObject("m_name", name);
               // mv.addObject("p", p);
               System.out.println(mv);
            } else {
               msg = "비밀번호가 틀렸습니다.";
            }
         }
         mv.addObject("loc", loc);
         mv.addObject("msg", msg);
         mv.setViewName("mainPage/logoutPage");
         
         return mv;
      }
      
      // 로그아웃 부분
      @RequestMapping(value="/main/memberLogout.tat", method={RequestMethod.POST,RequestMethod.GET})
      public ModelAndView memberLogout(SessionStatus status, HttpServletRequest request){
         
         String pageSwap = request.getParameter("pageSwap");
         
         if( pageSwap == null ) {
            pageSwap = "";
         }
         
         // 현재 세션 상태가 끝났음을 확인
         if (!status.isComplete()){
            status.setComplete();
         }
         //System.out.println("받은 페이지 주소 : "+pageSwap);
         
         String swap = "";
         
         if ( pageSwap.indexOf("#") > 0 ) {
            swap = pageSwap.replace("#", "");
         } else {
            swap = pageSwap;
         }

         System.out.println("swap 값 : "+swap);

         RedirectView rv = new RedirectView();
         
         rv.setUrl("/TAT/");
         rv.setExposeModelAttributes(false);
         
         //mv.setView(rv);
         //mv.setViewName("redirect:/"+swap);
         
         //return "redirect:/";
         return new ModelAndView(rv);
      }
         
         // 이메일 중복체크 부분
         @ResponseBody
         @RequestMapping("/main/checkemailDup.tat")
         public Map<String, Object> checkemailDuplicate(@RequestParam String m_email){
            
            Map<String, Object> map = new HashMap<>();
            
            boolean isUsable
              = mainS.checkemailDuplicate(m_email) == 0 ? true : false;
            
            map.put("isUsable", isUsable);
            
            return map;
         }
         
         // 비밀번호 찾기(이메일 입력창으로 이동)
         @RequestMapping("/main/updatePw.tat")
         public String updatePW(){
            return "mainPage/searchPW";
         }
         
         // 비밀번호 재설정 페이지로 이동
         @RequestMapping("/main/updatePwd.tat")
         public String updatePWD(HttpServletRequest request, Model model){
            String email = request.getParameter("email");
            model.addAttribute("email", email);
            return "mainPage/updatePwd";
         }
         
         // 비밀번호 재설정 메소드
         @RequestMapping("/main/newPw.tat")
         public String newPw(HttpServletRequest request, Model model, Member m){
            String email = request.getParameter("email");
            String pwd = request.getParameter("m_pwd");
            m.setM_email(email);
            m.setM_pwd(pwd);
            
            String rawPassword = m.getM_pwd();
            m.setM_pwd(bcryptPasswordEncoder.encode(rawPassword));
            
            int result = mainS.changePWD(m);
            
            String loc = "/";
            String msg = "";
            
            if(result > 0) msg = "변경 성공!";
            else msg = "변경 실패!";
            
            model.addAttribute("loc", loc);
            model.addAttribute("msg", msg);
            
            return "mainPage/common/msg";
            
            
         }
         
         // 입력한 메일로 비밀번호 변경링크 발송
         @RequestMapping(value="/main/searchPw.tat", method=RequestMethod.POST)
          public ModelAndView sendEmailAction (@RequestParam Map<String, Object> paramMap, ModelMap model, ModelAndView mv) throws Exception {
       
            // String USERNAME = (String) paramMap.get("m_name");
              String EMAIL = (String) paramMap.get("email");
              String PASSWORD = mainS.getPw(paramMap);
              String content = "http://localhost:8088/TAT/main/updatePwd.tat?email="+EMAIL;
              String msg = "";
              if(PASSWORD != null) {
                  email.setContent("옆에 링크를 따라가시면 비밀번호 재설정을 할수 있습니다."+content); // 이메일로 보낼 메시지
                  email.setReceiver(EMAIL); // 받는이의 이메일 주소
                  email.setSubject("TAT 사이트의 비밀번호 찾기 메일입니다."); // 이메일로 보낼 제목
                   
                  try {
                      MimeMessage message = mailSender.createMimeMessage();
                      MimeMessageHelper messageHelper 
                      = new MimeMessageHelper(message, true, "UTF-8");
                       
                      messageHelper.setSubject(email.getSubject());
                      messageHelper.setText(email.getContent());
                      messageHelper.setTo(email.getReceiver());
                      messageHelper.setFrom("TAT"); // 보내는 이의 주소(root-context.xml 에서 선언했지만 적어줬음)
                      message.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReceiver()));
                      mailSender.send(message);
                       
                  }catch(MessagingException e) {
                      System.out.println("MessagingException");
                      e.printStackTrace();
                  }
                  msg = "입력한 이메일로 링크 전송!!";
                  mv.addObject("msg" , msg);
                  mv.setViewName("mainPage/common/msg");               
                  return mv;
              }else {
                 msg = "입력한 이메일이 존재하지 않습니다.(전송 실패)";
                  mv.addObject("msg" , msg);
                  mv.setViewName("mainPage/common/msg");
                  return mv;
              }
          }
         // 결제 정보를 DB에 담기
         @RequestMapping("/main/paymentInsert.tat")
         public ModelAndView paymentInsert(ModelAndView mv, HttpServletRequest request, Payment p, Member m){
            String m_code = request.getParameter("m_code");
            String p_code = request.getParameter("p_code");
            System.out.println("m_code: "+m_code);
            System.out.println("p_code: "+p_code);
            
            p.setM_code(m_code);
            p.setP_code(p_code);
            
            String msg = "";
            String loc = "/";
            
            int result = mainS.insertPayment(p);
            
            if(result > 0) {
               msg = "성공!";
               
               System.out.println(p);
               // 결제 성공시 결제여부를 'Y'로 변경
               mainS.updateUsable(m_code);
               m.setIs_usable("Y");
               mv.addObject("m", m);
            } else {
               msg = "실패!";
            }
            
            // msg = "payment 서블릿 접근 성공!";
               mv.addObject("msg" , msg);
               mv.addObject("loc" , loc);
            mv.setViewName("mainPage/common/msg");
            return mv;
         }
         
         @RequestMapping(value = {"/Flogin.tat", "main/Flogin.tat"})
         public ModelAndView Flogin(HttpServletRequest request, ModelAndView mv, Member m){
            
            /*String m_birth = request.getParameter("m_birthday");
            String.format("yyyy-mm-dd", m_birth);
            java.sql.Date birth = java.sql.Date.valueOf(m_birth);*/

            String m_email = request.getParameter("m_email");
            String m_name = request.getParameter("m_name");         
            
            String code = "";
            String msg = "";
            String loc = "";
            String name = "";
            
            m.setM_email(m_email);
            m.setM_name(m_name);
            m.setIs_usable("N");
            /*m.setM_birth(birth);*/
            
            Member r;
            
            r = mainS.selectOneMember(m_email);
            System.out.println("1. 결과: "+r);
            
            if(r == null){
               
               int result = mainS.insertFMember(m);
               
               if(result > 0){
                  msg = "페이스북 로그인 성공!";
                  m = mainS.selectOneMember(m_email);
                  code = m.getM_code();
                  name = m.getM_name();
                  mv.addObject("msg", msg);
                  mv.addObject("loc", loc);
                  mv.addObject("m_code", code);
                  mv.addObject("m_name", name);
                  } else {
                     System.out.println("실패");
                  }
            } else {
               msg = "페이스북 로그인 성공!";
               m = mainS.selectOneMember(m_email);
               code = m.getM_code();
               mv.addObject("msg", msg);
               mv.addObject("loc", loc);
               mv.addObject("m_code", code);
            }
            
            mv.setViewName("mainPage/logoutPage");
            
            return mv;
         }
         
         @RequestMapping(value = {"/Glogin.tat", "main/Glogin.tat"})
         public ModelAndView Glogin(HttpServletRequest request, ModelAndView mv, Member m){
            String m_email = request.getParameter("m_email");
            String m_name = request.getParameter("m_name");
            
            System.out.println("구글 정보 전달: "+m_email);
            
            String msg = "";
            String loc = "";
            String code = "";
            String name = "";
            
            msg = "구글 로그인 성공!";
            
            m.setM_email(m_email);
            m.setM_name(m_name);
            
            Member r;
            r = mainS.selectOneMember(m_email);
            System.out.println("2. 결과 : "+ r);
            
            if(r == null){
               int result = mainS.insertGMember(m);
               
               if(result > 0){
                  msg = "구글 로그인 성공!";
                  m = mainS.selectOneMember(m_email);
                  code = m.getM_code();
                  name = m.getM_name();
                  mv.addObject("msg", msg);
                  mv.addObject("loc", loc);
                  mv.addObject("m_code", code);
                  mv.addObject("m_name", name);
                  } else {
                     System.out.println("실패");
                  }
               } else {
                  msg = "구글 로그인 성공!";
                  m = mainS.selectOneMember(m_email);
                  code = m.getM_code();
                  
                  mv.addObject("msg", msg);
                  mv.addObject("loc", loc);
                  mv.addObject("m_code", code);
            }
            mv.setViewName("mainPage/logoutPage");
            
            return mv;
         }
         
         @RequestMapping("/main/daybyday.tat")
         public ModelAndView daybyday(Payment p, HttpServletRequest request,ModelAndView mv){
            String m_code = request.getParameter("m_code");
            String loc = "/";
            String msg = "";
            
            int dday = mainS.ddaySelect(m_code);
            
            System.out.println("p 결과 : "+dday);
            
            msg = "결제 만료일 까지 "+dday+" 일 남았습니다.";
            
            mv.addObject("p", p);
            mv.addObject("loc", loc);
            mv.addObject("msg", msg);
            
            mv.setViewName("mainPage/common/msg");
            
            return mv;
         }
   // 둘러보기 페이지 아이프레임 이동
   @RequestMapping("/main/ExploreIframe.tat")
   public String ExploreIframe(HttpServletRequest request, Model model){

      String e_code = request.getParameter("e_code");
      String m_code = request.getParameter("m_code");
      
      String headRead = "WEB-INF/views/member/"+m_code+"/"+e_code+"/head.jsp";
      String bodyRead = "WEB-INF/views/member/"+m_code+"/"+e_code+"/home.jsp";
      String footerRead = "WEB-INF/views/member/"+m_code+"/"+e_code+"/footer.jsp";
      
      model.addAttribute("editPageHead", headRead).addAttribute("editPageBody", bodyRead).
      addAttribute("editPageFooter", footerRead);
      
      return "editPage/editView_Main";
   }
   
   // 템플릿 페이지 아이프레임 이동
   @RequestMapping("/main/TemplateIframe.tat")
   public String TemplateIframe(HttpServletRequest request, Model model){

      String t_category = request.getParameter("t_category");
      
      System.out.println("폴더 이름 확인 : "+t_category);
      
      String headRead = "WEB-INF/views/template/"+t_category+"/head.jsp";
      String bodyRead = "WEB-INF/views/template/"+t_category+"/home.jsp";
      String footerRead = "WEB-INF/views/template/"+t_category+"/footer.jsp";
      
      model.addAttribute("editPageHead", headRead).addAttribute("editPageBody", bodyRead).
      addAttribute("editPageFooter", footerRead);
      
      return "editPage/editView_Main";
   }
}