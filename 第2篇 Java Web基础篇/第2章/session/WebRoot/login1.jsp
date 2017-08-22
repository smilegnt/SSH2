<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>session简单实例</title>
  </head>
  
  <body>
            <%
                   String name = request.getParameter("name");
                   String password = request.getParameter("password");
                   if("zhangsan".equals(name)){
                	     if("123".equals(password)){
                	    	 session.setAttribute("user",name);
                	    	 response.sendRedirect("login2.jsp");
                	     }else{
                	    	 request.setAttribute("error","密码错误");
                	    	 request.getRequestDispatcher("index.jsp").forward(request,response);
                	     }
                   }else{
                	   	 request.setAttribute("error","用户名错误");
          	    	 request.getRequestDispatcher("index.jsp").forward(request,response);
                   }
         %>                   
  </body>
</html>
