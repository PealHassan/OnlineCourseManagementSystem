<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session = request.getSession();
	String name = (String)session.getAttribute("user"); 
	out.println("this is screen 2, " + name);		
	out.println("hello2");
%>
</body>
</html>