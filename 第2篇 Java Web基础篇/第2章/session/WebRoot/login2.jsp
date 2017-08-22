<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>session简单实例</title>
  </head>
  <%
      String name = (String)session.getAttribute("user");   
     if(null==name) request.getRequestDispatcher("index.jsp").forward(request,response);
  %>
  
  <body>
             <h1>欢迎来到JSP世界，Welcome JSP Word</h1>                       
  </body>
</html>
