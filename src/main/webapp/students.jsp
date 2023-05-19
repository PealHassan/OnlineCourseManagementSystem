<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .header {
        	margin-bottom: 20px;
            background-color: #4CAF50;
            padding: 20px;
            color: white;
        }

        h1 {
        	text-align: center;
        }

        table {
            margin: 0 auto;
            width: 50%;
            border-collapse: collapse;
        }

        th, td {
            padding: 20px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        th {
            background-color: #4CAF50;
            color: white;
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
    <div class="header">
        <h1>Student List</h1>
    </div>
    <div class = "logout-btn">
			<a href="Home.jsp" class="btn btn-primary">Logout</a>
	</div>

    <%
        String url = "jdbc:mysql://localhost:3306/MiduPeal";
        String username = "root";
        String password = "midupeal";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, password);
        String courseId = request.getParameter("courseId");
        String sql = "(select student_id from MiduPeal.enrollments where course_id = '" + courseId + "')";
        String sql3 = "select * from MiduPeal.users where id in " + sql;
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql3);
        String sql2 = "select count(*) from MiduPeal.users where id in " + sql;
        Statement st2 = con.createStatement();
        ResultSet rs2 = st2.executeQuery(sql);
        rs2.next();
        int tot = rs2.getInt(1);
    %>

    <table>
        <thead>
            <tr>
                <th>Student Id</th>
                <th>Student Name</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="i" begin="1" end="<%=tot%>">
                <% rs.next(); %>
                <tr>
                    <td><%= rs.getString("id") %></td>
                    <td><%= rs.getString("username") %></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
