package com.level.club.dto;

public class ChatRoomDTO {
	private int chat_room_num;
	private String chat_room_name;
	private int chat_leader;
	private String chat_open_date;
	
	public int getChat_room_num() {
		return chat_room_num;
	}
	public void setChat_room_num(int chat_room_num) {
		this.chat_room_num = chat_room_num;
	}
	public String getChat_room_name() {
		return chat_room_name;
	}
	public void setChat_room_name(String chat_room_name) {
		this.chat_room_name = chat_room_name;
	}
	public int getChat_leader() {
		return chat_leader;
	}
	public void setChat_leader(int chat_leader) {
		this.chat_leader = chat_leader;
	}
	public String getChat_open_date() {
		return chat_open_date;
	}
	public void setChat_open_date(String chat_open_date) {
		this.chat_open_date = chat_open_date;
	}
}
