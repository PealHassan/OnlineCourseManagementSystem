<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login or Sign Up</title>
	<style>
	body {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
  background-image: url("pic1.jpg");
  background-size: cover;
}

h1 {
  text-align: center;
  margin-top: 50px;
}

form {
  max-width: 500px;
  text-align : center;
  margin: 0 auto;
  background-color: rgba(255, 255, 255, 0.4);
  padding: 30px;
  border-radius: 5px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

label {
  display: block;
  font-size: 18px;
  margin-bottom: 10px;
}

form input[name="username"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 20px;
  border-radius: 5px;
  border: none;
  font-size: 16px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}
.left {
	text-align:left;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: #fff;
  font-size: 16px;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

input[type="submit"]:first-child {
  margin-right: 10px;
}
	</style>
	<!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
</head>
<body>
	
	<br><br><br><br><br><br><br><br><br><br>
	<h1>Login or Sign Up</h1>
	<form action = "validate.jsp" method = "post">
		<label for="username" class='left'>Username:</label>
		<input type="text" id="username" name="username"><br><br>
		<label for="password" class = 'left'>Password:</label>
		<input type="password" id="password" name="password"><br><br>
		<input type="submit" value="Login">
		<input type="submit" value="Sign Up">
	</form>
	
</body>
</html>