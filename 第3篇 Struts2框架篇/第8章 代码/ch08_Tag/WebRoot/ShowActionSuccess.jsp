<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>action标签示例</title>
  </head> 
  <body>
   	<center>
   		<h4><font color="red">显示Action提交的信息</font></h4>
		歌名：<s:property value="music.name"/><br>
		演唱：<s:property value="music.author"/><br>
		类型：<s:property value="music.type"/>
	</center>
  </body>
</html>
