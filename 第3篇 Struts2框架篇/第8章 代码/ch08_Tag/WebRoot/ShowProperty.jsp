<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>property标签示例</title>
  </head> 
  <body>

   	<h4><font color="blue">使用s:property标签输出值</font></h4>
   	输出字符串：
	<s:property value="'<h3>HelloWorld！</h3>'"/><br>
	设置忽略HTML代码 ：
	<s:property value="'<h3>HelloWorld！</h3>'" escape="true"/><br>
	设置不忽略HTML代码：
	<s:property value="'<h3>HelloWorld！</h3>'" escape="false"/>
	输出请求参数sex的值 ：
	<s:property  value="#parameters.sex"/><br>
	输出默认值：<s:property  value="sex" default="true"/>

  </body>
</html>
