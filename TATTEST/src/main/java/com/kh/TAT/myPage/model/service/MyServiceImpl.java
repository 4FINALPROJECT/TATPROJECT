package com.kh.TAT.myPage.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.TAT.myPage.model.dao.MyDao;

@Service
public class MyServiceImpl implements MyService {

	@Autowired
	MyDao myD;
}
