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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
				<div class="col-lg-10 offset-lg-1 text-center">
					<div class="site-logo">
						<img src="img/logo.png" alt="" >
					</div>
					
				</div>
			</div>
		</div>
	</header>
    <!-- Login section -->
	<section class="hero-section set-bg" data-setbg="img/bg.jpg">
			<div class="container">
				<div class="hero-text text-white">
					<h1>Online Course Management System</h1>
				</div>
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<form class="intro-newslatter" action = "validate.jsp">
							<input type="text" placeholder="UserName" name = "username">
							<input type="text" class="last-s" placeholder="Password" name = "password">
							<input type = "submit" class="site-btn" value = "Log In">
						</form>
					</div>
				</div>
			</div>
			 <script>
    // Check if the status parameter exists in the URL
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
			                    title: 'Log In Failed',
			                    text: errorMessage,
			                    icon: 'error',
			                    button: 'OK'
			                });
			            }
			        }
			    }
			</script>
	</section>
<!-- Login section end -->
    

	<!-- Hero section -->
	


	
	<!-- banner section -->
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
	<!-- banner section end -->


	<!-- footer section -->
	<footer class="footer-section spad pb-0">
		<div class="footer-top">
			<div class="footer-warp">
				<div class="row">
					<div class="widget-item">
						<h4>Contact Info</h4>
						<ul class="contact-list">
							<li>1481 Creekside Lane <br>Avila Beach, CA 931</li>
							<li>+53 345 7953 32453</li>
							<li>yourmail@gmail.com</li>
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