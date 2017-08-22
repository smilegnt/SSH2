<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>sort标签进行排序</title>
  </head> 
  <body>
   	<center>
   	<h4><font color="blue">使用s:sort标签进行排序</font></h4>
   	
   	<s:bean id="myComparator" name="com.yzpc.other.MyComparator"/>
   	<s:sort comparator="#myComparator" id="fruit" source="{'watermelon','peach','banana','apple','pear'}"/>
	排序后集合元素列表：<br>
    <s:iterator value="#attr.fruit" var="order"> 
		<s:property value="order"/> <br> 
  	</s:iterator>	
	</center>
  </body>
</html>


