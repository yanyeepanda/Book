<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>飞</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/booklist.css"/>	
	<script type="text/javascript" src="js/booklist.js"></script>
	<script type="text/javascript">
	  window.onload=function(){
	    if(!NiftyCheck())
	        return;
	  Rounded("div#news div","tr bl","#FFF","transparent");
	};
	</script>
  </head>

<body>
 <!-- header -->
	   <%@include file="head.jsp" %>
    <div id="new">
      <div class="n1">
   	<table>
   		<tr>
   			<td>
   			<c:forEach var="flag" items="${hostList}">
   				<table>
   					<tr>
   						<td width="200" height="150"><a href="showBookByIdServlet?bookId=${flag.bookID}"><img src="${flag.picture}" /></a></td>
   					</tr>
   					<tr>
   						<td width="200" height="25"><a href="showBookByIdServlet?bookID=${flag.bookID}">${flag.bookname}</a></td>
   					</tr>
   					<tr>
   						<td width="200" height="25">${flag.ISBN}</td>
   					</tr>
   				</table>
   				<td>
   			</c:forEach>	
   			</td>
   		</tr>
   	</table>
      </div>
      <div class="n2">
   	<table>	
   		<tr>
   			<td>
   			<c:forEach var="flag" items="${newList}">
   				<table>
   					<tr>
   						<td width="200" height="150"><a href="showBookByIdServlet?bookID=${flag.bookID}"><img src="${flag.picture}" /></a></td>
   					</tr>
   					<tr>
   						<td width="200" height="25"><a href="showBookByIdServlet?bookID=${flag.bookID}">${flag.bookname}</a></td>
   					</tr>
   					<tr>
   						<td width="200" height="25">${flag.ISBN}</td>
   					</tr>  			
   				</table>
   				<td>
   			</c:forEach>
   			</td>
   		</tr>
   	</table>
      </div>
      <div class="n3">
   	<table>	
   		<tr>
   			<td>
   			<c:forEach var="flag" items="${saleList}">
   				<table>
   					<tr>
   						<td width="200" height="150"><a href="showBookByIdServlet?bookID=${flag.bookID}"><img src="${flag.picture}" /></a></td>
   					</tr>
   					<tr>
   						<td width="200" height="25"><a href="showBookByIdServlet?bookID=${flag.bookID}">${flag.bookname}</a></td>
   					</tr>
   					<tr>
   						<td width="200" height="25">${flag.ISBN}</td>
   					</tr>	
   				</table>
   				<td>
   			</c:forEach>
   			</td>
   		</tr>
   	</table>
      </div>
      <div class="n4">
        <h3>Just explore.</h3>
      </div>
      <div class="n5">
        <h3>Just explore.</h3>
      </div>
      <div class="n6">
        <h3>Just explore.</h3>
      </div>
    </div>
  </body>
</html>