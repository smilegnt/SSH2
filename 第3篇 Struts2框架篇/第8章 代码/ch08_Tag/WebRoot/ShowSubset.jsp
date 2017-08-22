<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>subset标签示例</title>
  </head> 
  <body>
   	<center>
   	<font  color="blue">使用s:subset标签截取得到子集合</font><br>
	
	<s:subset source="{'北京','上海','天津','重庆','广州','深圳'}" var="city"
		start="1" count="3" />
            截取后的子集合为：<br>
    <s:iterator value="#attr.city" var="directcity"> 
		<s:property value="directcity"/> <br> 
  	</s:iterator>	
	</center>
  </body>
</html>


