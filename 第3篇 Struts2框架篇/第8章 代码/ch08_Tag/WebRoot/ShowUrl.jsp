<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>url标签示例</title>
  </head> 
  <body>

   	<h4><font color="blue">使用s:url标签生成URL地址</font></h4>
	只指定value属性的形式：<br>
	<s:url value="showBook.action"/>
	<hr>
	指定action属性,且使用param传入参数的形式：<br>
	<s:url action="showBook">
    	<s:param name="author" value="'smith'" />
	</s:url>
	<hr>
	不指定action属性和value属性,且使用param传入参数的形式：<br>
	<s:url includeParams="get">
    	<s:param name="id" value="%{'22'}"/>
	</s:url>
	<hr>
	指定action属性和value属性,且使用param传入参数的形式：<br>
	<s:url action="showBook" value="xxxx">
    	<s:param name="author" value="'smith'" />
	</s:url>
	
  </body>
</html>

