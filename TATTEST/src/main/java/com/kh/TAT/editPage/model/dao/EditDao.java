package com.kh.TAT.editPage.model.dao;

import com.kh.TAT.common.model.vo.Edit;
import com.kh.TAT.common.model.vo.Member;

public interface EditDao {

	Member memberSelectPayment(String m_code);

	Edit projectSelectOne(String e_code);

	int shareFile(Edit shareProject);

	int cancleShareFile(Edit shareProject);



}