<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String url = "jdbc:mysql://localhost:3306/MiduPeal";
	String username = "root";
	String password = "midupeal";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,password);
	String sql = "show databases";
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql);
	while(rs.next()) {
		out.println(rs.getString("Database"));
	}
%>
</body>
</html>