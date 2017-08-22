<%@ page language="java" import="java.util.*;" pageEncoding="gbk" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
	<title>Struts 2 Ajax¹¦ÄÜ</title>
	<sx:head />
</head>
<body>
	<div id="header">
	  <s:div id="login" cssClass="login">
		<s:a href="register.jsp">×¢²á</s:a>
		<sx:a targets="login" href="login.jsp">µÇÂ¼</sx:a>
	  </s:div>
	  <sx:div id="tsdiv" cssStyle="border:2px solid blue;" updateFreq="2000" href="showTime.action">
	  </sx:div>	
	</div>
</body>
</html>

