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

import com.kh.TAT.common.model.vo.Email;
import com.kh.TAT.common.model.vo.EmailSender;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.Payment;
import com.kh.TAT.common.model.vo.QuestionAnswerBoard;
import com.kh.TAT.common.model.vo.Template;
import com.kh.TAT.common.model.vo.TemplateReplyBoard;
import com.kh.TAT.mainPage.model.service.MainService;

@Controller
@SessionAttributes(value={"m", "f", "g", "qa", "p", "te", "temp", "m_code"})
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
	public ModelAndView Upgrade(HttpServletRequest request){
		HttpSession session = request.getSession(false);
		ModelAndView mv = new ModelAndView();

		String m_code = (String) session.getAttribute("m_code");
		Member m = mainS.selectOneMCode(m_code);
		mv.addObject("m", m);
		mv.setViewName("mainPage/mainPage_Upgrade");
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
		
		
		mv.setViewName("mainPage/mainPage_Template");
		return mv;
	}
	
	// 템플릿 상세보기 페이지 이동
	@RequestMapping("/main/TemplateDetail.tat")
	public ModelAndView TemplateDetail(HttpServletRequest request, Template temp, TemplateReplyBoard tempReply){
		String t_code = request.getParameter("t_code");
		
		ModelAndView mv = new ModelAndView();
		
		temp = mainS.tempDetail(t_code);
		List<Map<String, String>> tempReplylist = mainS.replyBoard(t_code);
		
		mv.addObject("temp", temp);
		mv.addObject("tempReply", tempReplylist);
		mv.setViewName("mainPage/mainPage_TemplateDetail");
		return mv;
	}
	
	@RequestMapping("/main/insertReply.tat")
	public ModelAndView insertReply(TemplateReplyBoard ter, 
			@RequestParam String tr_reply, @RequestParam int tr_rate){
		
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
			mv.addObject("ter", ter);
			msg = "댓글 등록 성공!";
			mv.addObject("msg", msg);
			mv.setViewName("mainPage/mainPage_Template");
		} else {
			mv.setViewName("mainPage/mainPage_TemplateDetail");
			System.out.println("실패!!");
		}
		
		return mv;
	}
	
	// 제휴신청 페이지 이동
	@RequestMapping("/main/Affiliate.tat")
	public String Affiliate(){
		return "mainPage/mainPage_Affiliate";
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
		
		mv.setViewName("mainPage/mainPage_Question");
		
		return mv;
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
	
	// 회원가입 메소드
		@RequestMapping("/main/memberInsert.tat")
		public String memberInsert(HttpServletRequest request, Member member, Payment p, Model model){
			
			System.out.println("회원가입 시작!");
			
			String rawPassword = member.getM_pwd();
			
			member.setM_pwd(bcryptPasswordEncoder.encode(rawPassword));
			
			int result = mainS.insertMember(member);
			
			String loc = "/";
			String msg = "";
			
			if(result > 0) msg = "회원가입 성공!";
			else msg = "회원가입 실패!";
			
			model.addAttribute("loc", loc);
			model.addAttribute("msg", msg);
			
			return "mainPage/common/msg";
		}
		
		// 로그인 부분
		@RequestMapping(value="/main/memberLogin.tat", method=RequestMethod.POST)
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
			
			if(m == null) {
				msg = "존재하지 않는 이메일 입니다.";
			} else {
				System.out.println("M_CODE 값 : "+m.getM_code());
				System.out.println("PASSWORD: "+m.getM_pwd());
				if(bcryptPasswordEncoder.matches(m_pwd, m.getM_pwd())){
					msg = "로그인 성공!";
					code = m.getM_code();
					// mv.addObject("m", m);
					mv.addObject("m_code", code);
					// mv.addObject("p", p);
					System.out.println(mv);
				} else {
					msg = "비밀번호가 틀렸습니다.";
				}
			}
			mv.addObject("loc", loc);
			mv.addObject("msg", msg);
			mv.setViewName("mainPage/common/msg");
			
			return mv;
		}
		
			// 로그아웃 부분
			@RequestMapping("/main/memberLogout.tat")
			public String memberLogout(SessionStatus status, HttpServletRequest request){
				
				// 현재 세션 상태가 끝났음을 확인
				if (!status.isComplete()){
					status.setComplete();
				}
				
				return "redirect:/";
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
		        String content = "<a href='http://localhost:8088/TAT/main/updatePwd.tat?email="+EMAIL+"'>TAT비밀번호 재설정<a>";
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
				String m_gender = request.getParameter("m_gender");
				
				String msg = "";
				String loc = "";
				
				m.setM_email(m_email);
				m.setM_name(m_name);
				m.setM_gender(m_gender);
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
						
						mv.addObject("msg", msg);
						mv.addObject("loc", loc);
						mv.addObject("f", m);
						} else {
							System.out.println("실패");
						}
				} else {
					msg = "페이스북 로그인 성공!";
					m = mainS.selectOneMember(m_email);
					
					mv.addObject("msg", msg);
					mv.addObject("loc", loc);
					mv.addObject("f", m);
				}
				
				mv.setViewName("mainPage/common/msg");
				
				return mv;
			}
			
			@RequestMapping(value = {"/Glogin.tat", "main/Glogin.tat"})
			public ModelAndView Glogin(HttpServletRequest request, ModelAndView mv, Member m){
				String m_email = request.getParameter("m_email");
				String m_name = request.getParameter("m_name");
				
				System.out.println("구글 정보 전달: "+m_email);
				
				String msg = "";
				String loc = "";
				
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
						
						mv.addObject("msg", msg);
						mv.addObject("loc", loc);
						mv.addObject("g", m);
						} else {
							System.out.println("실패");
						}
					} else {
						msg = "구글 로그인 성공!";
						m = mainS.selectOneMember(m_email);
						
						mv.addObject("msg", msg);
						mv.addObject("loc", loc);
						mv.addObject("g", m);
				}
				mv.setViewName("mainPage/common/msg");
				
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
	
}
