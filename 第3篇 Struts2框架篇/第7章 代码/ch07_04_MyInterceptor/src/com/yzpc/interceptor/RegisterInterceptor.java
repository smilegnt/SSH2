package com.yzpc.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.yzpc.action.RegisterAction;

public class RegisterInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {		
		System.out.print("拦截器开始运行……");		
		String resultString = arg0.invoke();
		System.out.println("拦截器已经结束……");
		return resultString;
	}
}
