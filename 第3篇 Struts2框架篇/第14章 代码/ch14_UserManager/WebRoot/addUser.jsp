<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.yzpc.dao.*, com.yzpc.bean.User"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title><s:text name="add.title"/></title>
  </head>
  <body>
	<div align="center">
		<h3><font color="blue"><s:text name="add.title"/> </font></h3> 
		<s:form action="userAdd" method="post">
        	<table width="300" border="1" bordercolor="#99CCFF" bgcolor="#FFFFEE">
			  <s:textfield key="user.id" />			  
			  <s:textfield key="user.name" />			 
			  <s:select list="sexs" key="user.sex" />			 
			  <s:textfield key="user.age" />			
			  <s:textfield key="user.telephone" />			
			  <s:textfield key="user.email" />	
              <s:textfield key="user.specialty" />			  
			  <s:textfield key="user.school" />			  
			  <s:textarea key="user.address" />
			  <s:submit name="" key="add.submit" align="center" />    		  
            </table>                
		</s:form>
    </div>
  </body>
</html>
<!-- 
		  <s:textfield name="user.id" label="ID号" />			  
			  <s:textfield name="user.name" label="姓名" />			 
			  <s:select list="sexs" name="user.sex" label="性别" />			 
			  <s:textfield name="user.age" label="年龄" />			
			  <s:textfield name="user.telephone" label="电话" />			
			  <s:textfield name="user.email" label="邮箱" />	
              <s:textfield name="user.specialty" label="专业" />			  
			  <s:textfield name="user.school" label="学校" />			  
			  <s:textarea name="user.address" label="地址"/>
			  <s:submit value="添加" align="center" />    		  
 -->