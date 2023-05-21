<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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


	<!-- Page info -->
	<div class="page-info-section set-bg" data-setbg="img/page-bg/1.jpg">
		<div class="container">
			<div class="site-breadcrumb">
				<a href="<%= index %>">Home</a>
				<span>Add Course</span>
			</div>
		</div>
	</div>
	<!-- Page info end -->

   <section class="contact-page spad pb-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div >
						<!-- <div class="section-title text-white text-center">
							<h2>PoshTeam</h2>
						</div> -->
						<form class="contact-form" action = "AddCourse.jsp">
							<input type="text" placeholder="Course Name" name = "course_name">
							<input type="text" placeholder="Course Id" name = "courseId">
							<input type="text" placeholder="Category" name = "category">
							<select class="custom-select" name="teacher_name">
							<%
								String url = "jdbc:mysql://localhost:3306/MiduPeal";
							    String username = "root";
							    String password = "midupeal";
							    Class.forName("com.mysql.jdbc.Driver");
							    Connection con = DriverManager.getConnection(url,username,password);
							    String sql = "select * from users where user_type = 'teacher'";
							    Statement st = con.createStatement();  
							    ResultSet rs = st.executeQuery(sql);   
							    
							    String sql2 = "select count(*) from users where user_type = 'teacher'";
							    Statement st2 = con.createStatement();  
							    ResultSet rs2 = st2.executeQuery(sql2);   
							    rs2.next();  
							    int tot = rs2.getInt(1);
							%>
							
								<c:forEach var = "i" begin = "1" end = "<%=tot %>">
									<% rs.next(); %>
									<option value="<%=rs.getString("username")%>"><%=rs.getString("username") %></option>
								</c:forEach>
								<input type="hidden" name="Ida" value="<%=request.getParameter("Ida")%>">
				            </select><br><br>
							<textarea placeholder="Description" name = "course_description"></textarea>
							<button class="site-btn">ASSIGN</button>
						</form>
					</div>
				</div>
				
			
			</div>
			
		</div>
		<script>
		    var urlParams = new URLSearchParams(window.location.search);
		    if (urlParams.has('status')) {
		        var status = urlParams.get('status');
		        // Check if the status is FAILED
		        if (status === 'FAILED') {
		            // Check if the errorMessage parameter exists in the URL
		            if (urlParams.has('errorMessage')) {
		                var errorMessage = decodeURIComponent(urlParams.get('errorMessage'));
		                // Display the SweetAlert with the error message
		                swal({
		                    title: 'Assign Failed',
		                    text: errorMessage,
		                    icon: 'warning',
		                    button: 'OK',
		                    showCloseButton: true
		                });
		            }
		            urlParams.delete('status');
		            history.replaceState(null, null, "?"+urlParams.toString());
		        }
		        else if (status === 'PASSED') {
		            // Check if the errorMessage parameter exists in the URL
		            if (urlParams.has('errorMessage')) {
		                var errorMessage = decodeURIComponent(urlParams.get('errorMessage'));
		                // Display the SweetAlert with the error message
		                swal({
		                    title: 'Assigned Successfully',
		                    text: errorMessage,
		                    icon: 'success',
		                    button: 'OK',
		                    showCloseButton: true
		                });
		            }
		            urlParams.delete('status');
		            history.replaceState(null, null, "?"+urlParams.toString());
		        }
		    }
		</script>
				
		
		
		
	</section>
	<!-- Page end -->
	
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
</body>
</html>