<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>使用component标签</title>
  </head> 
  <body>
   	<center>
   		<h4><font color="blue">使用component标签调用自定义的组件</font></h4>
   		<s:form>
	   		<s:component template="TemplateComponent.jsp">
	   		    <s:param name="interestlist" />  <!-- 不传递参数 -->
	   			<s:param name="booklist" value="{'Java程序设计','JSP程序设计','SSH框架技术',
	   			'Andriod开发基础'}"/>
	   		</s:component>
   		</s:form>
	</center>
  </body>
</html>
