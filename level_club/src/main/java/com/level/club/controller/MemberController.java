package com.level.club.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.level.club.dao.MemberDAO;
import com.level.club.dto.MemberDTO;

@Controller
public class MemberController extends ObjectController {

	@RequestMapping(value="/join")
	public String join(Model m) {
		m.addAttribute("center","join.jsp");
		return "main";
	}
	@RequestMapping(value="/overlap_id")
	public void overlap_id(HttpServletResponse resp, String id) {
		mdao = sst.getMapper(MemberDAO.class);
		System.out.println(id);
		int count = mdao.overlap_id(id);
		
		try {
			resp.getWriter().print(count);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@RequestMapping(value="/join_ok")
	public String join_ok(Model m, MemberDTO mdto) {
		mdao = sst.getMapper(MemberDAO.class);
		mdao.join_ok(mdto);
		return "redirect:main";
	}
	@RequestMapping(value="/login")
	public String login(Model m) {
		m.addAttribute("center","login.jsp");
		return "main";
	}
	@RequestMapping(value="/login_ok")
	public void login_ok(Model m,MemberDTO mdto, HttpServletResponse resp, HttpSession s) {
		mdao = sst.getMapper(MemberDAO.class);
		int overlap_id = mdao.overlap_id(mdto.getId());
		int login_ok = mdao.login_ok(mdto);
		int login_status = 0;
		if(overlap_id<1 && login_ok<1) {
			login_status=0;
		}else if(overlap_id>0 && login_ok>0) {
			login_status=1;
			int member_num = mdao.find_member_num(mdto);
			s.setAttribute("member_num", member_num);
		}else{
			login_status=2;
		}
		try {
			resp.getWriter().print(login_status);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
