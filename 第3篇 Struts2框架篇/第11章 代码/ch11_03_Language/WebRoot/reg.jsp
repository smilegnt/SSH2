<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags" %>  <!-- Struts 2 ±êÇ©¿â -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title><s:text name="register.page" /></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>  
  <body>
  	  <h3><font color="blue"><s:text name="register.title" /></font></h3>
 	  <s:form name="form1" action="reg">
			<s:textfield name="user.username" key="username" />
			<s:password name="user.password" key="password" />
			<s:password name="repassword" label="%{getText('repassword')}" />
			<s:textfield name="user.telephone" label="%{getText('telephone')}" />
			<s:textfield name="user.realname" label="%{getText('realname')}" />
			<s:textfield name="user.email" label="%{getText('email')}"/>
			<s:submit value="%{getText('submit')}" />
		</s:form>

  </body>
</html>
