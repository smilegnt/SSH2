<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>token标签示例</title>
  </head> 
  <body>
   	<center>
   	使用s:token标签防止重复提交
	<s:form name="form1" action="loginAction" >
		<s:textfield name="username" label="用户名"/>
		<s:password name="password" label="密码"></s:password>
		<s:submit value="登录"></s:submit>
		<s:token /> <s:actionerror/>
	</s:form>
	</center>
  </body>
</html>
