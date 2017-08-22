package com.yzpc.action;
public class UserAction {
	private String username;     
	private String password;     
    //省略getter、setter方法	
	public String execute() throws Exception {
		System.out.print(username+"--------"+password);
		// 只有用户名为sa，密码为123456方可成功登陆
		if (username.equals("sa") && password.equals("123456")) {     
		   return "success";     
		} else {     
		   return "error";     
	   }     
   }     
} 

