<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>file标签示例</title>
  </head> 
  <body>
   	<center>
	<s:form >
		<s:select name="interest" label="您最感兴趣的书" labelposition="left"
		list="parameters.list" cssStyle="font-size:12px;"/>
	</s:form>	
	</center>
  </body>
</html>
