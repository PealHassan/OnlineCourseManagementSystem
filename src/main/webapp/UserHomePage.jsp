<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>PoshTeam</title>
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
</head>
<body>
	<h1>Course Registration</h1>
	<nav>
		<ul>
			<li class="active"><a href="CourseEnroll.jsp">Courses</a></li>
			<li><a href="index.jsp">View registered courses</a></li>
			<li><a href="index.jsp">Log out</a></li>
		</ul>
	</nav>
</body>
</html>
