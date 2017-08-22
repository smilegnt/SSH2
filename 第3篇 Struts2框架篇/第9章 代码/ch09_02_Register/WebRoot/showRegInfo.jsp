<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>注册信息的显示页面</title>
  </head> 
  <body>
    
   	<h3><font color="blue">注册的信息如下：</font></h3>
	用户名：<s:property value="username" /><br>
	密码：<s:property value="password" /><br>
	姓名：<s:property value="realname" /><br>
	性别：<s:property value="sex" /><br>
	年龄：<s:property value="age" /><br>
	学历：<s:property value="degree" /><br>
	家庭地址：<s:property value="%{address}" /><br>
	隐藏的ID：<s:property value="id" /><br>
	
</html>
