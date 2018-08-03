package com.kh.TAT.editPage.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.Member;
import com.kh.TAT.editPage.model.dao.EditDao;

@Service
public class EditServiceImpl implements EditService {

	@Autowired
	EditDao editD;

	@Override
	public Member memberSelectPayment(String m_code) {
		
		return editD.memberSelectPayment(m_code);
	}

	@Override
	public Edit projectSelectOne(String e_code) {
		
		return editD.projectSelectOne(e_code);
	}

	

}

