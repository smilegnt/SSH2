<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>text标签示例</title>
  </head> 
  <body>

   	<h4><font color="blue">使用s:text标签</font></h4>
	<s:text name="struts.date.format"/><br>
	<s:text name="struts.date.format" var="date"/>
	读取ValueStack中的值：<s:property value="date"/>
  </body>
</html>
