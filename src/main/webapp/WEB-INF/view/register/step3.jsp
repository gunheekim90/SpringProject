<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>Banner - Kit</title>

		<!-- Bootstrap -->
		<link href="http://balogrim12.cafe24.com/css/bootstrap.min.css" rel="stylesheet">
				
		<!-- Font Awesome CSS -->
		<link href="http://balogrim12.cafe24.com/css/font-awesome/font-awesome.min.css" rel="stylesheet">
		
		<!-- Simple Line Icons -->
		<link href="http://balogrim12.cafe24.com/css/simple-line-icons/simple-line-icons.css" rel="stylesheet">
		
		<!-- google font -->
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
				
		<!-- animate -->
		<link href="http://balogrim12.cafe24.com/css/animate/animate.css" rel="stylesheet">
		
		<!-- style -->
		<link href="http://balogrim12.cafe24.com/css/style.css" rel="stylesheet">
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body class="slider-background">
	
	
	
		<!-- Preloader -->
		<div id="preloader">
			<div id="status">&nbsp;</div>
		</div>
		<!-- ./Preloader -->
		
		<!-- pattern -->
		<div id="bg_pattern"></div>
		<!-- ./pattern -->
		
	
		
		<!-- coming-soon -->
		<section id="coming-soon" class="section">
			<div class="container">
				<div class="row">
			
					<h1 class=" wow fadeInUp" data-wow-delay=".5s">Welcome</h1>
					<h2 class=" wow fadeInUp" data-wow-delay=".5s">${registerRequest.name}</h1>
					<p class=" wow fadeInUp" data-wow-delay="1s">We are building our awesome new website <br>
					Please stay tune for our next updates</p>
					
					
					<ul class="list-inline padd-tb-10  wow fadeInUp" data-wow-delay="2s">
						<li><a href="#" class="icon-holder facebook large circle"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" class="icon-holder twitter large circle"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" class="icon-holder linkedin large circle"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" class="icon-holder google-plus large circle"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#" class="icon-holder youtube large circle"><i class="fa fa-youtube-play"></i></a></li>
					</ul>
					<br>
					<a href="/index.jsp" class="btn btn-custom btn-lg  wow fadeInUp" data-wow-delay="2.5s"> back to homepage</a>


				</div><!-- ./row -->	
			</div>
	
		</section>
		<!-- ./coming-soon -->
		


		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->		
		<script src="http://balogrim12.cafe24.com/js/jquery-1.11.3.min.js"></script>	
		<script src="http://balogrim12.cafe24.com/js/bootstrap.min.js"></script>
		
		<!-- smooth-scroll -->
		<script src="http://balogrim12.cafe24.com/plugins/smooth-scroll/smooth-scroll.js"></script>
		
		<!-- backstretch -->
		<script src="http://balogrim12.cafe24.com/plugins/backstretch/backstretch.min.js"></script>
				
		<!-- wow -->
		<script src="http://balogrim12.cafe24.com/plugins/wow/wow.js"></script>
		
		<!-- countdown -->
		<script src="http://balogrim12.cafe24.com/plugins/countdown/jquery.countdown.min.js"></script>
										
		<!-- main js -->
		<script src="http://balogrim12.cafe24.com/js/main.js"></script>
		
	</body>
</html>