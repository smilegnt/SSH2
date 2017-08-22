<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.util.*"%>
<%
// 此时设置的属性只能够在本页中取得
pageContext.setAttribute("name","JSP") ; // 设置属性
pageContext.setAttribute("date",new Date()) ; // 设置属性
%>
<%
// 取得设置的属性
String refName = (String)pageContext.getAttribute("name") ;
Date refDate = (Date)pageContext.getAttribute("date") ;
%>
<h2>姓名：<%=refName%></h2>
<h2>日期：<%=refDate%></h2>
