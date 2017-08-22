<%@ page language="java" import="java.util.*" pageEncoding="utf-8" import="java.sql.*"%>
<html>
  <head>        
    <title>MVC项目：返回响应</title>
  </head>
  
  <body> 
  <% String message=new String (request.getParameter("tt").getBytes("ISO-8859-1"),"GBK" ); %>
   <%=message %>
  </body>
</html>
