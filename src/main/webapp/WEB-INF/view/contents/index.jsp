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
		<title>Fullscreen - Static Background</title>

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
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

		<link href="${mainCss}" rel="stylesheet"/>
		
	
			<style type="text/css">
			    .bs-example{
			    	margin: 20px;
			    }
			</style>

	</head>
	<body>
	



		
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
				  <a class="navbar-brand" href="index.jsp">
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
  						  <a onclick="window.location.href='/login'">Login</a>
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
		
		
		<!-- slider-banner -->	
		<section id="slider-banner" class="section blue-bg">
			<div class="container">										
				<!-- slider -->	
				<div id="slider" class="owl-carousel">
					<div class="item">	
						<i class="fa fa-plane"></i>
						<h2>Travel Insurance</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim elit hendrerit. Quisque tempus arcu vulputate metus convallis elementum. Aenean rhoncus rutrum quam ut semper. </p>								
						<a onclick="window.location.href='/sp4-chap13/contents01'" class="btn btn-custom btn-lg">Learn More</a>											
						<!-- if there is no auth redirect or pop up the modal error -->
					
					</div>	
					<div class="item">	
						<i class="fa fa-paw"></i>
						<h2>Pet Insurance</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim elit hendrerit. Quisque tempus arcu vulputate metus convallis elementum. Aenean rhoncus rutrum quam ut semper. </p>								
						<a class="btn btn-custom btn-lg">Learn More</a>											
					</div>
					<div class="item">	
						<i class="fa fa-money"></i>
						<h2>Gadget Insurance</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim elit hendrerit. Quisque tempus arcu vulputate metus convallis elementum. Aenean rhoncus rutrum quam ut semper. </p>								
						<a href="#" class="btn btn-custom btn-lg">Learn More</a>											
					</div>

				</div>	
				<!-- ./slider -->						
			</div>		
		</section>
		<!-- ./slider-banner -->
		
		<!-- services -->
		<section id="services" class="section purple-bg">
			<div class="container">	
			
				<div class="section-heading">
					<h2>Services</h2>
					<div class="separator"></div>	
				</div>
				
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<div class="services style2">
							<i class="fa fa-android circle"></i>
							<h4>Easy</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing metus elit Quisque rutrum pellentesque imperdiet.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services style2">
							<i class="fa fa-apple circle"></i>
							<h4>Everytime</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing metus elit Quisque rutrum pellentesque imperdiet.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services style2">
							<i class="fa fa-windows circle"></i>
							<h4>EveryWhere</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing metus elit Quisque rutrum pellentesque imperdiet.</p>
						</div>
					</div>
				</div><!-- ./row -->
				
				
			</div>
		</section>
		<!-- ./services -->

			<!-- pricing -->
		<section id="pricing" class="section dark-blue-bg">
			<div class="container">
			
				<div class="section-heading">
					<h2>Feature Group</h2>
					<div class="separator"></div>						
				</div>
				
				<div class="row">
					<div class="col-md-4">
						<div class="price-box3">
						
						<div class="well well-sm">
							<div style="text-align: center" id=count>
							<strong><h3 style="color:#5D5D5D">
							<span id=counter1></span>   Day   <span id=counter2></span> : <span id=counter3></span> : <span id=counter4></span><span>
							</span></h3>
							</strong>
							</div>
							</div>
							<h2>Crohn's Disease Travel Insurance</h2>
							<div class="separator"></div>
							<p>For people who are starting out in the water saving business</p>
							
							
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
					<div class="col-md-4">
						<div class="price-box3">
						<div class="well well-sm">
							<div style="text-align: center" id=count><strong><h3 style="color:#5D5D5D"><span id=counter5></span>   Day   <span id=counter6></span> : <span id=counter7></span> : <span id=counter8></span><span></span></h3></strong></div>
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
						<div class="col-md-4">
						<div class="price-box3">
						<div class="well well-sm">
							<div style="text-align: center" id=count><strong><h3 style="color:#5D5D5D"><span id=counter9></span>   Day   <span id=counter10></span> : <span id=counter11></span> : <span id=counter12></span><span></span></h3></strong></div>
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
					<div class="col-md-4">
						<div class="price-box2">
							<h2>Health Insurance for Cyclists</h2>
							<div class="separator"></div>
							<p>For all the professionals who'd like to educate others, too</p>
							<div class="price">
								<span>$</span>79
								<div class="month">/ month</div>	
							</div>
								<div class="progress">
								  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
									<span class="sr-only">60% Complete</span>
								  </div>
								</div>
							<ul>
								<li>Access to all books</li>
								<li>Unlimited board topics</li>
								<li>Beginners tips</li>
							</ul>							
							<a href="#" class="btn btn-dark btn-lg btn-block">Choose Plan</a>							
						</div>
					</div>
					<div class="col-md-4">
						<div class="price-box2">
							<h2>Health Insurance for Cyclists</h2>
							<div class="separator"></div>
							<p>For all the professionals who'd like to educate others, too</p>
							<div class="price">
								<span>$</span>79
								<div class="month">/ month</div>	
							</div>
								<div class="progress">
								  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
									<span class="sr-only">60% Complete</span>
								  </div>
								</div>
							<ul>
								<li>Access to all books</li>
								<li>Unlimited board topics</li>
								<li>Beginners tips</li>
							</ul>							
							<a href="#" class="btn btn-dark btn-lg btn-block">Choose Plan</a>							
						</div>
					</div>		
					<div class="col-md-4">
						<div class="price-box2">
							<h2>Health Insurance for Cyclists</h2>
							<div class="separator"></div>
							<p>For all the professionals who'd like to educate others, too</p>
							<div class="price">
								<span>$</span>79
								<div class="month">/ month</div>	
							</div>
								<div class="progress">
								  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
									<span class="sr-only">60% Complete</span>
								  </div>
								</div>
							<ul>
								<li>Access to all books</li>
								<li>Unlimited board topics</li>
								<li>Beginners tips</li>
							</ul>							
							<a href="#" class="btn btn-dark btn-lg btn-block">Choose Plan</a>							
						</div>
					</div>		
				</div><!-- ./row -->
					
			</div>
	
		</section>
		<!-- ./pricing -->
		
		<!-- testimonial -->	
		<section id="testimonial" class="section dark-purple-bg">
			<div class="container">	

				<div class="section-heading">
					<h2>Testimonials</h2>
					<div class="separator"></div>						
				</div>
				
				<!-- testimonial-carousel -->	
				<div id="testimonial-carousel" class="owl-carousel">
					<div class="item">	
						<div class="testimonial-box3">
							<p><i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim elit hendrerit. Quisque tempus arcu vulputate metus convallis elementum. Aenean rhoncus rutrum quam ut semper. <i class="fa fa-quote-right"></i> </p>								
							<img src="http://balogrim12.cafe24.com/img/team1.jpg" alt="image" class="img-responsive circle">	
							<p><span>Jane Doe</span>, CEO X Company</p>
						</div>	
					</div>
					<div class="item">	
						<div class="testimonial-box3">
							<p><i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim elit hendrerit. Quisque tempus arcu vulputate metus convallis elementum. Aenean rhoncus rutrum quam ut semper. <i class="fa fa-quote-right"></i> </p>								
							<img src="http://balogrim12.cafe24.com/img/team2.jpg" alt="image" class="img-responsive circle">	
							<p><span>James Smith</span>, Founder Y Company</p>
						</div>	
					</div>
					<div class="item">	
						<div class="testimonial-box3">
							<p><i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim elit hendrerit. Quisque tempus arcu vulputate metus convallis elementum. Aenean rhoncus rutrum quam ut semper. <i class="fa fa-quote-right"></i> </p>								
							<img src="http://balogrim12.cafe24.com/img/team3.jpg" alt="image" class="img-responsive circle">	
							<p><span>Erick White</span>, Writter Z Company</p>
						</div>	
					</div>

				</div>	
				<!-- ./testimonial-carousel -->					
			</div>	
		
		</section>
		<!-- ./testimonial-->

		
		<!-- team -->
		<section id="team" class="section purple-bg">
			<div class="container">
			
				<div class="section-heading">
					<h2>Our Team</h2>
					<div class="separator"></div>						
				</div>
				
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<div class="team-box1">
							<img src="http://balogrim12.cafe24.com/img/team1.jpg" alt="image" class="img-responsive">
							<h4>Jason Statam</h4>
							<span>CEO, Founder</span>
							<hr>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing metus elit Quisque rutrum pellentesque.</p>
							<ul class="social">
								<li><a href="#" class="circle"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="circle"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="circle"><i class="fa fa-google"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="team-box1">
							<img src="http://balogrim12.cafe24.com/img/team2.jpg" alt="image" class="img-responsive">
							<h4>Mike Strong</h4>
							<span>Lead Designer</span>
							<hr>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing metus elit Quisque rutrum pellentesque.</p>
							<ul class="social">
								<li><a href="#" class="circle"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="circle"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="circle"><i class="fa fa-google"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="team-box1">
							<img src="http://balogrim12.cafe24.com/img/team3.jpg" alt="image" class="img-responsive">
							<h4>Alden Richards</h4>
							<span>Backend Developer</span>
							<hr>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing metus elit Quisque rutrum pellentesque.</p>
							<ul class="social">
								<li><a href="#"	target="_blank" class="circle"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" target="_blank" class="circle"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" target="_blank" class="circle"><i class="fa fa-google"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="team-box1">
							<img src="http://balogrim12.cafe24.com/img/team4.jpg" alt="image" class="img-responsive">
							<h4>Kevin Durant</h4>
							<span>Marketing Specialist</span>
							<hr>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing metus elit Quisque rutrum pellentesque.</p>
							<ul class="social">
								<li><a href="#" class="circle"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="circle"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="circle"><i class="fa fa-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div><!-- ./row -->
			</div>
	
		</section>
		<!-- ./team -->
		
		<!-- news -->
		<section id="news" class="section aqua-bg">
			<div class="container">
			
				<div class="section-heading">
					<h2>News</h2>
					<div class="separator"></div>						
				</div>
				
				<!-- blog-carousel2 -->	
				<div id="blog-carousel2" class="owl-carousel">
					<div class="item">	
						<div class="blog-box2">
							<figure>
								<img src="http://balogrim12.cafe24.com/img/img1.jpg" alt="image" class="img-responsive">
								<ul>
									<li><i class="fa fa-calendar"></i> <span>Jan 3, 2016</span></li>
									<li><i class="fa fa-comment"></i> <span>180</span></li>
								</ul>
							</figure>
							<h4>Snowy Forest</h4>
							<p> Lorem ipsum dolor sit amet Maecenas ullamcorper diam nec augue semper ...</p>		
							<a href="blog-single.html" class="link">Read more...</a>	
						</div>	
					</div>
					<div class="item">	
						<div class="blog-box2">
							<figure>
								<img src="http://balogrim12.cafe24.com/img/img2.jpg" alt="image" class="img-responsive">
								<ul>
									<li><i class="fa fa-calendar"></i> <span>Feb 16, 2016</span></li>
									<li><i class="fa fa-comment"></i> <span>16</span></li>
								</ul>
							</figure>
							<h4>Nice View</h4>
							<p> Lorem ipsum dolor sit amet Maecenas ullamcorper diam nec augue semper ...</p>		
							<a href="blog-single.html" class="link">Read more...</a>	
						</div>	
					</div>
					<div class="item">	
						<div class="blog-box2">
							<figure>
								<img src="http://balogrim12.cafe24.com/img/img3.jpg" alt="image" class="img-responsive">
								<ul>
									<li><i class="fa fa-calendar"></i> <span>March 8, 2016</span></li>
									<li><i class="fa fa-comment"></i> <span>280</span></li>
								</ul>
							</figure>
							<h4>Cool Waves</h4>
							<p> Lorem ipsum dolor sit amet Maecenas ullamcorper diam nec augue semper ...</p>		
							<a href="blog-single.html" class="link">Read more...</a>	
						</div>	
					</div>
					<div class="item">	
						<div class="blog-box2">
							<figure>
								<img src="http://balogrim12.cafe24.com/img/img4.jpg" alt="image" class="img-responsive">
								<ul>
									<li><i class="fa fa-calendar"></i> <span>April 11, 2016</span></li>
									<li><i class="fa fa-comment"></i> <span>95</span></li>
								</ul>
							</figure>
							<h4>Plane View</h4>
							<p> Lorem ipsum dolor sit amet Maecenas ullamcorper diam nec augue semper ...</p>		
							<a href="blog-single.html" class="link">Read more...</a>	
						</div>	
					</div>
					<div class="item">	
						<div class="blog-box2">
							<figure>
								<img src="http://balogrim12.cafe24.com/img/img5.jpg" alt="image" class="img-responsive">
								<ul>
									<li><i class="fa fa-calendar"></i> <span>May 18, 2016</span></li>
									<li><i class="fa fa-comment"></i> <span>35</span></li>
								</ul>
							</figure>
							<h4>Skie Rides</h4>
							<p> Lorem ipsum dolor sit amet Maecenas ullamcorper diam nec augue semper ...</p>		
							<a href="blog-single.html" class="link">Read more...</a>	
						</div>	
					</div>
						

				</div>	
				<!-- ./blog-carousel2 -->	
					
			</div>
				
		</section>
		<!-- ./news -->
		
								<!-- landing-banner -->
						<section id="landing-banner" class="section">			
							<div class="banner-content">
								<div class="container">
									<div class="row">
																					
										<div class="col-md-5 col-sm-6">
											
											<h1>LANDING PAGE</h1>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit diam nec augue semper,in dignissim elit hendrerit. Lorem ipsum dolor sit amet. </p>	
																		
												<!--  Working landing-form Form With Validation -->					
												<form class="padd-tb-10" >
													<div class="row">
														<div class="control-group form-group col-sm-6">
															<div class="controls">
																<label class="sr-only">First Name</label>
																<input type="text" class="form-control dark" id="fname" placeholder="First Name" required data-validation-required-message="Please enter your name.">
																<p class="help-block"></p>
															</div>
														</div>
														<div class="control-group form-group col-sm-6">
															<div class="controls">
																<label class="sr-only">Last Name</label>
																<input type="text" class="form-control dark" id="lname" placeholder="Last Name" required data-validation-required-message="Please enter your name.">
																<p class="help-block"></p>
															</div>
														</div>
													</div>	
													<div class="control-group form-group">
														<div class="controls">
															<label class="sr-only">Email</label>
															<input type="email" class="form-control dark" id="email" placeholder="Email Address" required data-validation-required-message="Please enter your email address.">
															<p class="help-block"></p>
														</div>
													</div>
													<div id="success"></div>
													<div class="padd-t-10">
													<button onclick="window.location.href='/register/step2'" type="submit" class="btn btn-success btn-block btn-lg">REGISTER NOW!</button>
													</div>
												</form>
												<div class="clearfix"></div>
												<!--  ./ Working landing-form Form With Validation -->
											
										</div>
										
										<div class="col-md-6 col-sm-6 col-md-offset-1">
																		
											<div class="padd-tb-20">		
												<!-- 16:9 aspect ratio -->
												<div class="embed-responsive embed-responsive-16by9">
													<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/KK9bwTlAvgo"></iframe>
												</div>
											</div>
											
										</div>	
																						
									</div><!-- ./row -->
								</div>
							</div>
						</section>
						<!-- ./landing-banner -->

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
		<script>getTime()</script>
		<script>getTime2()</script>
		<script>getTime3()</script>
	
		
	</body>
</html>