package com.kh.TAT.editPage.model.service;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.Member;
public interface EditService {
	
	Member memberSelectPayment(String m_code);

	Edit projectSelectOne(String e_code);
}
