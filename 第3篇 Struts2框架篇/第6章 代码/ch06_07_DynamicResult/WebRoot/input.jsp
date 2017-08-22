<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>输入名称页面</title>
  </head>
  <body>
      <form name="form1" action="pageAction" method="post">
      	输入目标页面文件的名称：<input type="text" name="pageName">
      	<input type="submit" value="转入">  	<br>		
		注意：由于只提供了welcome.jsp页面，输入welcome名称，输入其他名称会报错。	
      </form>
  </body>
</html>
