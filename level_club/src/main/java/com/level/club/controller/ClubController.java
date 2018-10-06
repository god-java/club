package com.level.club.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.level.club.dao.CategoryDAO;
import com.level.club.dao.ClubDAO;
import com.level.club.dto.CategoryDTO;
import com.level.club.dto.ClubDTO;

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
	@RequestMapping(value="/club_make_ok")
	public String club_make_ok(ClubDTO cdto,@RequestParam(value="file") MultipartFile file,HttpSession s) throws IllegalStateException, IOException {
		String path = "C:\\Users\\wnstn\\git\\club\\level_club\\src\\main\\resources\\static\\club_main_image\\";
		File f = new File(path+file.getOriginalFilename());
		int member_num = Integer.parseInt(s.getAttribute("member_num").toString());
		cdto.setLeader_num(member_num);
		cdto.setClub_main_image(file.getOriginalFilename());
		file.transferTo(f);
		cldao = sst.getMapper(ClubDAO.class);
		cldao.club_make_ok(cdto);
		return "redirect:main";
	}
}
