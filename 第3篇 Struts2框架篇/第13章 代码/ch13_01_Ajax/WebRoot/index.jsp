<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
    <title>Ajax示例</title>
    <script type ="text/javascript">
        var req; 
        function creatReq() // 创建xmlhttprequest
        {
            var url="ajaxserver.jsp"; 
            if(window.XMLHttpRequest) 
            {
                req=new XMLHttpRequest();
            }
            else 
            {
                alert("你的浏览器有点旧，换个新版本的！");
            }
            
            if(req) 
            {
                req.open("GET",url,true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
                req.send(null); 
                req.onreadystatechange = callback; //指定回调函数                
            }
        }        
        function callback() 
        {
            if(req.readyState==4) //请求状态为4表示成功
            {
                if(req.status==200)
                {
                    Dispaly(); //显示数据
                }
                else 
                {
                    alert("服务端返回状态" + req.statusText);
                }
            }
            else 
            {
                document .getElementById ("myTime").innerHTML ="数据加载中……";
            }
        }        
        function Dispaly() 
        {
            document.getElementById ("myTime").innerHTML =req.responseText;
        }
        
    </script>
</head>
<body>
    <div id="myTime"></div>        
    <input id="Button1" type="button" value="时间"  onclick ="creatReq();"/>
</body>
</html>