package com.level.club.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.level.club.dao.CategoryDAO;
import com.level.club.dto.CategoryDTO;

@Controller
public class MainController extends ObjectController {
		
	@RequestMapping(value="/main")
	public String main(Model m) {
		cdao = sst.getMapper(CategoryDAO.class);
		ArrayList<CategoryDTO> clist = cdao.cate_list();
		m.addAttribute("center", "main_center.jsp");
		m.addAttribute("clist", clist);
		return "main";
	}
}
