package com.level.club.dao;

import com.level.club.dto.ClubDTO;

public interface ClubDAO {

	public ClubDTO club_info(int club_num);
	public void club_make_ok(ClubDTO cdto);
}
