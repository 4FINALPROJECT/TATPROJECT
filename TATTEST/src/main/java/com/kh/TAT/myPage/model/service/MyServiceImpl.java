package com.kh.TAT.myPage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.EditReplyBoard;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.QuestionAnswerBoard;
import com.kh.TAT.common.model.vo.QuestionCategory;
import com.kh.TAT.myPage.model.dao.MyDao;
import com.kh.TAT.myPage.model.vo.MyPayment;
import com.kh.TAT.myPage.model.vo.MyProject;

@Service
public class MyServiceImpl implements MyService {

   @Autowired
   MyDao myD;

   // 회원 정보 관련
   @Override
   public Member selectOneMemberCode(String m_code) {
      
      return myD.selectOneMemberCode(m_code);
   }

   @Override
   public int updateProfile(Member m) {
      
      return myD.updateProfile(m);
   }
   
   @Override
   public List<MyProject> selectAllProject(String m_code) {
      
      return myD.selectAllProject(m_code);
   }

   @Override
   public int updatePassword(Member m) {
      
      return myD.updatePassword(m);
   }

   @Override
   public String checkPwd(String m_code) {
      
      return myD.checkPwd(m_code);
   }

   @Override
   public int checkEmailDuplicate(String chk) {
      
      return myD.checkEmailDuplicate(chk);
   }

   @Override
   public int updateEmail(Member m) {
      
      return myD.updateEmail(m);
   }

   
   // 결제 정보 관련
   @Override
   public MyPayment selectOnePayment(String m_code) {
      
      return myD.selectOnePayment(m_code);
   }

   @Override
   public List<MyPayment> selectListPayment(String m_code) {
      
      return myD.selectListPayment(m_code);
   }

   
   // 1:1 게시판 관련
   @Override
   public List<QuestionAnswerBoard> selectQuestionBoard(String m_code) {
      
      return myD.selectQuestionBoard(m_code);
   }

   @Override
   public List<QuestionAnswerBoard> widgetComment(String m_code) {
      
      return myD.widgetComment(m_code);
   }

   @Override
   public List<QuestionCategory> selectCategory() {
      
      return myD.selectCategory();
   }

   @Override
   public int insertWriteBoard(QuestionAnswerBoard qab) {
      
      return myD.insertWriteBoard(qab);
   }

   @Override
   public QuestionAnswerBoard selectOneBoard(int qa_num) {
   
      return  myD.selectOneBoard(qa_num);
   }

   @Override
   public Edit selectOneProjectDetail(String e_code) {
      
      return myD.selectOneProjectDetail(e_code);
   }

   @Override
   public List<EditReplyBoard> selectListReply(String e_code) {
      
      return myD.selectListReply(e_code);
   }

   @Override
   public int countComment(String e_code) {
      
      return myD.countComment(e_code);
   }

   @Override
   public int createProject(Edit newProject) {
      
      return myD.createProject(newProject);
   }
}