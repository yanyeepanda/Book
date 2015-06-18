<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>图书详细信息</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
	<link rel="stylesheet" type="text/css" href="css/link.css">
	</head>

	<body>
		<div>
			<div id="left">
				<table>
					<tr>
						<td>
							<table>
								<tr>
									<td width="200" height="25">
										<a href="buyBooksServlet?bookId=${book.bookId}"><img
												src="image/exchange.gif" />
										</a>
									</td>
								</tr>
							</table>
						<td>
						</td>
					</tr>
				</table>
			</div>

			<div id="right">
				<table border="0" cellspacing="6">
					<tr>
						<td>
							书名
						</td>
						<td>
							${book.bookname}
						</td>
					</tr>
					<tr></tr>
					<tr>
						<td>
							书籍信息
						</td>
						<td>
							${book.info}
						</td>
					</tr>
					<tr>
						<td>
							出版社
						</td>
						<td>
							${book.company}
						</td>
					</tr>
					<tr>
						<td>
							ISBN编号
						</td>
						<td>
							${book.ISBN}
						</td>
					</tr>
					<tr>
						<td>
							相关搜索
						</td>
						<td>
							${book.ex_term}
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>
