<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
  <base href="<%=basePath%>">
     <title>request简单实例</title>
     
   </head>
  
  <body>
     <h1>request属性获取页</h1><br>
         <%=request.getAttribute("A1")%>
  </body>
</html>
