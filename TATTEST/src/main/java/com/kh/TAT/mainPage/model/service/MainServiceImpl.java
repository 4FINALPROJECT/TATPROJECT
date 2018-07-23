package com.kh.TAT.mainPage.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.TAT.mainPage.model.dao.MainDao;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	MainDao mainD;
}
