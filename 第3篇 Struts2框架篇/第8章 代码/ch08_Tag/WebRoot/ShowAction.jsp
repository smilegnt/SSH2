<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>action标签示例</title>
  </head> 
  <body>
   	<center>
   	<h4><font color="blue">使用s:aciton标签</font></h4>
	<s:action name="musicAction" executeResult="true" namespace="/">
	</s:action>
	</center>
  </body>
</html>
