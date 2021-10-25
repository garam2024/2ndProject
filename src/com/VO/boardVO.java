package com.VO;

public class boardVO {
	
	private String num;
	private String title;
	private String content;
	private String date;
	private String nick;
	private String colorGroup;
	
	
	

	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getColorGroup() {
		return colorGroup;
	}
	public void setColorGroup(String colorGroup) {
		this.colorGroup = colorGroup;
	}
	
	public boardVO(String num, String title, String content, String date, String nick, String colorGroup) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.date = date;
		this.nick = nick;
		this.colorGroup = colorGroup;
	}
	
	public boardVO() {
		
	}
	
	
}	