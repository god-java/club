package com.level.club.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.level.club.dao.CategoryDAO;
import com.level.club.dto.CategoryDTO;

@Controller
public class ClubController extends ObjectController {

	@RequestMapping(value="/club_make")
	public String club_make(Model m) {
		cdao = sst.getMapper(CategoryDAO.class);
		ArrayList<CategoryDTO> clist = cdao.cate_list();
		m.addAttribute("clist", clist);
		m.addAttribute("center","club_make.jsp");
		return "main";
	}
}
