<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title>push标签示例</title>
  </head> 
  <body>

   	<h4><font color="blue">使用s:push标签将值压入ValueStack的栈顶</font></h4>
	<s:bean name="com.yzpc.entity.Book" var="book">
		<s:param name="name" value="'JAVA程序设计'" />
		<s:param name="author">吴刚</s:param>
	</s:bean>
	<s:push value="#book">	<!-- 压入ValueStack的栈顶 -->
		 书名：<s:property value="name"/><br/>
		 作者：<s:property value="author"/>
		<s:debug></s:debug>	<!-- 调试  -->
	</s:push>	
  </body>
</html>

