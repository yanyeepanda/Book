<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div>
<ul id="menu">
	<li><a href="index.jsp" class="home">主页<span></span></a></li>
	<li><a href="booklist.jsp" class="sort">图书分类<span></span></a></li>	
<li><a href="#" class="about">关于布可<span></span></a></li>
</ul>
</div>
 <div id="serachDiv">
       	<div style="padding-left:50px">
       	 <form action="pageSearchServlet" method="post" id="searchForm">
       	 	<table>
       	 		<tr>
       				<td><input type="text" name="keywords" id="keywords" /></td>
       				<td><input type="image" src="image/search.gif" name="submit" /></td>
       				<td><img src="image/gjsearch.png" name="gjsearch" /></td>
       				<td><a href="showSuperTypeServlet">高级搜索</a></td>
       				<td></td>
       			</tr>
       		</table>
       	 </form>
       	</div> 		
       </div>
