package com.kh.TAT.myPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.EditReplyBoard;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.QuestionAnswerBoard;
import com.kh.TAT.common.model.vo.QuestionCategory;
import com.kh.TAT.myPage.model.vo.MyPayment;
import com.kh.TAT.myPage.model.vo.MyProject;

@Repository
public class MyDaoImpl implements MyDao {
   
   @Autowired
   SqlSessionTemplate sqlSession;

   // 회원정보 관련
   @Override
   public Member selectOneMemberCode(String m_code) {

      
      return sqlSession.selectOne("member.selectMember",m_code);
   }

   @Override
   public int updateProfile(Member m) {
      
      return sqlSession.update("member.updateProfile",m);
   }

   @Override
   public int updatePassword(Member m) {
      
      return sqlSession.update("member.updatePassword",m);
   }

   @Override
   public String checkPwd(String m_code) {
      
      return sqlSession.selectOne("member.checkPwd",m_code);
   }

   @Override
   public int checkEmailDuplicate(String chk) {
      
      return sqlSession.selectOne("member.checkIdDuplicate",chk);
   }

   @Override
   public int updateEmail(Member m) {
      
      return sqlSession.update("member.updateEmail",m);
   }

   
   // 결제 정보 관련
   @Override
   public MyPayment selectOnePayment(String m_code) {
      
      return sqlSession.selectOne("member.selectOnePayment",m_code);
   }

   @Override
   public List<MyPayment> selectListPayment(String m_code) {
      
      return sqlSession.selectList("member.selectListPayment",m_code);
   }

   
   // 1:1 게시판 관련
   @Override
   public List<QuestionAnswerBoard> selectQuestionBoard(String m_code) {
      
      return sqlSession.selectList("member.selectQuestionBoard",m_code);
   }

   @Override
   public List<QuestionAnswerBoard> widgetComment(String m_code) {
      
      return sqlSession.selectList("member.widgetComment",m_code);
   }

   @Override
   public List<QuestionCategory> selectCategory() {
      
      return sqlSession.selectList("member.selectCategory");
   }

   @Override
   public int insertWriteBoard(QuestionAnswerBoard qab) {
      
      return sqlSession.insert("member.insertWriteBoard",qab);
   }

   @Override
   public QuestionAnswerBoard selectOneBoard(int qa_num) {
      
      return sqlSession.selectOne("member.selectOneBoard",qa_num);
   }

   // 나의 프로젝트 관련
   @Override
   public List<MyProject> selectAllProject(String m_code) {
      
      return sqlSession.selectList("member.selectAllProject",m_code);
   }
   
   @Override
   public Edit selectOneProjectDetail(String e_code) {
      
      return sqlSession.selectOne("member.selectOneProjectDetail",e_code);
   }

   @Override
   public List<EditReplyBoard> selectListReply(String e_code) {
      
      return sqlSession.selectList("member.selectListReply",e_code);
   }

   @Override
   public int countComment(String e_code) {
      
      return sqlSession.selectOne("member.countComment", e_code);
   }

   @Override
   public int createProject(Edit newProject) {
      
      return sqlSession.insert("member.createProject", newProject);
   }

   @Override
   public int insertProjectReply(EditReplyBoard ERB) {
     
     return sqlSession.insert("member.insertProjectReply", ERB);
   }
   
   @Override
   public int updateProjectName(Edit edit) {
      
      return sqlSession.update("member.updateProjectName", edit);
   }
   
   @Override
   public int updateProjectComment(Edit edit) {
      
      return sqlSession.update("member.updateProjectComment", edit);
   }
}