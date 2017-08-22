<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>set标签示例</title>
  </head> 
  <body>

   	<h4><font color="blue">使用s:set将值保存到指定属性范围</font></h4>
	<s:bean name="com.yzpc.entity.Book" id="book">
		<s:param name="name" value="'JAVA程序设计'" />
		<s:param name="author">吴刚</s:param>
	</s:bean>
	<font color="green">scope属性值为action范围：</font>
	<s:set value="#book" name="b1" scope="action"></s:set>
	<s:property value="#b1.name"/>	<br>
	<font color="red">scope属性值为request范围：</font>
	<s:set value="#book" name="b2" scope="request"/>
	<s:property value="#request.b2.author"/><br>
	<font color="green">scope属性值为session范围：</font>
	<s:set name="pub" value="%{'清华大学出版社'}" scope="session"/>
	<s:property value="#session.pub"/>
  </body>
</html>
