package com.yzpc.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private String name;
	private String pass;
	//省略属性的getter、setter方法
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
		if (getName().equals("admin") && getPass().equals("admin")) {
			Map sessionMap = actionContext.getSession();
			sessionMap.put("name", getName());
			return SUCCESS;		//返回“success”字符串
		} else {
			actionContext.put("tip", "用户名或密码不正确！");
			return ERROR;		//返回“error”字符串
		}
	}
}
