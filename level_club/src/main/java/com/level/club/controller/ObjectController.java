package com.level.club.controller;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.level.club.dao.CategoryDAO;
import com.level.club.dao.ClubDAO;
import com.level.club.dao.MemberDAO;

@Controller
public class ObjectController {

	@Autowired
	protected SqlSessionTemplate sst;
	protected MemberDAO mdao;
	protected CategoryDAO cdao;
	protected ClubDAO cldao;
}
