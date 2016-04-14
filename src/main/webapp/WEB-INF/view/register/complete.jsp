<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>Fullscreen - Blank Page</title>


<!-- Bootstrap -->
		<link href="http://balogrim12.cafe24.com/css/bootstrap-social.css" rel="stylesheet">
		<link href="http://balogrim12.cafe24.com/css/bootstrap.min.css" rel="stylesheet">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<!-- Font Awesome CSS -->
		<link href="http://balogrim12.cafe24.com/css/font-awesome/font-awesome.min.css" rel="stylesheet">
		
		<!-- Simple Line Icons -->
		<link href="http://balogrim12.cafe24.com/css/simple-line-icons/simple-line-icons.css" rel="stylesheet">
		
		<!-- google font -->
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
		
		<!-- owl-carousel -->
		<link href="http://balogrim12.cafe24.com/plugins/owl-carousel/owl.carousel.css" rel="stylesheet">
		<link href="http://balogrim12.cafe24.com/plugins/owl-carousel/owl.theme.css" rel="stylesheet">
		
		<!-- magnific-popup -->
		<link href="http://balogrim12.cafe24.com/plugins/magnific-popup/magnific-popup.css" rel="stylesheet">
		
		<!-- animate -->
		<link href="http://balogrim12.cafe24.com/css/animate/animate.css" rel="stylesheet">
		
		<!-- style -->
		<link href="http://balogrim12.cafe24.com/css/style.css" rel="stylesheet">
		
		<!-- switcher -->
		<link href="http://balogrim12.cafe24.com/switcher/switcher.css" rel="stylesheet">
		
	</head>
	<body style="background-color:#469840">
		
		<!-- Preloader 	-->
		<div id="preloader">
			<div id="status">&nbsp;</div>
		</div>
		<!-- ./Preloader -->
		
		<!-- pattern -->
		<div id="bg_pattern"></div>
		<!-- ./pattern -->
		
		<!-- scrollToTop -->	
		<a href="#" class="scrollToTop">
			<i class="fa fa-angle-up fa-2x"></i>
		</a>
		<!-- ./scrollToTop -->

		 
		<!-- header -->	
		<header id="header">
			<nav class="navbar navbar-inverse navbar-fixed-top">
			  <div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-navbar" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				  <a class="navbar-brand" href="index.html">
					<img src="http://balogrim12.cafe24.com/img/logo.png" alt="logo">
				  </a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="collapse-navbar">
				 
				  <ul class="nav navbar-nav navbar-right">
					<li><a data-scroll href="#services">Services</a></li>
					<li><a data-scroll href="#gallery">Gallery</a></li>
					<li><a data-scroll href="#portfolio">Portfolio</a></li>
					<li><a data-scroll href="#team">Team</a></li>
					<li><a data-scroll href="#news">News</a></li>
					<li><a data-scroll href="#pricing">Pricing</a></li>
					<li><a data-scroll href="#testimonial">Testimonials</a></li>
					<li><a data-scroll href="#contact">Contact</a></li>					
				  </ul>
				</div><!-- /.navbar-collapse -->
			  </div><!-- /.container -->
			</nav>	
		</header>
		<!-- ./header -->	

	
		
				<!-- contact -->
		<section id="contact" class="section wow fadeInUp">
			<div class="container">
			
				<div class="section-heading">
					<h2>Register Page</h2>
					<div class="separator"></div>	
				</div>
				
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
					<div class="widget">
						<!-- Working Contact Form -->
						 	<form:form action="step3" commandName="registerRequest">
							<form:errors />
							<!-- Working Contact Form -->
							<div class="row">
								<div class="control-group form-group col-sm-6">
									<div class="controls">
									
										<label>Email</label>
										<form:input path="email" class="form-control dark" placeholder="put in your email" /></br>
										<form:errors path="email"/>
										<p class="help-block"></p>
										
									</div>
								</div>
								<div class="control-group form-group col-sm-6">
									<div class="controls">
										
										<label>name</label>
										<form:input path="name" class="form-control dark" placeholder="put in your password"/></br>
										<form:errors path="password"/>
										<p class="help-block"></p>
										
									</div>
								</div>
								<div class="control-group form-group col-sm-6">
									<div class="controls">
										
										<label>Password</label>
										<form:input path="password" class="form-control dark" placeholder="put in your password"/></br>
										<form:errors path="password"/>
										<p class="help-block"></p>
										
									</div>
								</div>
								<div class="control-group form-group col-sm-6">
									<div class="controls">
										
										<label>Confirm Password</label>
										<form:input path="confirmPassword" class="form-control dark" placeholder="put in your password"/></br>
										<form:errors path="password"/>
										<p class="help-block"></p>
										
									</div>
								</div>
							</div>
							<div id="success"></div>

	<!-- Accordion -->
					<p>약관 내용</p>
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">
										1. How can i join this group?
									</a>
								</div>
								<div id="collapseOne" class="panel-collapse collapse">
									<div class="panel-body">
									 <p>
									 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce commodo, libero sed finibus aliquam, felis sapien viverra augue, sed condimentum orci felis a massa. In volutpat molestie gravida. Pellentesque ut diam porta, dapibus massa vitae, rutrum quam. Ut laoreet, purus a cursus blandit, mi diam faucibus augue, ac gravida urna leo vitae nisi. Integer rhoncus sagittis mollis. Pellentesque molestie massa quis pharetra gravida. Nam semper porta sem sit amet pharetra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce facilisis justo vitae auctor lacinia. Aenean id nunc sodales, facilisis leo semper, elementum nisl. Etiam aliquam mauris lacinia interdum feugiat. Etiam nisi sapien, mollis a gravida sit amet, eleifend non libero. Etiam in mauris et justo venenatis tempus eu sit amet risus.
									 </p>
              
				
				                </div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
										2. Is this really safe?
									</a>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse">
									
										<div class="panel-body">
									 <p>
									 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce commodo, libero sed finibus aliquam, felis sapien viverra augue, sed condimentum orci felis a massa. In volutpat molestie gravida. Pellentesque ut diam porta, dapibus massa vitae, rutrum quam. Ut laoreet, purus a cursus blandit, mi diam faucibus augue, ac gravida urna leo vitae nisi. Integer rhoncus sagittis mollis. Pellentesque molestie massa quis pharetra gravida. Nam semper porta sem sit amet pharetra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce facilisis justo vitae auctor lacinia. Aenean id nunc sodales, facilisis leo semper, elementum nisl. Etiam aliquam mauris lacinia interdum feugiat. Etiam nisi sapien, mollis a gravida sit amet, eleifend non libero. Etiam in mauris et justo venenatis tempus eu sit amet risus.
									 </p>
              
				
				                </div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="">
										3. Can i change the insurance whenever i want?
									</a>
								</div>
								<div id="collapseThree" class="panel-collapse collapse in">
									
										<div class="panel-body">
									 <p>
									 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce commodo, libero sed finibus aliquam, felis sapien viverra augue, sed condimentum orci felis a massa. In volutpat molestie gravida. Pellentesque ut diam porta, dapibus massa vitae, rutrum quam. Ut laoreet, purus a cursus blandit, mi diam faucibus augue, ac gravida urna leo vitae nisi. Integer rhoncus sagittis mollis. Pellentesque molestie massa quis pharetra gravida. Nam semper porta sem sit amet pharetra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce facilisis justo vitae auctor lacinia. Aenean id nunc sodales, facilisis leo semper, elementum nisl. Etiam aliquam mauris lacinia interdum feugiat. Etiam nisi sapien, mollis a gravida sit amet, eleifend non libero. Etiam in mauris et justo venenatis tempus eu sit amet risus.
									 </p>
              
				
				                </div>
								</div>
							</div>
						</div>						
						<!-- end ./Accordion -->
						<p>
							<label>
								<input type="checkbox" name="agree" value="true"> 
								<spring:message code="term.agree" />
							</label>
						</p>
							<input type="submit" value="가입 완료">
							</form:form>
						</form>
						</div>
						<div class="clearfix"></div>
						<!-- Working Contact Form -->
						
						<!-- contact-info -->
						<div class="row">
							<div class="col-md-4 col-sm-4">
								<div class="contact-info">			
									<i class="fa fa-map-marker"></i> Silicon Valley California, USA
								</div>
							</div>
							<div class="col-md-4 col-sm-4">
								<div class="contact-info">			
									<i class="fa fa-envelope-o"></i> Support@mysite.com
								</div>
							</div>
							<div class="col-md-4 col-sm-4">
								<div class="contact-info">			
									<i class="fa fa-phone"></i> (+93) 123 456 78
								</div>
							</div>
						</div>
						<!-- ./contact-info -->
						
					</div>
				</div>
			
			</div>
	
		</section>
		<!-- ./contact -->

