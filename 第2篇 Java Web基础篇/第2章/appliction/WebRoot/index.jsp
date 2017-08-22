<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
      <title>Application对象使用</title>	
  </head>
  
  <body>
   <%
        if(application.getAttribute("counter") == null)
        {
            application.setAttribute("counter","1");
        }
        else
        {
            String strnum = null;
            strnum = application.getAttribute("counter").toString();
            int icount = 0;
            icount = Integer.valueOf(strnum).intValue();
            icount++;
            application.setAttribute("counter",Integer.toString(icount));            
        }            
    %>
            您是第<%=application.getAttribute("counter") %>位访问者！  

  </body>
</html>
