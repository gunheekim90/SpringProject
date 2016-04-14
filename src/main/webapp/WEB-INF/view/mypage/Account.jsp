<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>Components - Kit</title>

		<!-- Bootstrap -->
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
		
		<!-- prettify  -->
		<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>		
		<link href="http://balogrim12.cafe24.com/css/prettify/prettify.css" rel="stylesheet">

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body style="background-image:url(http://balogrim12.cafe24.com/bg.PNG)">
	
		<!-- Preloader -->
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
				  <a class="navbar-brand" href="/sp4-chap13/index.jsp">
					<img src="http://balogrim12.cafe24.com/img/logo.png" alt="logo">
				  </a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="collapse-navbar">
				 
				  <ul class="nav navbar-nav navbar-right">
					<li><a data-scroll href="#services">Services</a></li>
					<li><a data-scroll href="#pricing">Pricing</a></li>
					<li><a data-scroll href="#testimonial">Testimonials</a></li>
					<li><a data-scroll href="#team">Team</a></li>
					<li><a data-scroll href="#news">News</a></li>
					<li><a data-scroll href="#contact">Contact</a></li>		
					 <li>
					 
					 <c:if test="${empty authInfo.id}"> 
					       <!-- user did not login, show this login tag  -->
					       <!-- else show Logout tag -->
  						  <a onclick="window.location.href='/sp4-chap13/login'">Login</a>
					 </c:if>
					 <c:if test="${!empty authInfo.id}">
					<a href="<c:url value="/mypage/Account/${authInfo.id}"/>"> ${authInfo.name}님, 환영합니다  <i class="fa fa-shopping-basket"></i></a>
					<!-- Link Logout  -->
					 
					 </c:if>
					     

					 </li>
				  </ul>
				</div><!-- /.navbar-collapse -->
			  </div><!-- /.container -->
			</nav>	
		</header>
		<!-- ./header -->	
		
		
		<!-- section -->
		<section class="section">
			<div class="container">
												
				<div class="section-heading">
					<h2>My Account</h2>
					<div class="separator"></div>	
				</div>
				
				<div class="row">
				
					<div class="col-md-6">
						<!-- Accordion -->
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">
										Gadget Insurance
									</a>
								</div>
								<div id="collapseOne" class="panel-collapse collapse">
									<div class="panel-body">
									<div class="price-box3">
						<div class="well well-sm">
							
							</div>
							<h2>Health Insurance for Cyclists</h2>
							<div class="separator"></div>
							<p>Health Insurance for Cyclists </p>
							
							<div class="price">
								<span><img src="http://balogrim12.cafe24.com/gage3.PNG" width="170"></span>
								<div class="month">79%</div>	
							</div>
							<div class="progress">
								  <div class="progress-bar" role="progressbar" aria-valuenow="79%" aria-valuemin="0" aria-valuemax="100" style="width: 79%;">
								  </div>
								</div>
								<p style="text-align: center">Join Member<strong> 1756</strong></p>								
							<a href="#" class="btn btn-dark btn-lg btn-block">Choose Plan</a>							
						</div>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
										Pet Insurance
									</a>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse">
									<div class="panel-body">
											<div class="price-box3">
						<div class="well well-sm">
							
							</div>
							<h2>Pet Insurance for Rescue Dogs</h2>
							<div class="separator"></div>
							<p>For Pet care</p>
							
							<div class="price">
								<span ><img src="http://balogrim12.cafe24.com/gage2.PNG" width="125"/></span>
								<div class="month">27%</div>	
							</div>
							<div class="progress">
								  <div class="progress-bar" role="progressbar" aria-valuenow="27" aria-valuemin="0" aria-valuemax="100" style="width: 27%;">
									
								  </div>
								</div>
							<p style="text-align: center">Join Member<strong> 1756</strong></p>								
							<a href="#" class="btn btn-dark btn-lg btn-block">Choose Plan</a>							
						</div>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="">
										Travle Insurance
									</a>
								</div>
								<div id="collapseThree" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="price-box3">
							<h2>Crohn's Disease Travel Insurance</h2>
							<div class="separator"></div>
							<p>For people who are starting out in the water saving business</p>
							<div class="well well-sm">
							<div style="text-align: center" id=count>
							</div>
							</div>
							
							<div class="price">
								<span><img src="http://balogrim12.cafe24.com/gage.PNG" width="140"/></span>
								<div class="month">48%</div>	
							</div>
							<div class="progress">
								  <div class="progress-bar" role="progressbar" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
								  </div>
								</div>	
								<p style="text-align: center">Join Member<strong> 1756</strong></p>		
							<a href="#" class="btn btn-dark btn-lg btn-block">Choose Plan</a>							
						</div>
									</div>
								</div>
							</div>
						</div>						
						<!-- end ./Accordion -->
					</div>	
					
					<div class="col-md-6">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs">
						  <li class="active"><a href="#tab1" data-toggle="tab">My Info</a></li>
						  <li><a href="#tab2" data-toggle="tab">Email Preference</a></li>
						  <li><a href="#tab3" data-toggle="tab">Comments</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane active" id="tab1">
							 <div class="input-group">
									 <span class="input-group-addon" id="basic-addon1">@</span>
									 <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
							</div></br>
							<div class="input-group">
									 <span class="input-group-addon" id="basic-addon1">@</span>
									 <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
							</div></br>
							<div class="input-group">
									 <span class="input-group-addon" id="basic-addon1">@</span>
									 <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
							</div></br>
							<button class="btn btn-primary" type="button" style="text-align:center">   Modify  </button>
							 
							 </div>
							<div class="tab-pane" id="tab2">
								<p> What emails would you like to receive from Bought By Many?</p>
								<p> <strong> Email preference</strong></p>
								<p> <div class="radio">
									  <label><input type="radio" name="optradio">All emails including group updates and newsletters</label>
									</div>
									<div class="radio">
									  <label><input type="radio" name="optradio">Just group updates</label>
									</div>
									<div class="radio disabled">
									  <label><input type="radio" name="optradio" disabled>No emails at all</label>
									</div></p>
								<p><button class="btn btn-primary" type="button" style="text-align:center"> Save your Preference </button> </p>
							</div>
							<div class="tab-pane" id="tab3">
								<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel ultrices ligula. Curabitur consectetur lobortis velit, eget semper quam fringilla ut. Vestibulum tristique vestibulum mauris eu mattis.</p>
								<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel ultrices ligula. Curabitur consectetur lobortis velit, eget semper quam fringilla ut. Vestibulum tristique vestibulum mauris eu mattis.</p>
							</div>
						</div>
						<!-- end tab -->
					</div>
					
				</div><!-- ./row -->		
			
			</div>
		</section>
		<!-- ./section -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span> +82 10 2494 5647</p>
      <p><span class="glyphicon glyphicon-envelope"></span> roodo102@naver.com</p>
    </div>
    
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
    
  </div>
</div>

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
		<script type="text/javascript" src="switcher/switcher.js"></script> 
					
		<!-- main js -->
		<script src="http://balogrim12.cafe24.com/js/main.js"></script>
		
	</body>
</html>