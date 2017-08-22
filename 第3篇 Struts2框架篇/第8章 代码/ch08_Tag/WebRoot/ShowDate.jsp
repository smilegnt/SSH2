<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>date标签示例</title>
  </head> 
  <body>

   	<h4><font color="blue">使用s:date标签格式化输出日期</font></h4>
	<%
		Calendar cal=Calendar.getInstance(); //获得Calendar实例
		cal.set(2014,5,13);	//设置巴西世界杯开始时间
		pageContext.setAttribute("Football", cal.getTime());//设置到page范围
	%>
	<s:bean id="now" name="java.util.Date"> <!-- 当前时间 -->
		<font color="green">通过property输出当前时间：</font>
		<s:property value="#now"/><br>
		<font color="red">指定了format属性，没有指定nice属性：</font>
		<s:date name="#attr.now" format="yyyy年MM月dd日"/><br>
		<font color="blue">指定了format属性，也指定了nice属性：</font>
		<s:date name="#now" format="yyyy年MM月dd日" nice="true"/><br>
		<font color="green">距离巴西世界杯开幕还有：</font>
		<s:date name="#attr.Football" nice="true"/>		
	</s:bean>
  </body>
</html>
