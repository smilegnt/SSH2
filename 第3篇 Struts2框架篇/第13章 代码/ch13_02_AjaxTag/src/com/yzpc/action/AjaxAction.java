package com.yzpc.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import com.opensymphony.xwork2.ActionSupport;

public class AjaxAction extends ActionSupport {
	private String account;
	private String name;
	//省略属性的getter、setter方法
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	
	private InputStream inputStream;
	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	@Override
	public String execute() throws Exception {
		System.out.println("接收的参数，账户="+account+"姓名="+name);
		if (account.equals("test")&& name.equals("testname")) {
			inputStream=new ByteArrayInputStream("这是一个sx:a标签的测试".getBytes("utf-8"));
		}else{
			inputStream=new ByteArrayInputStream("这是一个sx:submit的测试".getBytes("utf-8"));
		}		
		return "success";
	}
}
