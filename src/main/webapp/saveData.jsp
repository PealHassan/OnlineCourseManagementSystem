<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,com.mysql.jdbc.Driver" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PoshTeam</title>
</head>
<body>
<%
	String url = "jdbc:mysql://localhost:3306/MiduPeal";
	String user = "root";
	String pass = "midupeal";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,user,pass);
	String username = request.getParameter("username");  
	String password = request.getParameter("password");   
	String repeatPassword = request.getParameter("repeatPassword");
	String usertype = request.getParameter("usertype");
	String email = request.getParameter("email");
	String Message = "";
	
	if(!password.equals(repeatPassword)) {
		Message = "Password and Repeat Password doesn't match";
		response.sendRedirect("signup.jsp?status=FAILED&errorMessage=" + URLEncoder.encode(Message, "UTF-8"));
		return;
	}
	String sql = String.format("select * from users where username = '%s'",username);
	Statement st = con.createStatement();   
	ResultSet rs = st.executeQuery(sql);
	if(rs.next()) {
		Message = "Given UserName Already Exists";
		response.sendRedirect("signup.jsp?status=FAILED&errorMessage=" + URLEncoder.encode(Message, "UTF-8"));
		return;
	}
	sql = "select count(*) from users";
	Statement st2 = con.createStatement();  
	ResultSet rs2 = st2.executeQuery(sql);
	rs2.next();  
	int tot = 1000+rs2.getInt(1);  
	String id = String.valueOf(tot);
	sql = String.format("insert into users (id,username,password,user_type,email) values ('%s','%s','%s','%s','%s')",id,username,password,usertype,email);
	Statement st3 = con.createStatement();
	
	st3.executeUpdate(sql);
	Message = "Signed Up Successfully";
	response.sendRedirect("signup.jsp?status=PASSED&errorMessage=" + URLEncoder.encode(Message, "UTF-8"));
 
%>
</body>
</html>