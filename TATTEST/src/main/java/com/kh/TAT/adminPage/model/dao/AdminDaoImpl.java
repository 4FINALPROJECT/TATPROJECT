package com.kh.TAT.adminPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.kh.TAT.adminPage.model.vo.PagingVo;
import com.kh.TAT.adminPage.model.vo.AdminPayment;
import com.kh.TAT.adminPage.model.vo.AdminQuestion;
import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.FaqBoard;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.QuestionCategory;
import com.kh.TAT.common.model.vo.Template;

@Repository
public class AdminDaoImpl implements AdminDao {
   
   @Autowired
   SqlSessionTemplate sqlSession;

   // Member
   @Override
   public List<Member> selectMemberList(PagingVo paging) {
      // TODO Auto-generated method stub
      
      return sqlSession.selectList("member.selectMemberList", paging);
   }

   @Override
   public int MemberTotalPaging() {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("member.totalPaging");
   }

   @Override
   public int memberTotalPagingCount(int start) {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("member.totalPagingCount", start);
   }

   
   // Payment 
   
   @Override
   public int paymentTotalPagingCount(int start) {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("adminPayment.totalPagingCount", start);
   }

   @Override
   public int PaymentTotalPaging() {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("adminPayment.totalPaging");
   }

   @Override
   public List<AdminPayment> selectPaymentList(PagingVo paging) {
      // TODO Auto-generated method stub
      return sqlSession.selectList("adminPayment.selectPaymentList",paging);
   }
   
   // Project

   @Override
   public int projectTotalPagingCount(int start) {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("edit.totalPagingCount",start);
   }

   @Override
   public List<Edit> selectProjectList(PagingVo paging) {
      // TODO Auto-generated method stub
      return sqlSession.selectList("edit.selectEditList", paging);
   }

   @Override
   public int ProjectTotalPaging() {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("edit.totalPaging");
   }

   // FAQ
   
   @Override
   public int faqTotalPagingCount(int start) {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("faqBoard.totalPagingCount",start);
   }

   @Override
   public List<FaqBoard> selectFaqList(PagingVo paging) {
      // TODO Auto-generated method stub
      return sqlSession.selectList("faqBoard.selectFaqList", paging);
   }

   @Override
   public int FaqTotalPaging() {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("faqBoard.totalPaging");
   }

   @Override
   public int insertFaqQuestion(FaqBoard faqboard) {
      // TODO Auto-generated method stub
      return sqlSession.insert("faqBoard.insertFaqQuestion", faqboard);
   }

   
   @Override
   public List<FaqBoard> faqSelectUpdateList(int faq_num) {
      // TODO Auto-generated method stub
      return sqlSession.selectList("faqBoard.faqSelectUpdateList", faq_num);
   }
   
   @Override
   public int faqUpdateList(FaqBoard faqboard) {
      // TODO Auto-generated method stub
      return sqlSession.update("faqBoard.faqUpdateList", faqboard);
   }

   @Override
   public int faqDeleteQuestion(FaqBoard faqboard) {
      // TODO Auto-generated method stub
      return sqlSession.delete("faqBoard.faqDeleteList", faqboard);
   }

   // Question
   
   @Override
   public List<QuestionCategory> selectFaqSelect() {
      // TODO Auto-generated method stub
      return sqlSession.selectList("questionCategory.selectFaqSelect");
   }
   
   @Override
   public int questionTotalPagingCount(int start) {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("adminQuestion.totalPagingCount", start);
   }

   @Override
   public List<Edit> selectQuestionList(PagingVo paging) {
      // TODO Auto-generated method stub
      return sqlSession.selectList("adminQuestion.selectQuestionList", paging);
   }

   @Override
   public int questionTotalPaging() {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("adminQuestion.totalPaging");
   }
   
   @Override
   public List<AdminQuestion> questionSelectUpdateList(int qa_num) {
      // TODO Auto-generated method stub
      return sqlSession.selectList("adminQuestion.questionSelectUpdateList", qa_num);
   }

   @Override
   public int updateQuestion(AdminQuestion aq) {
      // TODO Auto-generated method stub
      return sqlSession.update("adminQuestion.updateQuestion", aq);
   }
   
   // Template

   @Override
   public List<Template> selectTemplateList(PagingVo paging) {
      // TODO Auto-generated method stub
      return sqlSession.selectList("template.selectTemplateList", paging);
   }

   @Override
   public int templateTotalPaging() {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("template.templateTotalPaging");
   }

   @Override
   public int templateTotalPagingCount(int start) {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("template.templateTotalPagingCount", start);
   }

   

   

   
   
   

   
}