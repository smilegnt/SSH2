<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>append标签示例</title>
  </head> 
  <body>
   	<center>
   	<h4><font color="blue">使用s:append标签拼接</font></h4>
	
	<s:append var="poemAppend">
		<s:param value="{'黄鹤楼送孟浩然之广陵','唐    李白'}"></s:param>
    	<s:param value="{'故人西辞黄鹤楼，','烟花三月下扬州。'}"></s:param>
   	 	<s:param value="{'孤帆远影碧空尽，','唯见长江天际流。'}"></s:param>
 	</s:append>
    <s:iterator value="#poemAppend" id="sentence"> 
		<s:property value="sentence"/> <br> 
  	</s:iterator>
   
	
	
	</center>
  </body>
</html>
