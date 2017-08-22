<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>generator标签示例</title>
  </head> 
  <body>
   	<center>
   	<font  color="blue">使用s:generator标签分隔字符串</font><br>
	
	<s:generator separator="," val="'北京,上海,天津,重庆'" id="city"/>
           分隔后的字符串为：<br>
    <s:iterator value="#attr.city" var="directcity"> 
		<s:property value="directcity"/> <br> 
  	</s:iterator>	
	</center>
  </body>
</html>


