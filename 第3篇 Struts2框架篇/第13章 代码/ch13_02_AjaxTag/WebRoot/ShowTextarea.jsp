<%@ page language="java" import="java.util.*;" pageEncoding="gbk" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>使用sx:Textarea标签生成文本编辑器</title>
	<sx:head />
</head>
<body>
	<font color="blue">textarea标签文本编辑器</font><br>
	<s:form action="textAction" method="post">
		<sx:textarea name="test" rows="10" cols="50"/>
		<s:submit value="提交"></s:submit>	
	</s:form>
</body>
</html>

