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
    
    <title>My JSP 'result.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/result.css">
	
  </head>
  
  <body>
    学号:
    <s:property value="userBean.userId"/><br>
    姓名:
    <s:property value="userBean.userName"/><br>
    密码:
    <s:property value="userBean.password"/><br>
    生日:
    <s:date name="userBean.birthday" format="yyyy-MM-dd"/><br>
    性别:
    <s:property value="userBean.sex"/><br>
    所属城市:
    <s:property value="userBean.city"/><br>
    爱好:
    <s:iterator value="userBean.hobby">
    	<s:property />
    </s:iterator><br>
    备注:
    <s:property value="userBean.remarks"/>
  </body>
</html>
