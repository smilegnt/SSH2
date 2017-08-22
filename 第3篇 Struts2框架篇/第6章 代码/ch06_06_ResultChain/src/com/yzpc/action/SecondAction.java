package com.yzpc.action;

import com.opensymphony.xwork2.ActionSupport;

public class SecondAction extends ActionSupport{
	@Override
	public String execute() throws Exception {
		System.out.println("然后由SecondAction进行处理！");
		return "toWelcome";
	}	
}
