package com.yzpc.action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class PageAction extends ActionSupport {	
	private static final long serialVersionUID = 1L;
	private String pageName;
	//setter、getter赋值和取值
	public String getPageName() {
		return pageName;
	}
	public void setPageName(String pageName) {
		this.pageName = pageName;
	}
	@Override
	public String execute() throws Exception {
		ActionContext.getContext().put("info","您已经成功转向到"+pageName+".jsp页面！");
		return super.execute();
	}
}
