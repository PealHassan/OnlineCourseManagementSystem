<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Course Details</title>
	<style>
		.course-details {
			margin-top: 200px;
			margin-left: 550px;
			align:center;
			max-width: 800px;
			padding: 20px;
			background-color: #f5f5f5;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
			text-align: center;
		}
		.course-details h1 {
			margin-bottom: 10px;
			color: green;
		}
		.course-details h2 {
			font-size: 36px;
			margin-bottom: 10px;
			color: #333;
		}
		.course-details p {
			font-size: 24px;
			color: #666;
		}
		
		
	</style>
</head>
<body>
	<div class="course-details">
		<h1 >Successfully Enrolled</h1>
		<h2><%out.println(request.getParameter("courseName")); %></h2>
		<p>Course ID: <%out.println(request.getParameter("courseId")); %></p>
		
	</div>
</body>
</html>
    