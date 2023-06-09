<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>PoshTeam</title>
	<meta charset="UTF-8">
	<meta name="description" content="WebUni Education Template">
	<meta name="keywords" content="webuni, education, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="site-logo">
						<img src="img/logo.png" alt="">
					</div>
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<% 
						String link;
						if(request.getParameter("Id") != null || request.getParameter("Idt")!=null || request.getParameter("Ida") != null) link = "";
						else link = "login.jsp";
					%>
					<a href="<%=link %>" class="site-btn header-btn">
					<%
						if(request.getParameter("Id") != null || request.getParameter("Idt")!=null || request.getParameter("Ida") != null) {
							String url = "jdbc:mysql://localhost:3306/MiduPeal";
						    String username = "root";
						    String password = "midupeal";
							Class.forName("com.mysql.jdbc.Driver");
						    Connection con = DriverManager.getConnection(url,username,password);
						    String sql = "select * from users where id = '";
							if(request.getParameter("Id")!=null) sql += request.getParameter("Id");
							if(request.getParameter("Idt")!=null) sql += request.getParameter("Idt");
							if(request.getParameter("Ida")!=null) sql += request.getParameter("Ida");
							sql += "'";
						    Statement st = con.createStatement();
						    ResultSet rs = st.executeQuery(sql);
						    rs.next();  
						    out.println(rs.getString("username"));
						}
						else out.println("Log In");
					%>
					</a>
					<nav class="main-menu">
						<%
							String index="index.jsp",aboutus="aboutus.jsp",courses="courses.jsp",mycourses="mycourses.jsp",classes="teacherCourses.jsp",addCourses = "addCourses.jsp";
							if(request.getParameter("Id") != null) {
								index = index + "?Id=" + request.getParameter("Id");
								aboutus = aboutus + "?Id=" + request.getParameter("Id");
								courses = courses + "?Id=" + request.getParameter("Id");
								mycourses = mycourses + "?Id=" + request.getParameter("Id");
							}
							if(request.getParameter("Idt") != null) {
								index = index + "?Idt=" + request.getParameter("Idt");
								aboutus = aboutus + "?Idt=" + request.getParameter("Idt");
								courses = courses + "?Idt=" + request.getParameter("Idt");
								classes = classes + "?Idt=" + request.getParameter("Idt");
							}
                            if(request.getParameter("Ida") != null) {
								index = index + "?Ida=" + request.getParameter("Ida");
								aboutus = aboutus + "?Ida=" + request.getParameter("Ida");
								courses = courses + "?Ida=" + request.getParameter("Ida");
								addCourses = addCourses + "?Ida=" + request.getParameter("Ida");
							}
						%>
						<ul>
							<li><a href="<%=index%>">Home</a></li>
							<li><a href="<%=aboutus%>">About us</a></li>
							<li><a href="<%=courses%>">Courses</a></li>
							<%
				                int signupcnt = 0;  
				               if(request.getParameter("Id")!=null) signupcnt = 1;   
			                %>
							<c:forEach var = "i" begin = "1" end = "<%= signupcnt%>">
								<li><a href="<%=mycourses%>">My Courses</a></li>
							</c:forEach>
							<%
				                signupcnt = 0;  
				               if(request.getParameter("Idt")!=null) signupcnt = 1;   
			                %>
							<c:forEach var = "i" begin = "1" end = "<%= signupcnt%>">
								<li><a href="<%=classes%>">My Classes</a></li>
							</c:forEach>
							<%
				                signupcnt = 0;  
				               if(request.getParameter("Ida")!=null) signupcnt = 1;   
			                %>
							<c:forEach var = "i" begin = "1" end = "<%= signupcnt%>">
								<li><a href="<%=addCourses%>">Add Course</a></li>
							</c:forEach>
							<%
				                signupcnt = 0;  
				                if(request.getParameter("Idt")!=null || request.getParameter("Id")!=null || request.getParameter("Ida") != null) signupcnt = 1;   
			                %>
							<c:forEach var = "i" begin = "1" end = "<%= signupcnt%>">
								<li><a href="index.jsp">Log Out</a></li>
							</c:forEach>
							
						</ul>
					</nav>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Page info -->
	<div class="page-info-section set-bg" data-setbg="img/page-bg/4.jpg">
		<div class="container">
			<div class="site-breadcrumb">
				<a href="<%=index %>">Home</a>
				<span>About Us</span>
			</div>
		</div>
	</div>
	<!-- Page info end -->


	<!-- search section -->
	<section class="search-section ss-other-page">
		<div class="container">
			<div class="search-warp">
				<div class="section-title text-white">
					<h1><span>About Us</span></h1>
				</div>
				
			</div>
		</div>
	</section>
	<!-- search section end -->



	<!-- Page -->
	<section class="mycourses-page spad pb-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="search-warp">
						<div class="section-title text-white text-left">
							<p>Welcome to our Online Course Management System! We are a leading platform dedicated to simplifying the management and administration of online courses. Our mission is to empower educational institutions, instructors, and learners by providing a comprehensive and user-friendly solution.</p>

