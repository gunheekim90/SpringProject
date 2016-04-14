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
		<title>Insurance Contents</title>

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
				  <a class="navbar-brand" href="/index.jsp">
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
		
		
		<!-- blog-single -->
		<section id="blog-single" class="section">
			<div class="container">
			
				<div class="row">
					<div class="col-md-9">
						<figure>
							<img src="http://balogrim12.cafe24.com/blogimage.PNG" alt="image" class="img-responsive">
						</figure>

						</br>
						
						<div class="widget">
								<div class="row" style="text-align:center">
									 <div class="col-sm-6">
									 <h1>Group</h1>
									 <ul class="cat">
										<h1><li><a href="#">132</a></li></h1>
									</ul></div>
									<div class="col-sm-6">
									<h1>Members</h1>
									<ul class="cat">
										<h1><li><a href="#">132,870</a></li></h1>
									</ul></div>
								</div>
						</div>
						
						<div class="col-md-12">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs">
							  <li class="active"><a href="#tab1" data-toggle="tab">Information</a></li>
							  <li ><a href="#tab2" data-toggle="tab">Groups</a></li>
							  <li><a href="#tab3" data-toggle="tab">Comments</a></li>
							  <li><a href="#tab4" data-toggle="tab">Q&A</a></li>
							</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane active" id="tab1">
								<p ><h2 style="text-align:center">About Travel Insurance</h2>	
						
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce commodo, libero sed finibus aliquam, felis sapien viverra augue, sed condimentum orci felis a massa. In volutpat molestie gravida. Pellentesque ut diam porta, dapibus massa vitae, rutrum quam. Ut laoreet, purus a cursus blandit, mi diam faucibus augue, ac gravida urna leo vitae nisi. Integer rhoncus sagittis mollis. Pellentesque molestie massa quis pharetra gravida. Nam semper porta sem sit amet pharetra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce facilisis justo vitae auctor lacinia. Aenean id nunc sodales, facilisis leo semper, elementum nisl. Etiam aliquam mauris lacinia interdum feugiat. Etiam nisi sapien, mollis a gravida sit amet, eleifend non libero. Etiam in mauris et justo venenatis tempus eu sit amet risus.</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce commodo, libero sed finibus aliquam, felis sapien viverra augue, sed condimentum orci felis a massa. In volutpat molestie gravida. Pellentesque ut diam porta, dapibus massa vitae, rutrum quam. Ut laoreet, purus a cursus blandit, mi diam faucibus augue, ac gravida urna leo vitae nisi. Integer rhoncus sagittis mollis. Pellentesque molestie massa quis pharetra gravida. Nam semper porta sem sit amet pharetra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce facilisis justo vitae auctor lacinia. Aenean id nunc sodales, facilisis leo semper, elementum nisl. Etiam aliquam mauris lacinia interdum feugiat. Etiam nisi sapien, mollis a gravida sit amet, eleifend non libero. Etiam in mauris et justo venenatis tempus eu sit amet risus.</p>
							</div>


							<div class="tab-pane" id="tab2">


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
							<a href="blog-single.html" class="link">Join Group</a>	
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
							<a href="blog-single.html" class="link">Join Group</a>	
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
							<a href="blog-single.html" class="link">Join Group</a>	
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
							<a href="blog-single.html" class="link">Join Group</a>	
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
							<a href="blog-single.html" class="link">Join Group</a>	
						</div>	
					</div>
						

				</div>	
				<!-- ./blog-carousel2 -->	
							
							</div>

							<div class="tab-pane" id="tab3">
								<!-- comment -->
							<div class="padd-tb-20">
								<h4>Comment</h4>
								
								<ul class="media-list">
								  <li class="media">
									<div class="media-left">
									  <a href="#">
										<img src="http://balogrim12.cafe24.com/img/team1.jpg" alt="" class="media-object" style="width: 64px; height: 64px;">
										</a>
									</div>
									<div class="media-body">
									   <div class="reply"><a href="#">Reply</a></div>
									  <h5 class="media-heading">John Doe</h5>
									  <span class="date">June 12, 2016 10:11pm</span> 
									  <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
									  <!-- Nested media object -->
									  <div class="media">
										<div class="media-left">
										  <a href="#">
											<img src="http://balogrim12.cafe24.com/img/team2.jpg" alt="" class="media-object" style="width: 64px; height: 64px;">
										</a>
										</div>
										<div class="media-body">
										<div class="reply"><a href="#">Reply</a></div>
										  <h5 class="media-heading">Roberto Agusto</h5>
										  <span class="date">June 12, 2016 10:11pm</span> 
										  Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
										  <!-- Nested media object -->
										  <div class="media">
											<div class="media-left">
											  <a href="#">
												<img src="http://balogrim12.cafe24.com/img/team3.jpg" alt="" class="media-object" style="width: 64px; height: 64px;">
											</a>
											</div>
											<div class="media-body">
											<div class="reply"><a href="#">Reply</a></div>
											  <h5 class="media-heading">John Doe</h5>
											  <span class="date">June 12, 2016 10:11pm</span> 
											  Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
											</div>
										  </div>
										</div>
									  </div>
									  <!-- Nested media object -->
									  <div class="media">
										<div class="media-left">
										  <a href="#">
											<img src="http://balogrim12.cafe24.com/img/team4.jpg" alt="" class="media-object" style="width: 64px; height: 64px;">
										</a>
										</div>
										<div class="media-body">
										<div class="reply"><a href="#">Reply</a></div>
										  <h5 class="media-heading">Jessica Alba</h5>
										  <span class="date">June 12, 2015 10:11pm</span> 
										  Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
										</div>
									  </div>
									</div>
								  </li>
								</ul>
							</div>		
							<!-- ./comment -->
							</br>

														<!-- comment form -->
							<div class="padd-tb-20">
								<h4>Leave a Comment</h4>
								<form>
									<div class="row padd-tb-10">
										<div class="form-group">
											<div class="col-md-6 col-sm-6">
												<label>Name</label>
												<input type="text" class="form-control"  placeholder="">
											</div>
											<div class="col-md-6 col-sm-6">
												<label>Email</label>
												<input type="email" class="form-control"  placeholder="">
											</div>
										</div>
									</div>
									
									<div class="row padd-tb-10">
										<div class="form-group">
											<div class="col-md-12">
												<label>Comment</label>
												<textarea class="form-control" rows="6"></textarea>
											</div>
										</div>
									</div>
									<br>						  
									<button type="submit" class="btn btn-success btn-lg">Submit</button>
								</form>
							</div>		
							<!-- ./comment form -->
							</div>

							<div class="tab-pane" id="tab4">
								
								
								
						<!-- Accordion -->
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
							
							
							
							</div>
						</div>
						<!-- end tab -->
					</div>
						
					</div>	

					<div class="col-md-3">
					
						<div class="widget">
							<h4>Categories</h4>
							<ul class="cat">
								<li><a href="#">Nature</a></li>
								<li><a href="#">Desert</a></li>
								<li><a href="#">Ocean</a></li>
								<li><a href="#">Animals</a></li>
								<li><a href="#">Landscape</a></li>
							</ul>
						</div>
						
						<div class="widget">
							<h4>Recent Group</h4>
							<ul class="recent-post">
								<li><a href="#">Lorem ipsum dolor sit amet</a>
									<span>Feb 23 2016</span>
								</li>
								<li><a href="#">Lorem ipsum dolor sit amet</a>
									<span>March 11 2016</span>
								</li>
								<li><a href="#">Lorem ipsum dolor sit amet</a>
									<span>April 6 2016</span>
								</li>
								<li><a href="#">Lorem ipsum dolor sit amet</a>
									<span>May 27 2016</span>
								</li>
								<li><a href="#">Lorem ipsum dolor sit amet</a>
									<span>June 25 2016</span>
								</li>
							</ul>
						</div>
						
						<div class="widget">
							<h4>Tags</h4>
							<ul class="tags">
								<li>What insurance are you looking for?</li></br>
								<li>
					
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search for...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">Go!</button>
      </span>
    </div><!-- /input-group -->

								
								
								
								</li>
								
							</ul>
						</div>
						
					</div>

					
				</div><!-- ./row -->
			</div>						
		</section>
		<!-- ./blog-single -->

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

			

		<!-- footer -->
		<footer id="footer">
			<div class="container">
				<ul class="list-inline">
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-google"></i></a></li>
				</ul>
				<div class="copyright">&copy; 2016 Fullscreen | <a href="http://www.Bootstrapwizard.info" target="_blank">Bootstrapwizard</a></div>
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