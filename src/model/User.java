package model;

import java.sql.Date;


public class User {
	private int uid;
	private String username;
	private String password;
	private String password1;
	private String image;
	private Date regtime;
	private String email;
	private int type;
	private String userCheckcode;
	
	

	public void showUser() {
		System.out.println("uid:"+uid+" username:"+username+" password:"+password+" image:"+image+" regtime:"+regtime+" email:"+email+" type:"+type+" userCheckcode:"+userCheckcode);
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	public Date getRegetime() {
		return regtime;
	}

	public void setRegtime(Date regtime) {
		this.regtime = regtime;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	
	public String getUserCheckcode() {
		return email;
	}

	public void setUserCheckcode(String userCheckcode) {
		this.userCheckcode = userCheckcode;
	}
	
}
