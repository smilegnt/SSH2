package com.yzpc.action;

import com.opensymphony.xwork2.ActionSupport;

public class HelloAction extends ActionSupport {

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		// SUCCESS是一个值为"success"的常量，也可写为 ：return "success";
		return "success";
	}	
}
