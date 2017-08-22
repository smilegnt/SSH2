package com.yzpc.action;
import com.opensymphony.xwork2.ActionSupport;
public class LoginAction extends ActionSupport {
	private String username;
	private String password;
	//省略属性对应的getter、setter方法
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
		//1.接收参数,这个是通过拦截器来实现的（后面会讲解），
		//  页面传递过来的数据自动填充到Action的属性中
		//2.组织参数,把数据组织成逻辑层需要的类型和格式就可以了
		//3.调用逻辑层进行逻辑处理,
		this.bizExecute();
		//4.准备下一个页面所需要的数据
		//5.转向下一个页面
		return "Welcome";
		
		// 对登录页面输入的用户名和密码进行判断
//		if ("admin".equals(username)&&"123".equals(password)) {
//		//	return "success";	
//			return SUCCESS;	 //SUCCESS是值为"success"的字符串常量			
//		}else {
//		//	return "input";
//			return INPUT;	//INPUT是值为"input"的字符串常量
//		}
	}
	//示例方法，表示可以执行业务逻辑处理的方法
	public void bizExecute(){
		System.out.println("用户输入的参数");
		System.out.println("用户名为："+username);
		System.out.println("密码为："+password);
	}
}
