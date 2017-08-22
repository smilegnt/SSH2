<%@ page language="java" import="java.util.*;" pageEncoding="gbk" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>sx:tabbedpanel标签的使用</title>
	<sx:head />
</head>
<body>

	<h4><font color="blue">使用sx:tabbedpanel标签生成选项卡</font></h4>
	<sx:tabbedpanel id="book" labelposition="top" doLayout="true" cssStyle="width:400px;height:150px;" >
		<sx:div id="oneTab" label="清华大学出版社">
			Java程序设计<br>
			JSP程序设计<br>
			SSH框架技术<br>			
		</sx:div>
		<sx:div id="twoTab" label="电子工业出版社">
			Java Web应用开发<br>
			Ajax技术实战<br>						
		</sx:div>
		<sx:div id="threeTab" label="人民邮电出版社">
			Java应用开发<br>				
		</sx:div>
	</sx:tabbedpanel>

</body>
</html>

