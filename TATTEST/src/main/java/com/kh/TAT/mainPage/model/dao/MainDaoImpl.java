package com.kh.TAT.mainPage.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.Payment;
import com.kh.TAT.common.model.vo.Template;
import com.kh.TAT.common.model.vo.TemplateReplyBoard;

@Repository
public class MainDaoImpl implements MainDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return sqlSession.insert("member.insertMember", member);
	}

	@Override
	public Member selectOneMember(String m_email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.memberLogin", m_email);
	}

	@Override
	public int checkemailDuplicate(String m_email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.checkemailDuplicate", m_email);
	}

	@Override
	public int changePWD(Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("member.changePWD" ,m);
	}

	@Override
	public String getPw(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return (String) sqlSession.selectOne("member.emailCheck", paramMap);
	}

	@Override
	public int insertPayment(Payment p) {
		// TODO Auto-generated method stub
		return sqlSession.insert("payment.insertPayment", p);
	}

	@Override
	public void updateUsable(String m_code) {
		// TODO Auto-generated method stub
		sqlSession.update("member.updateUsable", m_code);
	}

	@Override
	public Member emailCheck(String f_email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.memberLogin", f_email);
	}

	@Override
	public int insertFMember(Member m) {
		// TODO Auto-generated method stub
		return sqlSession.insert("member.insertFmember", m);
	}

	@Override
	public int insertGMember(Member m) {
		// TODO Auto-generated method stub
		return sqlSession.insert("member.insertGmember", m);
	}

	@Override
	public List<Map<String, String>> selectAnswerBoard() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("questionAnswerBoard.selectBoard");
	}

	@Override
	public int ddaySelect(String m_code) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("payment.ddayQuery", m_code);
	}

	@Override
	public List<Map<String, String>> selectTemplateBoard() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("template.selectTemplate");
	}

	@Override
	public Template tempDetail(String t_code) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("template.selectDetail", t_code);
	}

	@Override
	public List<Map<String, String>> replyBoard(String t_code) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("templateReplyBoard.selectReplyBoard", t_code);
	}

	@Override
	public int insertReplyBoard(TemplateReplyBoard ter) {
		// TODO Auto-generated method stub
		return sqlSession.insert("templateReplyBoard.insertReplyBoard", ter);
	}

	@Override
	public Member selectOneMCode(String m_code) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.memberCode", m_code);

	}

	@Override
	public void DeleteReply(TemplateReplyBoard ter) {
		// TODO Auto-generated method stub
		sqlSession.delete("templateReplyBoard.deleteReplyBoard", ter);
		
	}

	@Override
	public void UpdateReply(TemplateReplyBoard ter) {
		// TODO Auto-generated method stub
		sqlSession.update("templateReplyBoard.updateReplyBoard", ter);
	}	

}
