package com.kh.TAT.adminPage.model.service;

import java.util.List;

import com.kh.TAT.adminPage.model.vo.PagingVo;
import com.kh.TAT.common.model.vo.Member;



public interface AdminService {

	List<Member> selectMemberList(PagingVo paging);
	
	int selectTotalPaging();



	

}
