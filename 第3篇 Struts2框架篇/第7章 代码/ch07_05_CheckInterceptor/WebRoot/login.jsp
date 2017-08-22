<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Struts 2 拦截器</title>
	</head>

	<body>
      <div align="center">
		<h3><font color="blue">用户登录</font></h3>
		<font color="red">${requestScope.tip}</font>
		<s:form id="id" action="login">
			<s:textfield name="name" label="用户名"></s:textfield>
			<s:password name="pass" label="密  码"></s:password>
			<s:submit value="登录"></s:submit>
		</s:form>
	  </div>
		<a href=chakan.action>查看信息</a>
	</body>
</html>
