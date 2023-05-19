<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login Result</title>
</head>
<body>
  <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String usertype = request.getParameter("user_type"); 
    String url = "jdbc:mysql://localhost:3306/MiduPeal";
    String user = "root";
    String pass = "midupeal";
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(url, user, pass);
    String sql = "select * from MiduPeal.users";
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery(sql);
    
    boolean loggedIn = false;  
    while (rs.next()) {
      if (rs.getString("username").equals(username) && rs.getString("password").equals(password) && rs.getString("user_type").equals(usertype)) {
        loggedIn = true;
        if (usertype.equals("student")) {
          response.sendRedirect(String.format("CourseEnroll.jsp?%sId=%s&usertype=%s", usertype, rs.getString("id"), usertype));
        } else if (usertype.equals("admin")) {
          response.sendRedirect(String.format("AdminPage.jsp?%sId=%s&usertype=%s", usertype, rs.getString("id"), usertype));
        } else if (usertype.equals("teacher")) {
          response.sendRedirect(String.format("TeacherPage.jsp?%sId=%s&usertype=%s", usertype, rs.getString("id"), usertype));
        }
        
        break;
      }
    }
    if (!loggedIn) {
        String errorMessage = "Username or password is incorrect.";
        response.sendRedirect("Home.jsp?status=FAILED&errorMessage=" + URLEncoder.encode(errorMessage, "UTF-8"));
    }

%>
  
  
</body>
</html>
