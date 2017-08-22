package com.yzpc.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String username;
	private String password;
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
	@Override
	public String execute() throws Exception {
		// 对登录页面输入的用户名和密码进行判断
		if ("admin".equals(username)&&"123".equals(password)) {
		//	return "success";	
			return SUCCESS;	 //SUCCESS是值为"success"的字符串			
		}else {
		//	return "input";
			return INPUT;	//INPUT是值为"input"的字符串
		}
	}
	
	
}
