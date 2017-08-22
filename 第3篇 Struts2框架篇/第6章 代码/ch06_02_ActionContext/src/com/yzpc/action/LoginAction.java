package com.yzpc.action;
import com.opensymphony.xwork2.ActionContext;
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
	@Override
	public String execute() throws Exception {
		ActionContext ac = ActionContext.getContext();
		if (username.equals("admin") && password.equals("123")) {
			ac.put("success", "登录成功");
			return SUCCESS;
		} else {
			ac.put("error", "用户名或密码错误");
			return ERROR;
		}
	}
}



