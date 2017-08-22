<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Ajax验证用户名是否可用</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
<script language="javascript">
	var xmlhttp;//声明浏览器初始化对象变量
	function checkUserExists() {
		var f = document.form1;
		var username = f.username.value;
		if (username == "") {
			alert("用户名不能为空");
			f.username.focus();
			return false;
		} else {
			doAjax("check.action?username="+username);
		}
	}
	function doAjax(url) {
		try {
			xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
				try {
					xmlhttp = new XMLHttpRequest();
					if (xmlhttp.overrideMimeType) {
						xmlhttp.overrideMimeType("text/xml");
					}
				} catch (e) {
				}
			}
		}
		//判断XMLHttpRequest对象是否成功创建
		if (!xmlhttp) {
			alert("不能创建XMLHttpRequest对象实例");
			return false;
		}
		//创建请求结果处理程序
		xmlhttp.onreadystatechange = processReuqest;
	
		xmlhttp.open("post", url, true);
		//如果以post方式请求，必须要添加
		xmlhttp.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");

		xmlhttp.send(null);
	}
	String.prototype.trim = function() {
		var m = this.match(/^\s*(\S+(\s+\S+)*)\s*$/);
		return (m == null) ? "" : m[1];
	}
	function processReuqest() {
		if (xmlhttp.readyState == 4) {//等于4代表请求完成
			if (xmlhttp.status == 200) {
				//responseText表示请求完成后，返回的字符串信息				
				if (xmlhttp.responseText.trim() == "false") {
					document.getElementById("mess").innerHTML = "用户名可以使用";					
				} else {
					document.getElementById("mess").innerHTML = "用户名已被使用";					
				}
			} else {
				alert("请求处理返回的数据有错误");				
			}
		}
	}
</script>
	</head>
	<body>
		<form name="form1" action="" method="post">
			用户名
			<input type="text" id="uname" name="username" value=""
				onblur="checkUserExists()" />
			<div id="mess" style="display: inline"/>
						
		</form>
	</body>
</html>
