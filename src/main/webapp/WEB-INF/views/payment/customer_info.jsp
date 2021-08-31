<%@include file = "../layout/header.jsp" %>
<!doctype html>
<html class="no-js" lang="zxx">
<body>
    <!--? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <main>
        <!--? Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>payment write customer info</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--? Hero Area End-->
        <!-- ================ contact section start ================= -->
        <section class="contact-section">
            <div class="container">

                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Get in Touch</h2>
                    </div>
                    <div class="col-lg-8">
                        <form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                    First Name(*) : 
                                        <input class="form-control valid" name="firstName" id="firstName" type="text" 
                                        	   onfocus="this.placeholder = ''" 
                                        	   onblur="this.placeholder = 'Enter your first name'" 
                                        	   placeholder="Enter your first name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                    Last Name(*) : 
                                        <input class="form-control valid" name="lastName" id="lastName" type="text" 
                                        	   onfocus="this.placeholder = ''" 
                                        	   onblur="this.placeholder = 'Enter your last name'" 
                                        	   placeholder="Enter your last name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                    Card Number(*) :
                                        <input class="form-control valid" name="cardNumber" id="cardNumber" type="text" 
                                        	   onfocus="this.placeholder = ''" 
                                        	   onblur="this.placeholder = 'Enter your card number'" 
                                        	   placeholder="Enter your card number">
                                    </div>
                                </div>
                                <div class="col-sm-6"></div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                    Expiration Date(*) : 
                                        <input class="form-control valid" name="expirationDate" id="expirationDate" type="text" 
                                        	   onfocus="this.placeholder = ''" 
                                        	   onblur="this.placeholder = 'MM/YY'" 
                                        	   placeholder="Enter your card expiration date">
                                    </div>
                                </div>
                                <div class="col-sm-6"></div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                    	Card Cod(*) : 
                                        <input class="form-control valid" name="cardCod" id="cardCod" type="text" 
                                        	   onfocus="this.placeholder = ''" 
                                        	   onblur="this.placeholder = 'Enter your card cod'" 
                                        	   placeholder="Enter your card cod">
                                    </div>
                                </div>
                                <div class="col-sm-6"></div>
                                
                                <div class="col-sm-6">
                                    <div class="form-group">
                                    Email :
                                        <input class="form-control valid" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email">
                                    </div>
                                </div>
                               
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">Send</button>
                            </div>
                        </form>
                    </div>
                    <!-- 
                    <div class="col-lg-3 offset-lg-1">
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Buttonwood, California.</h3>
                                <p>Rosemead, CA 91770</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                            <div class="media-body">
                                <h3>+1 253 565 2365</h3>
                                <p>Mon to Fri 9am to 6pm</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-email"></i></span>
                            <div class="media-body">
                                <h3>support@colorlib.com</h3>
                                <p>Send us your query anytime!</p>
                            </div>
                        </div>
                    </div>
                     -->
                </div>
            </div>
        </section>
        <!-- ================ contact section end ================= -->
    </main>
</body>
<%@include file = "../layout/footer.jsp" %>
</html>