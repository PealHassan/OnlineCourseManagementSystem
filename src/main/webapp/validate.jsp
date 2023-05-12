<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<%@ page import="javax.swing.JOptionPane"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%
	String username = (String) request.getParameter("username");
	String password = (String) request.getParameter("password");
	String usertype = (String) request.getParameter("user_type"); 
	String url = "jdbc:mysql://localhost:3306/MiduPeal";
	String user = "root";
	String pass = "midupeal";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,user,pass);
	String sql = "select * from MiduPeal.users";
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql);
	while(rs.next()) {
		if(rs.getString("username").equals(username) && rs.getString("password").equals(password) && rs.getString("user_type").equals(usertype)) {
			if(usertype.equals("student")) response.sendRedirect(String.format("CourseEnroll.jsp?%sId=%s&usertype=%s",usertype,rs.getString("id"),usertype));
			if(usertype.equals("admin")) response.sendRedirect(String.format("AdminPage.jsp?%sId=%s&usertype=%s",usertype,rs.getString("id"),usertype));
			return;
		} 
 	}
	
 	JOptionPane.showMessageDialog(null, "UserName or Password Doesn't Match", "Log In Failed", JOptionPane.ERROR_MESSAGE);
	response.sendRedirect("Home.jsp");
%>




</body>
</html>