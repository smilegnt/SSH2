<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>include标签示例</title>
  </head> 
  <body>

   	<h4><font color="red">使用s:include标签包含index.jsp页面</font></h4>
	<s:include value="index.jsp"></s:include>
	
  </body>
</html>
