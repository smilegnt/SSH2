package com.yzpc.action;

import com.opensymphony.xwork2.ActionSupport;
public class LoginAction extends ActionSupport {
	
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
	public String execute() throws Exception{
		if (username.equals("admin") && password.equals("123")) {
			System.out.print("首先由LoginAction进行处理。");
			System.out.println("用户名为："+username+"，密码为："+password);
			return "toSecond";
		} else {			
			return "error";
		}
	}
}
