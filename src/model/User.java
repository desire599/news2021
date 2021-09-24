package model;

import javax.xml.crypto.Data;

public class User {
	private int uid;
	private String username;
	private String password;
	private String image;
	private Data regtime;
	private String email;
	private int type;
	
	public int getUid() {
		return this.uid;
	}
	public String getUsername() {
		return this.username;
	}
	public String getPassword() {
		return this.password;
	}
	public String getImage() {
		return this.image;
	}
	public Data getRegtime() {
		return this.regtime;
	}
	public String getEmail() {
		return this.email;
	}
	public int getType() {
		return this.type;
	}
	
	public int setUid(int uid) {
		this.uid = uid;
		return this.uid;
	}
	public String setUsername(String username) {
		this.username = username;
		return this.username;
	}
	public String setPassword(String password) {
		this.password = password;
		return this.password;
	}
	public String setImage(String image) {
		this.image = image;
		return this.image;
	}
	public Data setRegtime(Data regtime) {
		this.regtime = regtime;
		return this.regtime;
	}
	public String setEmail(String email) {
		this.email = email;
		return this.email;
	}
	public int setType(int type) {
		this.type = type;
		return this.type;
	}
	
}