<div id="googleMap" style="height:400px;width:100%;"></div>

<!-- Add Google Maps -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
var myCenter = new google.maps.LatLng(37.5794909, 126.8997110);

function initialize() {
var mapProp = {
  center:myCenter,
  zoom:12,
  scrollwheel:false,
  draggable:false,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
		
		
		<!-- footer -->
		<footer id="footer">
			<div class="container">
				<ul class="list-inline">
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-google"></i></a></li>
				</ul>
				<div class="copyright">&copy; 2016 Fullscreen | <a href="http://www.Bootstrapwizard.info" target="_blank">Kimgunhee</a></div>
			</div>
		</footer>
		<!-- ./footer -->
	

		
	
		

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->		
		<script src="http://balogrim12.cafe24.com/js/jquery-1.11.3.min.js"></script>	
		<script src="http://balogrim12.cafe24.com/js/bootstrap.min.js"></script>
		
		<!-- smooth-scroll -->
		<script src="http://balogrim12.cafe24.com/plugins/smooth-scroll/smooth-scroll.js"></script>
		
		<!-- backstretch -->
		<script src="http://balogrim12.cafe24.com/plugins/backstretch/backstretch.min.js"></script>
		
		<!-- owl-carousel -->
		<script src="http://balogrim12.cafe24.com/plugins/owl-carousel/owl.carousel.js"></script>
		
		<!-- wow -->
		<script src="http://balogrim12.cafe24.com/plugins/wow/wow.js"></script>
		
		<!-- typed -->
		<script src="http://balogrim12.cafe24.com/plugins/typed/typed.min.js"></script>
						
		<!-- magnific-popup -->
		<script src="http://balogrim12.cafe24.com/plugins/magnific-popup/jquery.magnific-popup.js"></script>
		
		<!-- jqBootstrapValidation -->
		<script src="http://balogrim12.cafe24.com/plugins/jqBootstrapValidation/jqBootstrapValidation.js"></script>
		
		<!-- switcher -->
		<script type="text/javascript" src="http://balogrim12.cafe24.com/switcher/switcher.js"></script> 
					
		<!-- main js -->
		<script src="http://balogrim12.cafe24.com/js/main.js"></script>
		
	</body>
</html>