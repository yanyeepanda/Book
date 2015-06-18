<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>注册成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">


  </head>
  
  <body>
  <div id="reg_s">
  	<p>恭喜你：<font color="red">${user.name}</font> 注册成功！</p>
  	<a href="member.jsp">进入用户管理</a>
  	<a href="booklist.jsp">找藏书</a>
    </div>
  </body>
</html>
