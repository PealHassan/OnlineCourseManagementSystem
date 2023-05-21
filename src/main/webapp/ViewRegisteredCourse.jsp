<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PoshTeam</title>
<style>
	.course {
			width: 500px;
			display: inline-block;
			padding: 10px;
			margin-right: 10px;
			margin-bottom: 20px;
			background-color: #f2f2f2;
			border-radius: 5px;
			box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.5);
		}
		.course h2 {
			margin-top: 0;
		}
		.course p {
			margin: 10px 0;
		}
		.course a {
			display: inline-block;
			margin-top: 10px;
			padding: 10px;
			background-color: #4CAF50;
			color: white;
			text-align: center;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s;
		}
		.course a:hover {
			background-color: #3e8e41;
		}
		.margin {
			margin-left: 200px;
			margin-top: 20px;
		}
		<style>
		body {
			background-color: #f7f7f7;
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}
		
		h1 {
			margin: 0;
			padding: 20px;
			background-color: #4CAF50;
			color: white;
			text-align: center;
		}
		
		nav {
			background-color: #333;
			color: white;
			overflow: hidden;
			padding: 10px;
			box-shadow: 0px 3px 5px rgba(0, 0, 0, 0.2);
		}
		
		nav ul {
			list-style: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		
		nav li {
			float: left;
			margin-right: 10px;
		}
		
		nav a {
			display: block;
			color: white;
			text-align: center;
			padding: 10px;
			text-decoration: none;
			transition: background-color 0.3s;
		}
		
		nav li.active a {
			background-color: #4CAF50;
		}
		
		nav a:hover {
			background-color: #555;
		}
	</style>
</style>
</head>
<body>
<%
		
	    String studentId = (String)(request.getParameter("studentId"));
	    String usertype = (String) (request.getParameter("usertype"));
	    String url = "jdbc:mysql://localhost:3306/MiduPeal";
	    String username = "root";
	    String password = "midupeal";
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection(url,username,password);
	    String sql = String.format("(select course_id from MiduPeal.enrollments where student_id = '%s')",studentId);
	    String sql2 = "select * from MiduPeal.courses where course_id in " + sql;
	    Statement st = con.createStatement();
	    ResultSet rs = st.executeQuery(sql2);
	    Statement st2 = con.createStatement();
	    sql2 = "select count(*) from MiduPeal.courses where course_id in " + sql;
	    ResultSet rs2 = st2.executeQuery(sql2);
	    rs2.next();
	    int tot = rs2.getInt(1);
	   
	%>
	<h1>Course Registration</h1>
	<nav>
		<ul>
			<li><a href="CourseEnroll.jsp?studentId=<%= URLEncoder.encode(studentId, "UTF-8")%>&usertype=<%= URLEncoder.encode(usertype, "UTF-8")%>">Courses</a></li>
			<li class = "active"><a href="ViewRegisteredCourse.jsp?studentId=<%= URLEncoder.encode(studentId, "UTF-8")%>&usertype=<%= URLEncoder.encode(usertype, "UTF-8")%>">View registered courses</a></li>
			<li><a href="Home.jsp">Log out</a></li>
		</ul>
	</nav>
    <div class = "margin">
	<c:forEach var="i" begin="1" end="<%=tot%>">
	    <%rs.next();%>
	    <div class="course">
			<h2><%out.println(rs.getString("course_name"));%></h2>
			<p><%out.println(rs.getString("course_id")); %></p>
			<p>Instructed By:
				<%
					String sql3 = "select * from MiduPeal.users where id = '" + rs.getString("teacher_id")+"'";
					Statement st3 = con.createStatement();
					ResultSet rs3 = st3.executeQuery(sql3);
					rs3.next();
					out.println(rs3.getString("username")); 
				%>
			<p><% out.println(rs.getString("course_description")); %></p>
		</div>
	</c:forEach>
	</div>
</body>
</html>