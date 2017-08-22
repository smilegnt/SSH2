<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Struts 2 OGNL 示例</title>
  </head> 
  <body>
    
   	<h3><font color="blue">访问Action上下文</font></h3>
	<!-- 对request和session中的值进行访问   -->
	request.userName:<s:property value="#request.userName" /><br/>
    session.userName:<s:property value="#session.get('userName')" />
	<hr />	
	<h3><font color="blue">用于过滤和投影集合</font></h3>
    <p>年龄小于21岁的名单</p>
    <ul>
        <!-- 在List中选择年龄小于等于21岁的User对象  -->
        <s:iterator value="users.{?#this.age<=21}">
            <li><s:property value="username" /> 年龄是：<s:property value="age" />岁!</li>
        </s:iterator>
	</ul>
	<!-- 显示List中userneme值为'刘冬'的User对象的性别和年龄   -->
    <p><font color="green">	'刘冬'的性别和年龄分别是：
    	<s:property value="users.{?#this.username=='刘冬'}.{sex}[0]"/>
		，<s:property value="users.{?#this.username=='刘冬'}.{age}[0]"/>
    </font></p>
    <hr/>        
    <h3><font color="blue">构造Map</font></h3>
    <!-- 定义Map，然后选择对应的键进行访问   -->
    <s:set name="xu" value="#{'xp':'徐鹏','wz':'王珍','ld':'刘冬'}" />
    <p>键值"xp"是：<font color="red"><s:property value="#xu['xp']" /></font> 的缩写</p>
    
  </body>
</html>
