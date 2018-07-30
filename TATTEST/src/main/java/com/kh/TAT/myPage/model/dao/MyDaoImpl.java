package com.kh.TAT.myPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.common.model.vo.Payment;
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
	public List<MyProject> selectAllProject(String m_code) {
		
		return sqlSession.selectList("member.selectAllProject",m_code);
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
	public Payment selectOnePayment(String m_code) {
		
		return sqlSession.selectOne("member.selectOnePayment",m_code);
	}
}
