<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>datetimepicker标签示例</title>
 
  </head>
  <s:head theme="xhtml"/>   
  <sx:head parseContent="true"/>

  <body>
   	<center>
   	<h4><font color="blue">使用sx:datetimepicker标签生成选择时间</font></h4>
   	<s:form>
   		选择日期:<sx:datetimepicker name="birth" value="today" displayFormat="yyyy年MM月dd日" type="date"/>
   		选择时间:<sx:datetimepicker name="time" displayFormat="hh:mm" type="time" ></sx:datetimepicker>
   	</s:form>
   	</center>
  </body>
</html>
