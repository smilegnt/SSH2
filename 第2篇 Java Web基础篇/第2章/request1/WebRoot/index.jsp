<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>request设置页</title>	
  </head>
  <body>
  <%
     request.setAttribute("name","JSP") ; // 设置属性
     request.setAttribute("date",new Date()) ; // 设置属性
  %>  
    request属性设置完毕 <br>
    <h2><input value="跳转页面" name= "a" type="button" onclick=""></h2>
    <h3><a href="index2.jsp">超链接页面</a></h3>
  </body>
</html>
