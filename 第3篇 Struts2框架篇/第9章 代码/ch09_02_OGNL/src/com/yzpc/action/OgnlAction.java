package com.yzpc.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import java.util.*;
import com.yzpc.entity.*;

import com.opensymphony.xwork2.ActionSupport;

public class OgnlAction extends ActionSupport {
	private HttpServletRequest request;
    private HttpSession session;
    private List<User> users;
    //省略属性的getter、setter方法
    public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public HttpSession getSession() {
		return session;
	}
	public void setSession(HttpSession session) {
		this.session = session;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	@Override
    public String  execute() throws Exception {
      //获取request和session
      request = ServletActionContext.getRequest();
      session=request.getSession();
      //在request和session中添加一对键值
      request.setAttribute("userName","姓名来自于 request对象");
      session.setAttribute("userName","姓名来自于 session对象");
      //在List对象添加三个User类的对象
      users = new LinkedList<User>();
      users .add(new User("徐鹏", "男", 20));
      users .add(new User("王珍", "女", 21));
      users .add(new User("刘冬", "男", 22));
      return SUCCESS;
   }
}
