<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>文件上传成功</title></head>
<body>
	<s:iterator var="fileName" value="multiFileFileName" status="st">
		文件名：<s:property value="fileName"/>&nbsp;&nbsp;
		文件类型：<s:property value="multiFileContentType[#st.getIndex()]"/><br>
	</s:iterator>

	<!--  
	上传文件名：<s:property value="uploadFileFileName" /><br>
	上传文件类型：<s:property value="uploadFileContentType" />
	 -->
</body>
</html>
