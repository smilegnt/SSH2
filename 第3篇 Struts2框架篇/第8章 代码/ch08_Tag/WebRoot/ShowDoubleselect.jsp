<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>doubleselect标签示例</title>
  </head> 
  <body>
   	<center>
   	<h4>使用s:doubleselect标签生成级联框</h4>
	<s:form name="form1" >
		<!-- 默认情况下，第一个下拉列表框只支持两项 -->
		<s:doubleselect label="请选择城市" name="city" list="{'北京市', '上海市'}" 
			doubleList="top=='北京市'?{'东城区','西城区','朝阳区','海淀区'}:{'闸北区','普陀区','杨浦去','闵行区'}"
			doubleName="cityZ" />
		<s:set name="citys"
		   value="#{'江苏省':{'南京市','苏州市','无锡市','扬州市'},
		   			'浙江省':{'杭州市','宁波市','温州市'},
		            '安徽省':{'合肥市','芜湖市'}}"></s:set>
		<s:doubleselect label="选择你所在城市" name="province" size="1" list="#citys.keySet()" doubleSize="2" doubleList="#citys[top]" doubleName="cityP" />
	</s:form>	

	
	</center>
  </body>
</html>
