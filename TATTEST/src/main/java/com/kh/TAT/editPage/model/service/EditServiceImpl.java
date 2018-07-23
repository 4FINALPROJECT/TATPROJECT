package com.kh.TAT.editPage.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.TAT.editPage.model.dao.EditDao;

@Service
public class EditServiceImpl implements EditService {

	@Autowired
	EditDao editD;
}
