<%@page contentType="text/html;charset=utf-8"%>
<%@page import="java.util.*"%>
<%
// 取得设置的属性
String refName = (String)request.getAttribute("name") ;
Date refDate = (Date)request.getAttribute("date") ;
%>
<h2>姓名：<%=refName%></h2>
<h2>日期：<%=refDate%></h2>
