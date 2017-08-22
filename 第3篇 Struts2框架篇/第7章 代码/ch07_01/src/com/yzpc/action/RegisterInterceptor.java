package com.yzpc.action;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.yzpc.action.RegisterAction;

public interface Interceptor extends Serializable {
	void destroy();
	void init();
	String intercept(ActionInvocation invocation) throws Exception;
}



public class RegisterInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {		
		System.out.print("拦截器开始运行……");		
		String resultString = arg0.invoke();
		System.out.println("拦截器已经结束……");
		return resultString;
	}
}



public abstract class AbstractInterceptor implements Interceptor
{
	public void init(){ }
	public void destroy(){ }
	public abstract String intercept(ActionInvocation invocation) throws Exception;
}

