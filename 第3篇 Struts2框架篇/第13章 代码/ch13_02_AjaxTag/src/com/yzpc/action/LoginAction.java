package com.yzpc.action;

import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String message;
	private String action;
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public String execute() throws Exception {
		
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		if (username.equals("yzpc")&&password.equals("yzpc")) {
			session.put("loginName", username);
			if (getAction().length()!=0&&"ajax".equals(getAction())) {
				this.setMessage("欢迎："+username+"登录，<a href='manage.jsp'>管理页面</a>");
				return "ajaxLogin";
			}
			return "success";
		}
		this.setMessage("登录失败，检查用户名和密码是否正确");
		if (getAction().length()!=0&&"ajax".equals(getAction())) {
			return "ajaxLogin";
		}
		return "input";	
	}		
}
