package com.yzpc.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private String username;
	private String password;
	//省略相应属性的getter、setter方法
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
		return super.execute();	//返回success字符串
	}
		
}
