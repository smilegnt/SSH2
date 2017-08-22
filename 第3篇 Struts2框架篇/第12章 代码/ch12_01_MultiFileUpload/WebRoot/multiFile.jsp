<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>多文件上传</title></head>
<body>
	
	<s:form action="multiFile" method="post" enctype="multipart/form-data">
		多个文件上传：<br>
		<s:file name="multiFile" label="选择文档"/><br>  <!-- 第一个文件域 -->
		<s:file name="multiFile" label="选择文档"/><br>  <!-- 第二个文件域 -->
		<s:file name="multiFile" label="选择文档"/><br>  <!-- 第三个文件域 -->
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
