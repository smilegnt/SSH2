package com.yzpc.action;
import com.opensymphony.xwork2.ActionSupport;
public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private String username;
	private String password;
	//setter、getter赋值和取值
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
	public String login() {
		if (username.equals("admin") && password.equals("123")) {			
			return SUCCESS;
		} else {			
			return ERROR;
		}
	}
	public String register(){
		return "register";
	}
}
