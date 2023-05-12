<!DOCTYPE html>
<html>
  <head>
    <title>3 Pane Example</title>
    <style>
      /* CSS for 3 panes */
.pane-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.pane {
  flex: 1;
  
  padding: 20px;
  box-sizing: border-box;
  border-radius: 20px;
  border: 1px solid #ddd;
  margin: 10px;
  background-color: #fff;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease-in-out;
}

.pane:hover {
  transform: translateY(-10px);
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
}


.pane-1 {
  background-color: rgba(246, 223, 235, 0.05);
  height : 700px;
 
  margin-top: 250px;
  //background-image: linear-gradient(to bottom right, #f6dfeb, #ffecd2);
  color: #4c2a4c;
}

.pane-2 {
  background-color: rgba(216, 224, 243, 0.05);
  height : 700px;
  margin-top : 100px;
  // background-image: linear-gradient(to bottom right, #d8e0f3, #a4b2e4);
  color: #1a2854;
}

.pane-3 {
  background-color: rgba(227, 243, 216, 0.05);
  height : 700px;
  margin-top: 250px;
  // background-image: linear-gradient(to bottom right, #e3f3d8, #c2e5a8);
  color: #406b36;
}

h2 {
  font-weight: bold;
  font-size: 32px;
  margin-bottom: 20px;
  text-align: center;
}

p {
  font-size: 18px;
  line-height: 1.5;
  margin-bottom: 0;
  text-align: justify;
}
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
  background-color: rgba(255, 255, 255, 0.1);
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
  </head>
  <body>
    <div class="pane-container">
      <div class="pane pane-1">
        <h2>Teacher</h2>
        <h1>Login or Sign Up</h1>
		<form action = "validate.jsp?user_type=teacher" method = "post">
			<label for="username" class='left'>Username:</label>
			<input type="text" id="username" name="username"><br><br>
			<label for="password" class = 'left'>Password:</label>
			<input type="password" id="password" name="password"><br><br>
			<input type="submit" value="Login">
			<input type="submit" value="Sign Up">
		</form>
      </div>
      <div class="pane pane-2">
        <h2>Student</h2>
       <h1>Login or Sign Up</h1>
		<form action = "validate.jsp?user_type=student" method = "post">
			<label for="username" class='left'>Username:</label>
			<input type="text" id="username" name="username"><br><br>
			<label for="password" class = 'left'>Password:</label>
			<input type="password" id="password" name="password"><br><br>
			<input type="submit" value="Login">
			<input type="submit" value="Sign Up">
		</form>
      </div>
      <div class="pane pane-3">
        <h2>Admin</h2>
        <h1>Login or Sign Up</h1>
		<form action = "validate.jsp?user_type=admin" method = "post">
			<label for="username" class='left'>Username:</label>
			<input type="text" id="username" name="username"><br><br>
			<label for="password" class = 'left'>Password:</label>
			<input type="password" id="password" name="password"><br><br>
			<input type="submit" value="Login">
		</form>
      </div>
    </div>
  </body>
</html>
