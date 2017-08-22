<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>bean标签示例</title>
  </head> 
  <body>

   	<h4><font color="blue">使用s:bean标签创建JavaBean实体</font></h4>
	<s:bean name="com.yzpc.entity.Book" id="book">
		<s:param name="name">SSH框架技术</s:param>
		<s:param name="author" value="'王英瑛'"/>		
	</s:bean>
	<font color="red">通过s:property标签输出信息</font><br>
	书名：<s:property value="#book.name" /><br>
	作者：<s:property value="#book.author" />
  </body>
</html>
