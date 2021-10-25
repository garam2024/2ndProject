package com.VO;

public class commentVO {
	

	private String num;
	private String content;
	private String date;
	private String nick;
	private String title;
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public commentVO(String num, String content, String date, String nick, String title) {
		super();
		this.num = num;
		this.content = content;
		this.date = date;
		this.nick = nick;
		this.title = title;
	}

	
	
	
}


