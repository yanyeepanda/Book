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
	<a href="http://localhost:8080/book">�̲�</a>
	<a href="http://localhost:8080/book/course_outline_1.html.php" class="red">�̸�</a>
	<a href="http://localhost:8080/book">С˵</a>
	<a href="http://localhost:8080/book">����</a>
	<a href="http://localhost:8080/book" class="blue">��־</a>
	<a href="http://localhost:8080/book">Ӣ��</a>
	<a href="http://localhost:8080/book" class="red">�����</a>
	<a href="http://localhost:8080/book" class="yellow">����</a>
	<a href="http://localhost:8080/book">�߿�</a>
	<a href="http://localhost:8080/book" class="red">����</a>
	<a href="http://localhost:8080/book">�����鼮</a>
	<a href="http://localhost:8080/book" class="blue">����ͼ��</a>
	<a href="http://localhost:8080/book">����</a>
	<a href="http://localhost:8080/book" class="red">����</a>
    </div>
 
  </body>
</html>