<p>At our core, we believe in the transformative power of education. We understand the challenges faced by institutions and instructors in delivering effective online learning experiences. Therefore, we have developed a robust system that streamlines various aspects of course management, enabling educators to focus on what they do best: teaching.</p>

<p>Our platform offers a range of features designed to enhance the entire online learning process. From course creation and enrollment management to assignment tracking and grading, our system is equipped with tools that simplify administrative tasks and foster effective communication between instructors and students.</p>

<p>One of our key priorities is user experience. We have meticulously designed our interface to be intuitive and easy to navigate, ensuring that both instructors and learners can quickly adapt to the platform. With a user-friendly interface, instructors can efficiently organize course materials, manage assignments, and track student progress, while students can easily access course content and collaborate with their peers.</p>

<p>In addition, we understand the importance of data security and privacy in the digital age. Our platform incorporates robust security measures to protect sensitive information and ensure a safe learning environment for all users. We are committed to maintaining the highest standards of data protection and complying with relevant regulations.</p>

<p>Whether you are an educational institution looking to optimize your online course offerings or an instructor seeking a reliable platform to manage your virtual classroom, our Online Course Management System is here to support you. Join us on this journey to revolutionize online education and unlock the full potential of virtual learning experiences.</p>

<p>Thank you for choosing our Online Course Management System. We are excited to be part of your educational journey!</p>
							
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- Page end -->


	
	<!-- banner section end -->
	<%
				signupcnt = 1;  
		if(request.getParameter("Id")!=null || request.getParameter("Idt")!=null || request.getParameter("Ida") != null) signupcnt = 0;     
			%>
			<c:forEach var = "i" begin = "1" end = "<%= signupcnt%>">
				<section class="banner-section spad">
					<div class="container">
						<div class="section-title mb-0 pb-2">
							<h2>Join Our Community Now!</h2>
							
						</div>
						<div class="text-center pt-5">
							<a href="index.jsp" class="site-btn">Register Now</a>
						</div>
					</div>
				</section>
			</c:forEach>
			<div class = "banner-section spad">
	</div>

	<!-- footer section -->
	<footer class="footer-section spad pb-0">
		<div class="footer-top">
			<div class="footer-warp">
				<div class="row">
					<div class="widget-item">
						<h4>Contact Info</h4>
						<ul class="mycourses-list">
							<li>+880 1779224826</li>
							<li>pealhasan6@gmail.com</li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Engeneering</h4>
						<ul>
							<li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Graphic Design</h4>
						<ul>
							<li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Development</h4>
						<ul>
							<li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<h5>Powered By PoshTeam</h5>
		</div>
	</footer> 
	<!-- footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>


	<!-- load for map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWTIlluowDL-X4HbYQt3aDw_oi2JP0Krc&sensor=false"></script>
	<script src="js/map.js"></script>
</body>
</html>