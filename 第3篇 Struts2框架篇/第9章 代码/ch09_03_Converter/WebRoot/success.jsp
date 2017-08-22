<%@ page language="java" import="java.util.*;" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>	
		<title>录入成功</title>	
	</head>
	<body>
		<font color="blue">录入信息如下</font>
		<hr>
		名称：<s:property value="name"/><br>
		年龄：<s:property value="age"/><br>
		生日：<s:property value="birthday"/><br>
		X坐标：<s:property value="point.x"/><br>
		Y坐标：<s:property value="point.y"/><br>
		兴趣爱好：
		<s:iterator value="#request.hobby" var="v"> 
            <s:property/>  &nbsp;
        </s:iterator>
		
	</body>
</html>
