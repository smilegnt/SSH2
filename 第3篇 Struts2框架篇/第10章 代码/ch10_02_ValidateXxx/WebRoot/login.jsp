<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags" %>  <!-- Struts 2 标签库 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Struts 2 validate验证</title>

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

  	  <h3><font color="blue">登录页面</font></h3>
  	  <font color="red"><s:fielderror/></font>	
 	  <s:form name="form1" action="login">
      	<s:textfield name="username" label="用户名"/>
      	<s:password name="password" label="密   码"/>
      	<s:submit value="登录"/>
      </s:form>	
  </body>
</html>
