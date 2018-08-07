package com.kh.TAT.editPage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.Member;

@Repository
public class EditDaoImpl implements EditDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public Member memberSelectPayment(String m_code) {

		return sqlSession.selectOne("edit.SelectPayment",m_code);
	}

	@Override
	public Edit projectSelectOne(String e_code) {
		
		return sqlSession.selectOne("edit.SelectProject", e_code);
	}

	@Override
	public int shareFile(Edit shareProject) {
		// TODO Auto-generated method stub
		return sqlSession.update("edit.shareFile", shareProject);
	}

	@Override
	public int cancleShareFile(Edit shareProject) {
		// TODO Auto-generated method stub
		return sqlSession.update("edit.cancleShareFile", shareProject);
	}

	
}
