<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>optgroup标签示例</title>
  </head> 
  <body>
   	<center>
   	<h3>使用s:optgroup标签生成选项组</h3>
	<s:form action="">
		<!-- 使用Map对象来生成下拉选择框的选项组 -->
		<s:select label="选择您喜欢的图书" name="book"
			list="#{'Java编程思想':'埃克尔','JSP程序设计':'王晓军'}" listKey="value" listValue="key" >
			<s:optgroup label="清华大学出版社" list="#{'JSP Web开发案例教程':'王英瑛','Struts 2网络大讲堂':'李振'}"
				listKey="value" listValue="key" />
			<s:optgroup label="人民邮电出版社" list="#{'陈洁 ':'Java程序员面试','成安':'Java和Android开发实战'}"
				listKey="key" listValue="value" />
		</s:select>
	</s:form>	
	</center>
  </body>
</html>
