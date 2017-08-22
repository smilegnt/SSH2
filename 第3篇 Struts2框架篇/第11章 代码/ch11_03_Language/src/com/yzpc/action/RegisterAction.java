package com.yzpc.action;
import com.opensymphony.xwork2.ActionSupport;
import com.yzpc.bean.User;
public class RegisterAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private User user;			//用户信息
	private String repassword;	//确认密码
	//省略属性的getter、setter方法
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}	
	public String execute() throws Exception {
		//省略代码
		return SUCCESS;
	}	
	public void validateExecute(){
		if(user.getUsername()==null || user.getUsername().equals("")){
			//this.addFieldError("user.name","用户名不能为空");			        
			this.addFieldError("user.username",getText("username.null"));
		}

		//其他字段的validate验证这里省略
		
	}
}

