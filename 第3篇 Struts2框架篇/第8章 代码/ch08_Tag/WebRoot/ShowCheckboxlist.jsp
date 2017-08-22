<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>checkboxlist示例</title>
  </head> 
  <body>
   	<center>
	<h3>使用s:checkboxlist标签生成多个复选框</h3>
	<s:form>
		<!-- 使用简单字符串集合，来生成多个复选框 -->
		<s:checkboxlist name="bn" label="请选择您喜欢的图书" labelposition="top"
			list="{'Java程序设计' , 'JSP程序设计' , 'J2EE企业级开发'}" />
		<!-- 使用简单Map对象来生成多个复选框 -->
		<s:checkboxlist name="bd" label="请选择您想选择出版日期" labelposition="top"
			list="#{'Java':'2013年8月' , 'JSP':'2013月12月' , 'J2EE':'2014年2月'}"
			listKey="key" listValue="value" />
		<!-- 使用bean标签，该标签在后面讲解 -->
		<s:bean name="com.yzpc.service.BookService" id="bs" />
		<!-- 使用集合中存放多个Java实例来生成多个复选框 -->
		<s:checkboxlist name="bookBean" label="请选择您喜欢的图书" labelposition="top"
			list="#bs.books" listKey="name" listValue="name" />
	</s:form>		
	</center>
  </body>
</html>
