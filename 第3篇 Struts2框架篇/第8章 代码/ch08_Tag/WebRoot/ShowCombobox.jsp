<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>combobox标签示例</title>
  </head> 
  <body>
   	<center>
   	<h4>使用s:combobox标签生成文本框和下拉列表框</h4>
	<s:form action="bookAction">
		<s:combobox name="bookName"  label="请选择书" maxlength="20" size="20" 
		list="{'Java程序设计' , 'JSP程序设计' , 'J2EE企业级开发'}" headerKey="-1" 
		headerValue="-----请选择-----"   emptyOption="true" value="JSP程序设计" />
		<s:bean name="com.yzpc.service.BookService" id="bs" />				
		<s:combobox name="bookAuthor" label="选择作者" labelposition="top"
		list="#bs.books" listKey="author" listValue="author"/> 
		<s:submit value="提交"></s:submit>	
	</s:form>
	
	</center>
  </body>
</html>
