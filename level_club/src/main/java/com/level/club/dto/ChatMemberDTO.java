package com.level.club.dto;

public class ChatMemberDTO {
	private int chat_room_num;
	private int member_num;
	private String chat_participate_date;
	
	public int getChat_room_num() {
		return chat_room_num;
	}
	public void setChat_room_num(int chat_room_num) {
		this.chat_room_num = chat_room_num;
	}
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getChat_participate_date() {
		return chat_participate_date;
	}
	public void setChat_participate_date(String chat_participate_date) {
		this.chat_participate_date = chat_participate_date;
	}
}
