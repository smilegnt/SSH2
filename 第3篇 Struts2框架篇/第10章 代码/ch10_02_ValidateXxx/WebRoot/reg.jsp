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

  	  <h3><font color="blue">填写注册信息</font></h3>

 	  <s:form name="form1" action="reg">
      	<s:textfield name="username" label="用户名"/>
      	<s:password name="password" label="密码"/>
      	<s:password name="repassword" label="确认密码"/>
      	<s:textfield name="telephone" label="电话号码"/>
      	<s:textfield name="realname" label="姓名"/>
      	<s:submit value="注册"/>      	
      </s:form>	
      <a href="zc.html">注册须知</a>
  </body>
</html>
