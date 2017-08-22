<%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <base href="<%=basePath%>">
    <title>request简单实例</title>
	
  </head>
  
  <body>
    <h1>request属性设置页</h1><br>
          <%request.setAttribute("A1","前页面变量");%>
          <jsp:forward page="request.jsp"></jsp:forward>
  </body>
</html>
