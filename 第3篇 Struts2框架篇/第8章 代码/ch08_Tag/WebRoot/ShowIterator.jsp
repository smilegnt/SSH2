<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>iterator标签示例</title>
  </head> 
  <body>
   	<center>
   	<h4><font color="blue">使用s:iterator标签迭代输出</font></h4>
	
	<s:iterator value="{'故人西辞黄鹤楼，','烟花三月下扬州。'}" var="poem">
		<s:property value="poem"/><br>
	</s:iterator>
	<hr>
	<s:iterator value="#{'1001':'Java程序设计','1002':'JSP程序设计','1003':'SSH框架技术'}" var="bookName" >
    	<s:property value="key"/>
        <s:property value="value"/><br> 
	</s:iterator>
	<hr>
	<s:iterator value="{'清华大学','复旦大学','北京大学','南京大学'}" var="university" status="stat">
		<s:if test="#stat.odd">	<!-- 判断当前索引是否为偶数 -->
       		<s:property value="#stat.count"/>&nbsp;&nbsp;<s:property/><br>
        </s:if>
    </s:iterator>
    <hr>	
    <table border="1">
    	<tr><td>序号</td><td>出版社</td></tr>
    	<s:iterator value="{'清华大学出版社','人民邮电出版社','北京大学出版社',
'电子工业出版社'}" var="publisher" status="stat">
        <tr>       	   
       	  <s:if test="#stat.index%2==0"> 
	   		<td><s:property value="#stat.count"/></td>
			<td style="background-color:red;">
				<s:property value="publisher"/></td>
		 </s:if>   
         <s:else>
         	<td><s:property value="#stat.count"/></td> 
			<td style="background-color:gray">
				<s:property value="publisher"/></td>
		</s:else>
      </tr>      
	</s:iterator>
	</table>
	
	</center>
  </body>
</html>
	