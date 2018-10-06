package com.level.club.dto;

public class ClubMemberDTO {
	private int member_num;
	private int club_num;
	private String club_join_date;
	
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public int getClub_num() {
		return club_num;
	}
	public void setClub_num(int club_num) {
		this.club_num = club_num;
	}
	public String getClub_join_date() {
		return club_join_date;
	}
	public void setClub_join_date(String club_join_date) {
		this.club_join_date = club_join_date;
	}	
}
