<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<%@ page import="java.net.URLEncoder" %>
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
		.btn {
		text-decoration: none;
		  background-color: #4CAF50; /* Green background */
		  border: none; /* Remove borders */
		  color: white; /* White text */
		  padding: 12px 24px; /* Some padding */
		  font-size: 16px; /* Set a font size */
		  cursor: pointer; /* Change mouse pointer on hover */
		  border-radius: 5px; /* Add rounded corners */
		}

		.btn:hover {
		  background-color: #3e8e41; /* Darker green on hover */
		}
		
		
		
		
	</style>
</head>
<body>
	<%-- <div class="course-details">
		<h1 >Successfully Enrolled</h1>
		<h2><%out.println(request.getParameter("courseName")); %></h2>
		<p>Course ID: <%out.println(request.getParameter("courseId")); %></p> --%>
		<%
			String courseId = (String) (request.getParameter("courseId"));
			String studentId = (String) (request.getParameter("studentId"));
			String usertype = (String) (request).getParameter("usertype");
			
			
			String url = "jdbc:mysql://localhost:3306/MiduPeal";
			String username = "root";
			String password = "midupeal";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			String sql = String.format("insert into MiduPeal.enrollments (course_id, student_id) values ('%s','%s')",courseId,studentId);
			Statement st = con.createStatement();
			st.executeUpdate(sql);
			String back = "location.href='CourseEnroll.jsp?studentId="+studentId+"'";
			response.sendRedirect("CourseEnroll.jsp?studentId="+studentId+"&usertype="+usertype);
		%>
		<%-- <a class = "btn" href="CourseEnroll.jsp?studentId=<%= URLEncoder.encode(studentId, "UTF-8")%>&usertype=<%= URLEncoder.encode(usertype, "UTF-8")%>">Confirm</a> --%>
		
	</div>
</body>
</html>
    