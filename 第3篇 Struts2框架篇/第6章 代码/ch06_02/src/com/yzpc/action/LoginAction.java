package com.yzpc.action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yzpc.entity.User;
public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private User user;		
	//setter、getter赋值和取值
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String execute() throws Exception {
		if (user.getUsername().equals("sa")&&user.getPassword().equals("123456")) {
			// 通过ActionContext对象访问Web应用的Session     
			ActionContext context  =  ActionContext.getContext(); 
//			context.put("name", "Mike");
//			context.getSession().put("name","Mike");
//			context.getApplication().put("name", "Mike");
					
			context.getSession().put("username", user.getUsername());   
			context.getSession().put("password", user.getPassword());   
			System.out.println(user.getUsername() + "----" + user.getPassword());     
			return "success";     
		} else {
			return "error";
		}
	}	
}



