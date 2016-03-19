<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <s:actionerror/>
  <s:actionmessage/>
  <s:fielderror/>
  
  <body>
    <s:form action="tag.action" method="post">
    	<s:textfield name="userBean.userId" label="学号" maxlength="10" required="true"/>
    	<s:textfield name="userBean.userName" label="姓名" maxlength="9" required="true"/>
    	<s:password name="userBean.password" label="密码" maxlength="9" required="true"/>
    	<s:textfield name="userBean.birthday" label="生日" maxlength="10" required="true">
    		<s:param name="value">
    			<s:date name="userBean.birthday" format="yyyy-MM-dd"/>
    		</s:param>
    	</s:textfield>
    	<s:radio name="userBean.sex" label="性别" list="{'男','女'}"/>
    	<s:checkboxlist name="userBean.hobby" label="爱好" list="{'足球','游泳','下棋','唱歌'}"/>
    	<s:select name="userBean.city" label="所在地" list="{'江苏','上海','南京'}"/>
    	<s:textarea tooltip="WriteSomething" label="备注" name="userBean.remarks" cols="20" rows="3"/>
    	<s:submit value="提交"/>
    	<s:reset value="重置"/>
    </s:form>
  </body>
</html>
