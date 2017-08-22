<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>信息提示标签示例</title>
  </head> 
  <body>

	<h4 align=center><font color="blue">使用信息提示标签</font></h4>

		<s:actionerror></s:actionerror>
		<s:actionmessage/>
		<s:fielderror value="fielderror2"/>
		<s:fielderror/>

  </body>
</html>
