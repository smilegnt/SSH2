<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录页面login.jsp</title>
  </head>
  
  <body>
    <div align=center>  
      <form name="form1" action="loginAction">
      	用户名：<input type="text" name="username"><br>
      	密     码：<input type="password" name="password"><br>
      	<input type="submit" value="登录">&nbsp;&nbsp;&nbsp; 
      	<!--a href="register.jsp"><input type="button" value="注册"></a-->
      	<input type="button" value="注册" onclick="javascrtpt:window.location.href='registerAction'">      	
      </form>
    </div>	
  </body>
</html>
