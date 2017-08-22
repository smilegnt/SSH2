package com.yzpc.action;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	private String username;
	private String password1;
	private String password2;
	//setter、getter赋值和取值方法
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	@Override
	public String execute() throws Exception {
		if (username != null && !getUsername().trim().equals("") && getPassword1().equals(getPassword2()) ) {
			System.out.print("程序正在执行Action中的execute方法……");
			return "success";
			
		}else {
			System.out.print("程序正在执行Action中的execute方法……");
			return "input";
		}
	}
}
