<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>文件上传</title></head>
<body>
	<h3>上传文件页面</h3>	
	<s:form action="fileUpload2" method="post" enctype="multipart/form-data">
		<s:file name="uploadFile" label="上传文件"/>
		<s:submit value="上传"></s:submit>
		<s:reset value="重置"/>
	</s:form>
	
	<!-- 	
	<form action="fileUpload" method="post" enctype="multipart/form-data">
		上传文件：<input type="file" name="uploadFile"><br>
		<input type="submit" value="上传">
		<input type="reset" value="重置">
	</form>	
	 -->
		
</body>
</html>
