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
			String sql = String.format("insert into MiduPeal.courses (id, course_id, teacher_id, course_name, course_description) values ('%s','%s','%s','%s','%s')",id,course_id,teacher_id,course_name,course_description);
			st = con.createStatement();
			
			st.executeUpdate(sql);
			break;
		}
	}
%>
</body>
</html>