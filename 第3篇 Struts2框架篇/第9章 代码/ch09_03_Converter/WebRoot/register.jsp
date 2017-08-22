<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head><title>录入页面</title></head>
	<body>
		<h3><font color="blue">信息录入</font></h3>
		<s:form action="register">
			<s:textfield name="name" label="名称"/>
			<s:textfield name="age" label="年龄"/>
			<s:textfield name="birthday" label="生日"/>	
			<s:textfield name="point" label="坐标"/>	
			<s:checkboxlist label="爱好" name="hobby" list="{'读书','跳舞','游泳','唱歌'}" value="{'读书','唱歌'}"></s:checkboxlist>
			<s:submit value="提交" ></s:submit>
			<s:reset value="重置"></s:reset>
		</s:form>		
	</body>
</html>
