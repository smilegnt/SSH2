<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
<head>
	<title>使用autocompleter控件自动补全</title>
	<meta http-equiv="pragma" content="no-cache" />
 	<meta http-equiv="cache-control" content="no-cache" />
  	<meta http-equiv="expires" content="0" />
  	<meta http-equiv="keywords" content="ajax,auto" />
  	<meta http-equiv="description" content="自动补全" />
  	
	<sx:head/>
</head>
<body>
	<s:form id="myform">     
	<!-- showDownArrow:文本框中是否出现下拉箭头图标        autoComplete：是否自动输入提示，数据补全就全靠这个属性       list:数据源     -->   
	    <sx:autocompleter  showDownArrow="true" autoComplete="true" label="用户名" list="data" />       
	</s:form>
</body>
</html>