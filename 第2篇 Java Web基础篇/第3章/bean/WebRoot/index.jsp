<%@ page contentType="text/html;charset=utf-8" pageEncoding="GBK"%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>��Bean����</title>  
    <link rel="StyleSheet" href="../../CSS/style.css" type="text/css" />  
  </head>  
     
  <body>  
  
  <form action="" method="post">  
  <table>  
  <tr>  
  <td>  
    <span class="blue10">�û���:</span>  
  </td>  
  <td>  
    <input type="text" name="mUserName" size="20"><br>  
  </td>  
  </tr>  
  <tr>  
  <td>  
    <span class="blue10">��  ��:</span>  
  </td>  
  <td>  
    <input type="password" name="mPassword" size="20"><br>  
  </td>  
  </tr>  
  <tr>  
  <td>  
  </td>  
  <td>  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
    <input type=submit value="submit"/>  
  </td>  
  </tr>  
  </table>  
  </form>  
  
  <jsp:useBean id="user" class="tt.mybean"/>  
  <jsp:setProperty name="user"  property="name" param="mUserName"/>  
  <jsp:setProperty name="user"  property="password" param="mPassword"/>  
     
  <hr/>  
     
  �û�����<jsp:getProperty name="user" property="name"/>  
  <br>  
  ��  �룺<jsp:getProperty name="user" property="password"/>  
     
  </body>  
</html>  
