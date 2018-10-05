package com.level.club.dao;

import com.level.club.dto.MemberDTO;

public interface MemberDAO {
	
	public int overlap_id(String id);
	public void join_ok(MemberDTO mdto);
	public int login_ok(MemberDTO mdto);
	public int find_member_num(MemberDTO mdto);

}
