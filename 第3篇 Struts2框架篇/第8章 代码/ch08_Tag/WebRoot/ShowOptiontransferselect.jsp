<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>optiontransferselect.jsp标签示例</title>
  </head> 
  <body>
   	<center>
		<font size=4.5 color="blue">	使用s:optiontransferselect来生成多功能列表框</font>
		<s:form>
			<!-- 使用简单集合对象来生成可移动的下拉列表框 -->
			<s:optiontransferselect label="请选择你喜欢的图书" name="cnb"
				leftTitle="中文图书" rightTitle="外文图书"
				list="{'Java程序设计','JSP程序设计','J2EE企业级开发'}" multiple="true"
				leftDownLabel="下移"  leftUpLabel="上移" 
				addToLeftLabel="左移" addToRightLabel="右移" 
				addAllToLeftLabel="全部左移" addAllToRightLabel="全部右移" 
				selectAllLabel="全部选择"  headerKey="cnKey"
				headerValue="--------请选择中文图书--------" emptyOption="true"
				doubleList="{'Header First Java','Header First JSP','Header First Ajax'}"
				doubleName="enb" doubleHeaderKey="enKey"	
				doubleHeaderValue="--------请选择外文图书--------" 
				doubleEmptyOption="true" doubleMultiple="true" 
				rightDownLabel="下移" rightUpLabel="上移"	/>
		</s:form>

	</center>
  </body>
</html>
