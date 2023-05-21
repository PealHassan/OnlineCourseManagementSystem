<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.net.URLEncoder" %>
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
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg.jpg">
		<div class="container">
			<div class="hero-text text-white">
				<h2>Get The Best Free Online Courses</h2>
			</div>
			<%
				signupcnt = 1;  
				if(request.getParameter("Id")!=null || request.getParameter("Idt")!= null || request.getParameter("Ida") != null) signupcnt = 0;   
			%>
			<c:forEach var = "i" begin = "1" end = "<%= signupcnt%>">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<form class="text-center pt-5" action = "signup.jsp">
							
							<button class="site-btn">Sign Up Now</button>
						</form>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<!-- Hero section end -->


	<!-- categories section -->
	<section class="categories-section spad">
		<div class="container">
			<div class="section-title">
				<h2>Our Course Categories</h2>
			</div>
			<div class="row">
				<!-- categorie -->
				<% 
					String url = "jdbc:mysql://localhost:3306/MiduPeal";
					String username = "root";
					String password = "midupeal";
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection(url,username,password);
					String sql = "select distinct(category) from courses";
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(sql);

					String sql2 = "select count(distinct category) from courses";
					Statement st2 = con.createStatement();  
					ResultSet rs2 = st2.executeQuery(sql2);
					rs2.next();
					int val = rs2.getInt(1);
				%>
				<c:forEach var = "i" begin = "1" end = "<%=val%>">
					<%rs.next();%>
					<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/1.jpg"></div>
						<div class="ci-text">
							<h5><%=rs.getString("category")%></h5>
							<span><% 
								int cnt = 0;  
								String sql3 = "select count(*) from courses where category = '" + rs.getString("category") + "'";
								Statement st3 = con.createStatement();  
					            ResultSet rs3 = st3.executeQuery(sql3);
					            rs3.next();
							    cnt = rs3.getInt(1);
                                out.println(cnt);
							%> Courses</span>
						</div>
					</div>
				</div>	
				</c:forEach>
				
			</div>
		</div>
	</section>
	<!-- categories section end -->


	<!-- search section -->
	

	<%
		
	    
	    int tot = 0;
		if(request.getParameter("Id") != null) {
			String studentId = request.getParameter("Id");
		    sql = String.format("(select course_id from enrollments where student_id = '%s')",studentId);
		    sql2 = "select * from courses where course_id not in " + sql;
		    st = con.createStatement();
		    rs = st.executeQuery(sql2);
		    
		    st2 = con.createStatement();
		    sql2 = "select count(*) from MiduPeal.courses where course_id not in " + sql;
		    rs2 = st2.executeQuery(sql2);
		    rs2.next();
		    tot = rs2.getInt(1);
		    
		}
		else {
			String studentId = (String)(request.getParameter("Id"));
		    sql2 = "select * from courses";
		    st = con.createStatement();
		    rs = st.executeQuery(sql2);
		    st2 = con.createStatement();
		    sql2 = "select count(*) from courses";
		    rs2 = st2.executeQuery(sql2);
		    rs2.next();
		    tot = rs2.getInt(1);
		}
	    
	    
	    
	%>

	<!-- course section -->
	<section class="course-section spad pb-0">
		<div class="course-warp">
			<ul class="course-filter controls">
				<%
					
					
					String sql6 = "SELECT COUNT(DISTINCT category) FROM courses";
					Statement st6 = con.createStatement();
					ResultSet rs6 = st6.executeQuery(sql6);
					rs6.next();
					int unicat = rs6.getInt(1);
					String sql5 = "select distinct(category) from courses";
					Statement st5 = con.createStatement();
					ResultSet rs5 = st5.executeQuery(sql5);
				%>
				<li class="control active" data-filter="all">All</li>
				<c:forEach var = "i" begin = "1" end="<%=unicat %>">
					<% rs5.next(); %>
					<li class="control" data-filter="<%="."+rs5.getString("category")%>"><%=rs5.getString("category") %></li>
				</c:forEach>
			</ul>                                       
			<div class="row course-items-area">
				<!-- course -->
				<c:forEach var="i" begin="1" end="<%=tot%>">
					<%rs.next();%>
					<div class="<%= "mix col-lg-3 col-md-4 col-sm-6 " + rs.getString("category")%>">
						<div class="course-item">
							<div class="course-thumb set-bg" data-setbg="img/courses/2.jpg">
								<div class="price"><%=rs.getString("course_id") %></div>
							</div>
							<div class="course-info">
								<div class="course-text">
									<h5><%= rs.getString("course_name") %></h5>
									<p><%=rs.getString("course_description") %></p>
									<div class="students"><%
											String sql4 = "select count(*) from enrollments where course_id = '" + rs.getString("course_id")+"'";
											Statement st4 = con.createStatement();
											ResultSet rs4 = st4.executeQuery(sql4);
											rs4.next();
											out.println(rs4.getInt(1)); 
									%> Students</div>
								</div>
								<div class="course-author">
									<div class="ca-pic set-bg" data-setbg="img/authors/2.jpg"></div>
									<p><%
										String sql3 = "select * from MiduPeal.users where id = '" + rs.getString("teacher_id")+"'";
										Statement st3 = con.createStatement();
										ResultSet rs3 = st3.executeQuery(sql3);
										rs3.next();
										out.println(rs3.getString("username")); 
									%></p>
								</div>
								
								
							</div>
						</div>
					</div>
					
		
				   
				</c:forEach>
				<script>
					    // Select all the "Add Course" buttons
					    const addCourseButtons = document.querySelectorAll('.act-btn');
					
					    // Add a click event listener to each "Add Course" button
					    addCourseButtons.forEach((button) => {
					        button.addEventListener('click', (event) => {
					            event.preventDefault();
					
					            // Display the Sweet Alert
					            swal("Course Enrolled!", "Your have been successfully Enrolled.", "success")
					                .then(() => {
					                    // Submit the form
					                    button.parentElement.submit();
					                });
					        });
					    });
				</script> 
		</div>
	</section>
	<!-- course section end -->


	
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
	<!-- banner section end -->


	<!-- footer section -->
	<footer class="footer-section spad pb-0">
		<div class="footer-top">
			<div class="footer-warp">
				<div class="row">
					<div class="widget-item">
						<h4>contact Info</h4>
						<ul class="contact-list">
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
</html>