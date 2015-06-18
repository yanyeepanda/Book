<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>-Book布可网booK-</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link rel="stylesheet" href="css/style.css" type="text/css"></link>  
  <link rel="stylesheet" href="css/login.css" type="text/css"></link>
  </head>
  
  <body>
  <div id="indexlogo"><img src="image/logo.png" width="362" height="347"></div>
  <div id="indexbuttonl"><a href="booklist.jsp"><img src="image/indexbutton.gif" width="96" height="80">
    <div id="indexbuttonr"><a href="bookrelease.jsp"><img src="image/indexbutton2.gif" width="85" height="67"></div>
  </div>
  <div id="login">
    <form >
      <label for="name3">用户名:</label>
      <input type="text" name="email" class="required"/>
      <label for="password">密码:</label>
      <input type="password" name="password" />
      <p class="remember">
        <input type="checkbox" class="checkbox"/>
        下次自动登录</p>
      <input type="submit" class="submit" value="Sign In" />
      <p><a href="#" class="tooltip">忘记密码?<span>点击这里重置密码</span></a></p>
    </form>
  </div>
  <div id="indexlist">
    <div><a href="learning_material.jsp">教材</a>‖<a href="learning_material.jsp">教辅</a>‖<a href="english.jsp">英语</a>‖<a href="fiction.jsp">小说</a>‖<a href="magzine.jsp">杂志</a>‖<a href="others.jsp">其它</a></div>
  </div>
</body>
</html>