package com.kh.TAT.adminPage.model.service;

import java.util.List;

import com.kh.TAT.adminPage.model.vo.PagingVo;



public interface AdminService {

	List<com.kh.TAT.common.model.vo.Member> selectMemberList(PagingVo paging);
	
	int selectTotalPaging();

	

}
