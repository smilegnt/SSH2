<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>updownselect标签示例</title>
  </head> 
  <body>
   	<center>
   		<h3>使用s:updownselect生成可移动选项的下拉选择框</h3>
		<s:form>
			<!-- 使用简单集合来生成可上下移动选项的下拉选择框 -->
			<s:updownselect name="" label="请选择您喜欢的图书" 
			labelposition="left" moveUpLabel="上移" 
			list="{'Java程序设计','JSP程序设计','J2EE企业级开发'}" />
			<!-- 使用简单Map对象来生成可上下移动选项的下拉选择框 -->
			<s:updownselect name="bd" label="请选择您想选择出版日期" 
			labelposition="left" moveDownLabel="下移" emptyOption="true"
			list="#{'Java':'2013年8月', 'JSP':'2013月12月',
			'J2EE':'2014年2月'}"	  listKey="key" 
			listValue="value" />
			<s:bean name="com.yzpc.service.BookService" id="bs" />
			<!-- 使用集合中存放多个JavaBean实例来生成可上下移动选项的下拉选择框 -->
			<s:updownselect name="bookBean" label="请选择您喜欢的图书的作者" 
			labelposition="left" selectAllLabel="全选" multiple="true" 
			list="#bs.books" listKey="author" listValue="name" />
		</s:form>
	</center>
  </body>
</html>
