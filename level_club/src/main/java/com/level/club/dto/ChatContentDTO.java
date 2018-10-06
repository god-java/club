package com.level.club.dto;

public class ChatContentDTO {
	private int chat_content_num;
	private int chat_room_num;
	private int sender_num;
	private String chat_content;
	private String chat_send_date;
	
	public int getChat_content_num() {
		return chat_content_num;
	}
	public void setChat_content_num(int chat_content_num) {
		this.chat_content_num = chat_content_num;
	}
	public int getChat_room_num() {
		return chat_room_num;
	}
	public void setChat_room_num(int chat_room_num) {
		this.chat_room_num = chat_room_num;
	}
	public int getSender_num() {
		return sender_num;
	}
	public void setSender_num(int sender_num) {
		this.sender_num = sender_num;
	}
	public String getChat_content() {
		return chat_content;
	}
	public void setChat_content(String chat_content) {
		this.chat_content = chat_content;
	}
	public String getChat_send_date() {
		return chat_send_date;
	}
	public void setChat_send_date(String chat_send_date) {
		this.chat_send_date = chat_send_date;
	}	
}
