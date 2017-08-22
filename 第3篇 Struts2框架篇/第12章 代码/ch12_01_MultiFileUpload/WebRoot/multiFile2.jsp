<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
	<title>添加文件域多文件上传</title>
	<script type="text/javascript">
		function addFileComponent(){
			var uploadHTML = document.createElement( "<input type='file' name='multiFile'/>"); 
			document.getElementById("files").appendChild(uploadHTML);
			uploadHTML = document.createElement( "<br>"); 
			document.getElementById("files").appendChild(uploadHTML);
		}
	</script>
  </head>
<body>
	<s:fielderror></s:fielderror>
	<form action="multiFile" method="post" enctype="multipart/form-data">
		任意多文件上传:<br>
		<input type="button" value="增加文件" onclick="addFileComponent()">
		<div id="files">
			<input type="file" name="multiFile"><br><!--第一个文件域-->
		</div>
		<input type="submit" value="上传">
		<input type="reset">
	</form>

	<!-- 	
	<form action="fileUpload" method="post" enctype="multipart/form-data">
		上传文件：<input type="file" name="uploadFile"><br>
		<input type="submit" value="上传">
		<input type="reset" value="重置">
	</form>	
	 -->
		
</body>
</html>
