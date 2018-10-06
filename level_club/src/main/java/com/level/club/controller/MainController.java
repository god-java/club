package com.level.club.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController extends ObjectController {

	@RequestMapping(value="/main")
	public String main(Model m) {
		m.addAttribute("center","main_center.jsp");
		return "main";
	}
}
