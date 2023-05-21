<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PoshTeam</title>
</head>
<body>
<%
	
	String course_name = request.getParameter("course_name");
	String course_id = request.getParameter("courseId");
	String course_description = request.getParameter("course_description");
	String teacher_name = request.getParameter("teacher_name");
	
	String findTeacherId = "select * from MiduPeal.users where user_type = 'teacher'";
	
	
	String url = "jdbc:mysql://localhost:3306/MiduPeal";
	String username = "root";
	String password = "midupeal";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,password);
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(findTeacherId);
	
	String validatesql = "select * from courses where course_id = '" + course_id + "'";
	Statement st2 = con.createStatement();  
	ResultSet rs2 = st2.executeQuery(validatesql);  
	if(rs2.next()) {
		String errorMessage = "Already Assigned";
        response.sendRedirect("addCourses.jsp?status=FAILED&errorMessage=" + URLEncoder.encode(errorMessage, "UTF-8")+"&Ida=" + URLEncoder.encode(request.getParameter("Ida"), "UTF-8"));
		
	}
	else {
		while(rs.next()) {
			if(rs.getString("username").equals(teacher_name)) {
				
				String teacher_id = rs.getString("id");
				String tot_user = "select count(*) from MiduPeal.courses";
				st = con.createStatement();
				rs = st.executeQuery(tot_user);
				rs.next();
				int tot = rs.getInt(1);
				tot += 1000;
				String id = String.valueOf(tot);
				String sql = String.format("insert into MiduPeal.courses (id, course_id, teacher_id, course_name, course_description,category) values ('%s','%s','%s','%s','%s','%s')",id,course_id,teacher_id,course_name,course_description,request.getParameter("category"));
				st = con.createStatement();
				
				st.executeUpdate(sql);
				break;
			}
			
		}
		String errorMessage = "Great Job";
	    response.sendRedirect("addCourses.jsp?status=PASSED&errorMessage=" + URLEncoder.encode(errorMessage, "UTF-8")+"&Ida=" + URLEncoder.encode(request.getParameter("Ida"), "UTF-8"));
	}
	
	
	
%>
</body>
</html>