<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>文件上传成功</title></head>
<body>
	上传文件名：${uploadFileFileName}<br>
	上传文件类型：${uploadFileContentType}T

	<!--  
	上传文件名：<s:property value="uploadFileFileName" /><br>
	上传文件类型：<s:property value="uploadFileContentType" />
	 -->
</body>
</html>
