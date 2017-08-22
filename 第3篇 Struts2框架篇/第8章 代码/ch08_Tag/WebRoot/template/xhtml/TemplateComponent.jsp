<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>


	<s:checkboxlist name="interestlist" label="您的兴趣爱好"
		list="{'唱歌','跳舞','看书','球类运动'}" />
	<s:select name="booklist" label="您最感兴趣的书" labelposition="left"
		list="parameters.booklist" cssStyle="font-size:12px;"/>


