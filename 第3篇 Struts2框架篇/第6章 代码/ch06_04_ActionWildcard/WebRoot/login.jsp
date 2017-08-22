<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>µÇÂ¼Ò³Ãælogin.jsp</title>
    <script type="text/javascript">
	  	function register(){
	  		var form=document.forms[0];
	  		form.action="registerAction";
	  		form.submit();
	  	}  	
  	</script>
  </head>
  <body>
    <div align=center>  
      <form name="form1" action="loginAction" method="post">
      	ÓÃ»§Ãû£º<input type="text" name="username"><br>
      	ÃÜ     Âë£º<input type="password" name="password"><br>
      	<input type="submit" value="µÇÂ¼">&nbsp;&nbsp;&nbsp; 
      	<!--a href=""><input type="button" value="×¢²á"></a-->
      	<input type="button" value="×¢²á" onclick="register()">      	
      </form>
    </div>	
  </body>
</html>
