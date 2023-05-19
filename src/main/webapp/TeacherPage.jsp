<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<!DOCTYPE html>
<html>
<head>
	<title>Teacher Dashboard</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
	.container {
	margin-top: 50px;
	background-color: #eef7f0; /* Light Green */
}

h1 {
	text-align: center;
	margin-bottom: 20px;
	color: #235c34; /* Dark Green */
}

.course-list {
	list-style-type: none;
	padding: 0;
	margin-bottom: 20px;
}

.course-list li {
	margin-bottom: 20px;
	border: 1px solid #a2d9a2; /* Lighter Green */
	padding: 20px;
	border-radius: 5px;
	background-color: #fff; /* White */
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

.course-list li h2 {
	margin-bottom: 10px;
	color: #235c34; /* Dark Green */
}

.course-list li p {
	margin-bottom: 5px;
	color: #333;
}

.course-list li p:last-child {
	margin-bottom: 0;
}

.course-list li p strong {
	font-weight: bold;
	color: #235c34; /* Dark Green */
}

.course-list li p span {
	font-style: italic;
	color: #78b483; /* Light Green */
}

.course-list li:hover {
	background-color: #f2f9f5; /* Lighter Green */
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
}

.course-list li .enrolled-students {
	display: none;
	margin-top: 20px;
	border-top: 1px solid #a2d9a2; /* Lighter Green */
	padding-top: 20px;
}

.course-list li .enrolled-students-title {
	margin-bottom: 10px;
	color: #235c34; /* Dark Green */
}

.course-list li .enrolled-students-list {
	list-style-type: none;
	padding: 0;
}

.course-list li .enrolled-students-list li {
	margin-bottom: 5px;
	color: #333;
}
.course-list li {
	position: relative;
}

.view-students {
	position: absolute;
	bottom: 30px;
	right: 20px;
}

.view-students a {
	background-color: #235c34; /* Dark Green */
	color: #fff; /* White */
	padding: 5px 10px;
	border-radius: 3px;
	text-decoration: none;
}

.view-students a:hover {
	background-color: #78b483; /* Light Green */
}
	.logout-btn {
		position: fixed;
		top: 20px;
		right : 20px;
	}

	.logout-btn a {
		display: inline-block;
		padding: 10px 20px; 
		background-color: #f44336;
		color: #fff;
		text-decoration: none;
		border-radius: 5px;
		font-size: 16px;
		transition: background-color 0.3s ease;
	}

	.logout-btn a:hover {
		background-color: #d32f2f;
	}

	
	</style>
</head>
<body>
<%
	    String teacherId = (String)(request.getParameter("teacherId"));
	    String usertype = (String) (request.getParameter("usertype"));
	    String url = "jdbc:mysql://localhost:3306/MiduPeal";
	    String username = "root";
	    String password = "midupeal";
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection(url,username,password);
	    String sql = String.format("select * from MiduPeal.courses where teacher_id = '%s'",teacherId);
	    //String sql2 = "select * from MiduPeal.courses where course_id not in " + sql;
	    Statement st = con.createStatement();
	    ResultSet rs = st.executeQuery(sql);
	    
	    
	    Statement st2 = con.createStatement();
	    String sql2 = "select count(*) from MiduPeal.courses where teacher_id = '" + teacherId + "'";
	    ResultSet rs2 = st2.executeQuery(sql2);
	    rs2.next();
	    int tot = rs2.getInt(1);
	%>
	<div class="container">
	<h1>Registered Courses</h1>
	<div class = "logout-btn">
			<a href="Home.jsp" class="btn btn-primary">Logout</a>
	</div>
	<ul class="course-list">
		<c:forEach var="i" begin="1" end="<%=tot%>">
			<li class="course-link">
				<% rs.next(); %>
				<h2><% out.println(rs.getString("course_name")); %></h2>
				<p><% out.println(rs.getString("course_id")); %></p>
				<p><% out.println(rs.getString("course_description")); %></p>
				<div class="view-students">
					<a href="students.jsp?courseId=<%= rs.getString("course_id") %>">View Students List</a>
				</div>
			</li>
		</c:forEach>
	</ul>
</div>
	
	
</body>
</html>
