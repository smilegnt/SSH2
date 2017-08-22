<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
	<base href="<%=basePath%>">
		<title>out对象简单实例</title>
	</head>

	<body>
		<h1>	out对象示例		</h1><br>
		<p>
			缓冲区大小为：<%=out.getBufferSize()%><br>
		         是否自动清除缓冲区：<%=out.isAutoFlush()%><br>
			缓冲区目前所剩：<%=out.getRemaining()%><br>
		</p>
	</body>
</html>
