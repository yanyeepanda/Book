<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>书籍高级搜索</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript">
  	var req;
		function selectedSuper(){
			if(window.XMLHttpRequest){//Mozillia
				req = new XMLHttpRequest();
			}else if(window.ActiveXObject){//IE
				req = new ActiveXObject("Microsoft.XMLHTTP");
			}
			//设置回调函数
			req.onreadystatechange = callback;
			var superTypeId = document.getElementById("superType").value;
			var url = "showSubTypeServlet?superTypeId="+superTypeId;
			req.open("get",url,true);
			var price1 = document.getElementById("price1");
  			var price2 = document.getElementById("price2");
  			var other = document.getElementById("other");
  			other.style.visibility = "hidden";
  			price1.style.visibility = "hidden";
  			price2.style.visibility = "hidden";
			req.send(null);
		}
		function clearSubType(){
			var subT = document.getElementById("subT");
			subT.length=0;
		}
		function callback(){
			var state = req.readyState;
			var subT = document.getElementById("subT");
			if(state==4 && req.status==200){
			clearSubType();
			var dom = req.responseXML;
			var subType = dom.getElementsByTagName("subType");
			for(i=0;i<subType.length;i++){
				var subTypeId = subType[i].getElementsByTagName("subTypeId")[0];
				var subTypeName = subType[i].getElementsByTagName("subTypeName")[0];
				var subValue = subTypeId.firstChild.data;
				var subText = subTypeName.firstChild.data;
				subT[i] = new Option(subText,subValue);
			}
			}
		}
  	function getSM(){
  		var searchMethod = document.getElementById("searchMethod").value;
  		if(searchMethod=="noChoice"){
  			alert("请选择查询方式");
  		}else if(searchMethod=="price"){
  			var price1 = document.getElementById("price1");
  			var price2 = document.getElementById("price2");
  			var other = document.getElementById("other");
  			other.style.visibility = "hidden";
  			price1.style.visibility = "visible";
  			price2.style.visibility = "visible";
  		}else {
  			var price1 = document.getElementById("price1");
  			var price2 = document.getElementById("price2");
  			var other = document.getElementById("other");
  			other.style.visibility = "visible";
  			price1.style.visibility = "hidden";
  			price2.style.visibility = "hidden";
  		}
  	}
	function checkDetails(){
		var superType = document.getElementById("superType");
		var subT = document.getElementById("subT");
		var upLoadTime = document.getElementById("upLoadTime");
		var searchMethod = document.getElementById("searchMethod");

		if(superType.value != "noChoice" && subT.value != "noChoice" && searchMethod.value != "noChoice" && upLoadTime.value != "noChoice"){
			if(searchMethod.value=="price"){
				var prices = document.getElementById("prices");
				if(prices.value != "noChoice"){
					document.detailSearch.submit();
				}
			}else {
				var content = document.getElementById("content");
				if(content.value != "noChoice"){
					document.detailSearch.submit();
				}
			}
		}else {
			alert("请选择查询条件!");
		}
	}
  </script>
  </head>
  
  <body>
    		<div id="wrap"> 
		 
			<!-- the begin of header -->
			<%@include file="header.jsp"%>
			<!-- the end of header -->
			
			<!-- the begin of content -->
			<div class="center_content">
				<!-- the begin of left -->
				<div class="left_content" >
					<div>
						<div>书籍高级搜索</div>
						<div>
						<form action="detailSearch" method="post" name="detailSearch">
							<table>
								<tr>
									<td>一级分类：</td>
									<td>
										<select id="superType" name="superType" onChange="selectedSuper()">
											<option value="noChoice">--请选择--</option>
											<c:forEach var="flag" items="${superList}">
						  					<option value="${flag.superTypeId}">${flag.typeName}</option>
						  					</c:forEach>
										</select>
									</td>
								</tr>
								<tr>
									<td>二级分类：</td>
									<td>
										<select id="subT" name="subT">
											<option value="noChoice">--请选择--</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>请选择查询方式</td>
									<td>
										<select name="searchMethod" id="searchMethod" onChange="getSM()">
											<option value="noChoice">--请选择查询方式--</option>
											<option value="bookName">按书名查询</option>
											<option value="author">按分类查询</option>
											<option value="publisher">按出版时间查询</option>
											<option value="ISBN">按ISBN查询</option>
											<option value="price">按作者查询</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>出版时间：</td>
									<td>
										<select id="upLoadTime">
											<option value="noChoice">--请选择出版时间--</option>
											<option value="大于2008">2009年至今</option>
											<option value="2000-2008">2000年至2008年</option>
											<option value="1980-1999">1980年至1999年</option>
											<option value="小于1979">1979年以前</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><input type="button" value="提交" onClick="checkDetails()" /></td>
								</tr>
							</table>
						</form>
						</div>
					</div>
				</div><!--end of left content-->
				<div class="clear"></div>
			</div>
			<!--end of center content-->
			<%@include file="footer.jsp"%>
		</div>
  </body>
</html>
