<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>数据库连接测试</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">

  </head>
  
  <body> 
  <p>books表中前两条记录是</p>
  <%{
		
		//Create a variable for the connection string.
		String connectionUrl = "jdbc:sqlserver://localhost:1433;"+"databaseName=book;user=sa;password=null";

		//Declare the JDBC objects.
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			// Establish the connection.
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection(connectionUrl);

			//Create and execute an SQL statement that returns some data.
			String SQL = "SELECT TOP 2 * FROM books";
			stmt = con.createStatement();
			rs = stmt.executeQuery(SQL);

			//Iterate through the data in the result set and display it.
			while (rs.next()) {
				System.out.println(rs.getString(1));
			}
		}
		
		//Handle any errors that may have occurred.
		catch (Exception e) {
			e.printStackTrace ();
			}
		finally {
			if (rs != null) try { rs.close(); } catch(Exception e) {}
			if (stmt !=null) try { stmt.close(); } catch(Exception e) {}
			if (con != null) try { con.close(); } catch (Exception e) {}
		}
	}
} %>
  </body>
</html>
