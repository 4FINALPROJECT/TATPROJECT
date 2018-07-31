package com.kh.TAT.mainPage.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.EditReplyBoard;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.Payment;
import com.kh.TAT.common.model.vo.QuestionAnswerBoard;
import com.kh.TAT.common.model.vo.Template;
import com.kh.TAT.common.model.vo.TemplateReplyBoard;
import com.kh.TAT.mainPage.model.dao.MainDao;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	MainDao mainD;

	@Override
	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return mainD.insertMember(member);
	}

	@Override
	public Member selectOneMember(String m_email) {
		// TODO Auto-generated method stub
		return mainD.selectOneMember(m_email);
	}

	@Override
	public int checkemailDuplicate(String m_email) {
		// TODO Auto-generated method stub
		return mainD.checkemailDuplicate(m_email);
	}

	@Override
	public int changePWD(Member m) {
		// TODO Auto-generated method stub
		return mainD.changePWD(m);
	}

	@Override
	public String getPw(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return mainD.getPw(paramMap);
	}

	@Override
	public int insertPayment(Payment p) {
		// TODO Auto-generated method stub
		return mainD.insertPayment(p);
	}

	@Override
	public void updateUsable(String m_code) {
		// TODO Auto-generated method stub
		mainD.updateUsable(m_code);
	}

	@Override
	public Member emailCheck(String f_email) {
		// TODO Auto-generated method stub
		return mainD.emailCheck(f_email);
	}

	@Override
	public int insertFMember(Member m) {
		// TODO Auto-generated method stub
		return mainD.insertFMember(m);
	}

	@Override
	public int insertGMember(Member m) {
		// TODO Auto-generated method stub
		return mainD.insertGMember(m);
	}

	@Override
	public List<Map<String, String>> selectAnswerBoard() {
		// TODO Auto-generated method stub
		return mainD.selectAnswerBoard();
	}

	@Override
	public int ddaySelect(String m_code) {
		// TODO Auto-generated method stub
		return mainD.ddaySelect(m_code);
	}

	@Override
	public List<Map<String, String>> selectTemplateBoard() {
		// TODO Auto-generated method stub
		return mainD.selectTemplateBoard();
	}

	@Override
	public Template tempDetail(String t_code) {
		// TODO Auto-generated method stub
		return mainD.tempDetail(t_code);
	}

	@Override
	public List<Map<String, String>> replyBoard(String t_code) {
		// TODO Auto-generated method stub
		return mainD.replyBoard(t_code);
	}

	@Override
	public int insertReplyBoard(TemplateReplyBoard ter) {
		// TODO Auto-generated method stub
		return mainD.insertReplyBoard(ter);
	}

	@Override
	public Member selectOneMCode(String m_code) {
		// TODO Auto-generated method stub
		return mainD.selectOneMCode(m_code);
	}

	@Override
	public void DeleteReply(TemplateReplyBoard ter) {
		// TODO Auto-generated method stub
		mainD.DeleteReply(ter);
	}

	@Override
	public void UpdateReply(TemplateReplyBoard ter) {
		// TODO Auto-generated method stub
		mainD.UpdateReply(ter);
	}

	@Override
	public List<Map<String, String>> selectFaqBoard() {
		// TODO Auto-generated method stub
		return mainD.selectFaqBoard();
	}

	@Override
	public List<Map<String, String>> selectEditBoard() {
		// TODO Auto-generated method stub
		return mainD.selectEditBoard();
	}

	@Override
	public Edit editDetail(String e_code) {
		// TODO Auto-generated method stub
		return mainD.editDetail(e_code);
	}

	@Override
	public List<Map<String, String>> EditreplyBoard(String e_code) {
		// TODO Auto-generated method stub
		return mainD.EditreplyBoard(e_code);
	}

	@Override
	public int insertEditReplyBoard(EditReplyBoard er) {
		// TODO Auto-generated method stub
		return mainD.insertEditReplyBoard(er);
	}

	@Override
	public void DeleteEditReply(EditReplyBoard er) {
		// TODO Auto-generated method stub
		mainD.DeleteEditReply(er);
	}

	@Override
	public void UpdateEditReply(EditReplyBoard er) {
		// TODO Auto-generated method stub
		mainD.UpdateEditReply(er);
	}

	@Override
	public List<Map<String, String>> selectEdit(Edit newedit) {
		// TODO Auto-generated method stub
		return mainD.selectEdit(newedit);
	}
}
