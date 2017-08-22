<%@ page language="java" import="java.util.*;" pageEncoding="gbk" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
	<title>sx:div标签的使用</title>
	<sx:head />
</head>
<body>
	<div id="header">
		<sx:div id="tsdiv" cssStyle="border:2px solid blue;" updateFreq="2000" href="showTime.action">
		</sx:div>	
	</div>
</body>
</html>

