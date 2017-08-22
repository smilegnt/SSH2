<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.util.*"%>
<%
// 此时设置的属性只能够在本页中取得
pageContext.setAttribute("name","MLDN") ; // 设置属性
pageContext.setAttribute("date",new Date()) ; // 设置属性
%>
<jsp:forward page="index2.jsp"/>
