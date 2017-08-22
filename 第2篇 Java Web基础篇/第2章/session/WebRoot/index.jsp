<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>login</title>
	</head>

	<body>
	<form action="login1.jsp">
	      用户名：<input type="text" name="name"><br>
	      密码：<input type="password" name="password"><br>
	<input type="submit" value="提交"/>
	     <div id="error"><font color="red"><%
	      String message = (String)request.getAttribute("error");
	      if(null!=message) out.print(message);
	      %></font></div>	</form>
	</body>
</html>
