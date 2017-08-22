package com.yzpc.action;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
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
		if ("admini".equals(username) && "123456".equals(password)) {
			return SUCCESS;	 		
		}else {
			return "input";			
		}
	}
	@Override
	public void validate() {
		if (getUsername() == null || "".equals(getUsername().trim())) {
			this.addFieldError("username", "用户名不能为空！");
		} else {//使用正则表达式
			Pattern p = Pattern.compile("\\w{6,20}");
			Matcher m = p.matcher(getUsername().trim());
			if (!m.matches()) {
				this.addFieldError("usernameMsg", "用户名由下划线、字母、数字构成，长度为6-20");
			} 
		}
		//getPassword() == null || "".equals(getPassword().trim())
		if (this.getPassword().trim().length()==0) {
			this.addFieldError("passwordMsg", "密码不能为空！");
		} else {
			int s = getPassword().trim().length();
			if (s<6 || s>20) {
				this.addFieldError("passwordMsg", "密码长度应该在6-20之间！");
			} 
		}	
	}	
}
