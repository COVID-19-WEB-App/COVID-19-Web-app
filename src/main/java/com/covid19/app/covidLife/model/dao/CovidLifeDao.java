package com.covid19.app.covidLife.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CovidLifeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
}
