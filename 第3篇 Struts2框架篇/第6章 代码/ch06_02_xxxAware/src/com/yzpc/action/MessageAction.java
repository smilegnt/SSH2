package com.yzpc.action;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
public class MessageAction extends ActionSupport implements ServletRequestAware {
	private HttpServletRequest request;
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
	}
	@Override
	public String execute() throws Exception {
//		request.setAttribute("message", "您好，通过xxxAware接口实现了访问Servlet API");
		ServletActionContext.getRequest().setAttribute("message", "您好，通过ServletActionContext类直接访问Servlet API");
		return super.execute();
		
	}
}
