<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
	<title>PoshTeam</title>
	
</head>
<body>
	
		<%
			String courseId = (String) (request.getParameter("courseId"));
			String studentId = (String) (request.getParameter("Id"));
			
			
			String url = "jdbc:mysql://localhost:3306/MiduPeal";
			String username = "root";
			String password = "midupeal";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			String sql = String.format("insert into MiduPeal.enrollments (course_id, student_id) values ('%s','%s')",courseId,studentId);
			Statement st = con.createStatement();
			st.executeUpdate(sql);
			String back = "location.href='CourseEnroll.jsp?studentId="+studentId+"'";
			String errorMessage = "Well Done";
		    response.sendRedirect("courses.jsp?status=PASSED&errorMessage=" + URLEncoder.encode(errorMessage, "UTF-8")+"&Id=" + URLEncoder.encode(request.getParameter("Id"), "UTF-8"));
		%>
		

</body>
</html>
    