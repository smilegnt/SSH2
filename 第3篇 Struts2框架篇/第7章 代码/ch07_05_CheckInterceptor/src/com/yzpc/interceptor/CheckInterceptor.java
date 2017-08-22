package com.yzpc.interceptor;

import java.util.Map;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class CheckInterceptor extends AbstractInterceptor {
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		ActionContext actionContext = arg0.getInvocationContext();		
		Map<?,?> sessionMap = actionContext.getSession();		
		String user = (String)sessionMap.get("name");
		if(user != null && user.equals("admin")){
			return arg0.invoke();
		}else{
			actionContext.put("tip", "Äú»¹Î´µÇÂ¼£¬ÇëÏÈµÇÂ¼£¡");
			return Action.LOGIN;		//·µ»Ø¡°login¡±×Ö·û´®
		}
	}
}
