package com.VO;

public class memberVO {
	private String email;
	private String pw;
	private String nick;
	private String tel;
	private String color;
	
	public String getColor() {
		return color;
	}


	public void setColor(String color) {
		this.color = color;
	}


	public memberVO(String email, String pw, String nick, String tel) {
		super();
		this.email = email;
		this.pw = pw;
		this.nick = nick;
		this.tel = tel;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getNick() {
		return nick;
	}


	public void setNick(String nick) {
		this.nick = nick;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
}
