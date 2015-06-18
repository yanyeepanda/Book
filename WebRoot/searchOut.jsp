<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>
<%@taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>搜索结果</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<div id="wrap">
      <%@include file="head.jsp" %>
       <div class="center_content">
       	<div class="left_content">
        	<div class="crumb_nav">
            <a href="index.jsp">布可网</a> &gt;&gt;图书查找结果
            </div>
            <div class="title"><span class="title_icon"><img src="image/exchange.gif" alt="" title="" /></span>您要找的图书在这里~！</div>
           <div class="new_products">
           	    <c:choose>
    			<c:when test="${empty page.pageList}">
    				<font color="red">${NoRelativeBooksException}</font>
    			</c:when>
    			<c:otherwise>
           		<c:forEach var="book" items="${page.pageList}">
                    <div class="new_prod_box">
                        <a href="bookinfo.jsp">${book.bookname }</a>
                        <div class="new_prod_bg">
                        <a href="bookinfo.jsp"><img src="${book.picture}" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                </c:forEach>
			</c:otherwise>
		</c:choose>
		 <div class="pagination">
            <span class="disabled">
     <pg:pager items="${page.totalNum}" url="pageSearchServlet" maxPageItems="3" maxIndexPages="5">
    	<pg:first>
    		<a href="${pageUrl}">第一页</a>
    	</pg:first>
    	<pg:prev>
        <a href="${pageUrl}">&lt;</a>
        </pg:prev>
    	<pg:pages>
    		<a href="${pageUrl}">${pageNumber}</a>
    	</pg:pages>
    	<pg:next>
    		<a href="${pageUrl}">&gt;</a>
    	</pg:next>
    	<pg:last>
        <a href="${pageUrl}">最后一页</a>
        </pg:last>
    </pg:pager> 
    </span>
       </div>     
     </div> 
          
            
        <div class="clear"></div>
        </div><!--end of left content-->
         <%@include file="right.jsp" %>
     
</body>
</html>