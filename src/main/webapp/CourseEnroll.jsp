<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.course {
			width: 500px;
			display: inline-block;
			padding: 10px;
			margin-bottom: 20px;
			background-color: #f2f2f2;
			border-radius: 5px;
			box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
		}
		.course h2 {
			margin-top: 0;
		}
		.course p {
			margin: 10px 0;
		}
		.course a {
			display: inline-block;
			margin-top: 10px;
			padding: 10px;
			background-color: #4CAF50;
			color: white;
			text-align: center;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s;
		}
		.course a:hover {
			background-color: #3e8e41;
		}
		.margin {
			margin-left: 200px;
			margin-top: 20px;
		}
		<style>
		body {
			background-color: #f7f7f7;
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}
		
		h1 {
			margin: 0;
			padding: 20px;
			background-color: #4CAF50;
			color: white;
			text-align: center;
		}
		
		nav {
			background-color: #333;
			color: white;
			overflow: hidden;
			padding: 10px;
			box-shadow: 0px 3px 5px rgba(0, 0, 0, 0.2);
		}
		
		nav ul {
			list-style: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		
		nav li {
			float: left;
			margin-right: 10px;
		}
		
		nav a {
			display: block;
			color: white;
			text-align: center;
			padding: 10px;
			text-decoration: none;
			transition: background-color 0.3s;
		}
		
		nav li.active a {
			background-color: #4CAF50;
		}
		
		nav a:hover {
			background-color: #555;
		}
	</style>
</style>
</head>
<body>
<h1>Course Registration</h1>
	<nav>
		<ul>
			<li class="active"><a href="CourseEnroll.jsp">Courses</a></li>
			<li><a href="Home.jsp">View registered courses</a></li>
			<li><a href="Home.jsp">Log out</a></li>
		</ul>
	</nav>
<div class = "margin">
	<div class="course">
		<h2>Structured Programming Language</h2>
		<p>CSE133</p> 
		<a href="CourseDetails.jsp?courseId=CSE133&courseName=Structured+Programming+Language" >Enroll Now</a>
	</div>
	<div class="course">
		<h2>Structured Programming Language Lab</h2>
		<p>CSE134</p>
		<a href="CourseDetails.jsp" name = "CSE134">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Discrete Mathematics</h2>
		<p>CSE143</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Electrical Circuits</h2>
		<p>EEE109D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Electrical Circuits Lab</h2>
		<p>EEE110D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Matrices, Vector Analysis and Geometry</h2>
		<p>MAT102D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Effective Communication in English</h2>
		<p>EEE101D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>English Language Lab</h2>
		<p>ENG102D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Data Structure</h2>
		<p>CSE137</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Data Structure Lab</h2>
		<p>CSE138</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Engineering Ethics and Cyber Law</h2>
		<p>CSE147</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Electronic Devices and Circuits</h2>
		<p>EEE111D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Electronic Devices and Circuits Lab</h2>
		<p>EEE112D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Engineering Graphics</h2>
		<p>IPE106D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Workshop Practice</h2>
		<p>IPE108D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Mechanics, Wave, Heat & Thermodynamics</h2>
		<p>PHY103D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Calculus</h2>
		<p>MAT103D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Object Oriented Programming Language</h2>
		<p>CSE233</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Object Oriented Programming Language</h2>
		<p>CSE234</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	<div class="course">
		<h2>Basic Statistics & Probability</h2>
		<p>STA202D</p>
		<a href="CourseDetails.jsp">Enroll Now</a>
	</div>
	
	
</div>
	

</body>
</html>