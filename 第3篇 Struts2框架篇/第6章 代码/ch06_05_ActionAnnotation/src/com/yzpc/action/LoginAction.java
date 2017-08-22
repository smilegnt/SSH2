package com.yzpc.action;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import com.opensymphony.xwork2.ActionSupport;
@ParentPackage("struts-default")
@Namespace("/")
@Action(
	value="loginAction",
	results={
		@Result(name="success",location="/login_success.jsp"),
		@Result(name="error",location="/login_error.jsp"),
	}
)
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
	public String execute() throws Exception {
		if (username.equals("admin") && password.equals("123")) {			
			return SUCCESS;
		} else {			
			return ERROR;
		}
	}
//	public String register(){
//		return "register";
//	}
}
