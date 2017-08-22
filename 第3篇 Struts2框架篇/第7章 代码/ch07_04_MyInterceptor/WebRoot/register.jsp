<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags" %>  <!-- Struts 2 标签库 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>struts 2 拦截器应用示例</title>
	</head>

	<body>
	  <div align="center">
		<h3>用户注册</h3>
		<s:form id="id" action="registerAction">
			<s:textfield name="username" label="用户名"></s:textfield>
			<s:password name="password1" label="密码"></s:password>
			<s:password name="password2" label="重复密码"></s:password>
			<s:submit value="注册"></s:submit>
		</s:form>
	  </div>
	</body>
</html>
