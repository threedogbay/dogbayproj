<!DOCTYPE html>
<html>
<head>
<% String path =  "http://localhost:8085/"; %>

<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Watch shop | eCommers</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=path%>assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="<%=path%>assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=path%>assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="<%=path%>assets/css/flaticon.css">
<link rel="stylesheet" href="<%=path%>assets/css/slicknav.css">
<link rel="stylesheet" href="<%=path%>assets/css/animate.min.css">
<link rel="stylesheet" href="<%=path%>assets/css/magnific-popup.css">
<link rel="stylesheet" href="<%=path%>assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="<%=path%>assets/css/themify-icons.css">
<link rel="stylesheet" href="<%=path%>assets/css/slick.css">
<link rel="stylesheet" href="<%=path%>assets/css/nice-select.css">
<link rel="stylesheet" href="<%=path%>assets/css/style.css">

</head>
<body>
	<header>
		<!-- Header Start -->
		<div class="header-area">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div class="menu-wrapper">
						<!-- Logo -->
						<div class="logo">
							<a href="index"><img src="<%=path%>assets/img/logo/logo.png" alt=""></a>
						</div>
						<!-- Main-menu -->
						<div class="main-menu d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="afterauth/index">Home</a></li>
									<li><a href="afterauth/shop">shop</a></li>
									<li><a href="afterauth/about">about</a></li>
									<li class="hot"><a href="#">Latest</a>
										<ul class="submenu">
											<li><a href="afterauth/shop"> Product list</a></li>
											<li><a href="afterauth/product_details"> Product Details</a></li>
										</ul></li>
									<li><a href="afterauth/blog">Blog</a>
										<ul class="submenu">
											<li><a href="afterauth/blog">Blog</a></li>
											<li><a href="afterauth/blog-details">Blog Details</a></li>
										</ul></li>
									<li><a href="#">Pages</a>
										<ul class="submenu">
											<li><a href="afterauth/login">Login</a></li>
											<li><a href="afterauth/cart">Cart</a></li>
											<li><a href="afterauth/elements">Element</a></li>
											<li><a href="afterauth/confirmation">Confirmation</a></li>
											<li><a href="afterauth/checkout">Product Checkout</a></li>
										</ul></li>
									<li><a href="afterauth/contact">Contact</a></li>
								</ul>
							</nav>
						</div>
						<!-- Header Right -->
						<div class="header-right">
							<ul>
								<li>
									<div class="nav-search search-switch">
										<span class="flaticon-search"></span>
									</div>
								</li>
								<li><a href="login"><span class="flaticon-user"></span></a></li>
								<li><a href="cart"><span class="flaticon-shopping-cart"></span></a>
								</li>
							</ul>
						</div>
					</div>
					<!-- Mobile Menu -->
					<div class="col-12">
						<div class="mobile_menu d-block d-lg-none"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>

	<!-- JS here -->

	<script src="<%=path%>assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="<%=path%>assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="<%=path%>assets/js/popper.min.js"></script>
	<script src="<%=path%>assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="<%=path%>assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="<%=path%>assets/js/owl.carousel.min.js"></script>
	<script src="<%=path%>assets/js/slick.min.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script src="<%=path%>assets/js/wow.min.js"></script>
	<script src="<%=path%>assets/js/animated.headline.js"></script>

	<!-- Scroll up, nice-select, sticky -->
	<script src="<%=path%>assets/js/jquery.scrollUp.min.js"></script>
	<script src="<%=path%>assets/js/jquery.nice-select.min.js"></script>
	<script src="<%=path%>assets/js/jquery.sticky.js"></script>
	<script src="<%=path%>assets/js/jquery.magnific-popup.js"></script>

	<!-- contact js -->
	<script src="<%=path%>assets/js/contact.js"></script>
	<script src="<%=path%>assets/js/jquery.form.js"></script>
	<script src="<%=path%>assets/js/jquery.validate.min.js"></script>
	<script src="<%=path%>assets/js/mail-script.js"></script>
	<script src="<%=path%>assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="<%=path%>assets/js/plugins.js"></script>
	<script src="<%=path%>assets/js/main.js"></script>
</body>
</html>