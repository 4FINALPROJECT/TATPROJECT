package com.kh.TAT.editPage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EditDaoImpl implements EditDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
}
