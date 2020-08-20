package com.covid19.app.admin.login.vo;

import java.sql.Date;

public class Adtest {

    private String id;
    private String pw;
    private String email;
    private String tell;
    private String name;
    private String nick;
    private String add;
    private int auth;
    private Date date;
    private String rank;
    private int point;
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTell() {
		return tell;
	}
	public void setTell(String tell) {
		this.tell = tell;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public int getAuth() {
		return auth;
	}
	public void setAuth(int auth) {
		this.auth = auth;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	@Override
	public String toString() {
		return "Adtest [id=" + id + ", pw=" + pw + ", email=" + email + ", tell=" + tell + ", name=" + name + ", nick="
				+ nick + ", add=" + add + ", auth=" + auth + ", date=" + date + ", rank=" + rank + ", point=" + point
				+ "]";
	}
    
    
}
