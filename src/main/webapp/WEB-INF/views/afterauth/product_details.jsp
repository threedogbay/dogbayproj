<<<<<<< HEAD:src/main/webapp/WEB-INF/views/afterauth/product_details.jsp
<%@include file = "../layout/header.jsp" %>
<!doctype html>
<html lang="zxx">
<body>
<main>
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Watch Shop</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!--================Single Product Area =================-->
        <div class="product_image_area">
            <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                <div class="product_img_slide owl-carousel">
                    <div class="single_product_img">
                        <img src="assets/img/gallery/gallery1.png" alt="#" class="img-fluid">
                    </div>
                    <div class="single_product_img">
                        <img src="assets/img/gallery/gallery01.png" alt="#" class="img-fluid">
                    </div>
                    <div class="single_product_img">
                        <img src="assets/img/gallery/gallery1.png" alt="#" class="img-fluid">
                    </div>
                </div>
                </div>
                <div class="col-lg-8">
                <div class="single_product_text text-center">
                    <h3>Foam filling cotton slow <br>
                        rebound pillows</h3>
                    <p>
                        Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources. Credibly innovate granular internal or “organic” sources whereas high standards in web-readiness. Credibly innovate granular internal or organic sources whereas high standards in web-readiness. Energistically scale future-proof core competencies vis-a-vis impactful experiences. Dramatically synthesize integrated schemas. with optimal networks.
                    </p>
                    <div class="card_area">
                        <div class="product_count_area">
                            <p>Quantity</p>
                            <div class="product_count d-inline-block">
                                <span class="product_count_item inumber-decrement"> <i class="ti-minus"></i></span>
                                <input class="product_count_item input-number" type="text" value="1" min="0" max="10">
                                <span class="product_count_item number-increment"> <i class="ti-plus"></i></span>
                            </div>
                            <p>$5</p>
                        </div>
                    <div class="add_to_cart">
                        <a href="#" class="btn_3">add to cart</a>
                    </div>
                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
        <!--================End Single Product Area =================-->
        <!-- subscribe part here -->
        <section class="subscribe_part section_padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="subscribe_part_content">
                            <h2>Get promotions & updates!</h2>
                            <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources credibly innovate granular internal .</p>
                            <div class="subscribe_form">
                                <input type="email" placeholder="Enter your mail">
                                <a href="#" class="btn_1">Subscribe</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- subscribe part end -->
    </main>
    </body>
<%@include file = "../layout/footer.jsp" %>
=======
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="layout/header.jsp"%>
<!doctype html>
<html lang="zxx">
<body>
	<main>
		<!-- Hero Area Start-->
		<div class="slider-area ">
			<div class="single-slider slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap text-center">
								<h2>Watch Shop</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Hero Area End-->
		<!--================Single Product Area =================-->
		<div class="product_image_area">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-12">
						<div class="product_img_slide owl-carousel">
							<div class="single_product_img">
								<img src="assets/img/gallery/gallery1.png" alt="#"
									class="img-fluid">
							</div>
							<div class="single_product_img">
								<img src="assets/img/gallery/gallery01.png" alt="#"
									class="img-fluid">
							</div>
							<div class="single_product_img">
								<img src="assets/img/gallery/gallery1.png" alt="#"
									class="img-fluid">
							</div>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="single_product_text text-center">
							<h3>${product.product_name }</h3>

							<p>${product.product_detail }</p>
							<img alt=""
								src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Black_Pink_logo_%282%29.png/300px-Black_Pink_logo_%282%29.png">
							<div class="card_area">
								<div class="product_count_area">
								<c:if test="${maxPrice != 0}">
									<p>${maxPrice }</p>
								</c:if>
								<c:if test="${maxPrice == 0 }">
									${product.product_initprice}
								</c:if>
									<div class="product_count d-inline-block">
										<span class="product_count_item inumber-decrement"> <i class="ti-minus"></i></span> 
										<input class="product_count_item input-number" type="text" value="1"	min="0" max="10"> 
										<span class="product_count_item number-increment"> <i class="ti-plus"></i></span>
									</div>

								</div>
								<p>x,xxx원 이상 입찰 가능</p>
								<div class="add_to_cart">
									<a href="#" class="btn_3">입찰하기</a>
								</div>
							</div>
							<table class="table table-striped" style="margin-top: 10px;">
								<thead>
									<tr>
										<th>입찰자</th>
										<th>입찰 금액</th>
										<th>입찰 시간</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="listAuction" items="${listAuction }">
										<tr>
											<td>${listAuction.member_id }</td>
											<td>${listAuction.auction_price }</td>
											<td>${listAuction.auction_time }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!--================End Single Product Area =================-->
		<!-- subscribe part here -->
		<section class="subscribe_part section_padding">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="subscribe_part_content">
							<h2>Get promotions & updates!</h2>
							<p>Seamlessly empower fully researched growth strategies and
								interoperable internal or âorganicâ sources credibly
								innovate granular internal .</p>
							<div class="subscribe_form">
								<input type="email" placeholder="Enter your mail"> <a
									href="#" class="btn_1">Subscribe</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- subscribe part end -->
	</main>
</body>
<%@include file="layout/footer.jsp"%>
>>>>>>> 4430c6727095744d896f6cd374e2024d745c9d15:src/main/webapp/WEB-INF/views/product_details.jsp
</html>