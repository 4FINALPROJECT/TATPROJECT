package com.kh.TAT.adminPage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.TAT.adminPage.model.dao.AdminDao;
import com.kh.TAT.adminPage.model.vo.PagingVo;
import com.kh.TAT.common.model.vo.Member;


@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao adminD;

	@Override
	public List<Member> selectMemberList(PagingVo paging) {
		// TODO Auto-generated method stub
		return adminD.selectMemberList(paging);
	}

	@Override
	public int selectTotalPaging() {
		// TODO Auto-generated method stub
		return adminD.selectTotalPaging();
	}

	
}
