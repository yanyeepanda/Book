<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>3d</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/dimension.css" />

	<script type="text/javascript" src="js/dimension.js"></script>
  </head>
  
  <body>
    <div id="div1">
	<a href="http://localhost:8080/book">教材</a>
	<a href="http://localhost:8080/book/course_outline_1.html.php" class="red">教辅</a>
	<a href="http://localhost:8080/book">小说</a>
	<a href="http://localhost:8080/book">漫画</a>
	<a href="http://localhost:8080/book" class="blue">杂志</a>
	<a href="http://localhost:8080/book">英语</a>
	<a href="http://localhost:8080/book" class="red">计算机</a>
	<a href="http://localhost:8080/book" class="yellow">其它</a>
	<a href="http://localhost:8080/book">高考</a>
	<a href="http://localhost:8080/book" class="red">外语</a>
	<a href="http://localhost:8080/book">绝版书籍</a>
	<a href="http://localhost:8080/book" class="blue">法律图书</a>
	<a href="http://localhost:8080/book">精算</a>
	<a href="http://localhost:8080/book" class="red">古书</a>
    </div>
 
  </body>
</html>
