<%@ page language="java" import="java.util.*;" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>	
<body>
	<s:form cssClass="get" id="log" action="login.action">
		<s:textfield name="username" label="用户名" />
		<s:password name="password" label="密码" />
		<s:hidden name="action" value="ajax"/>
		<sx:submit type="button" value="立即登录" executeScripts="true" />
	</s:form>
		
</body>
</html>

