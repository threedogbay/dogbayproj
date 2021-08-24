<%@ page contentType="text/html;charset=utf-8"%>
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
							<h3>제품명</h3>

							<p>제품 설명이 어쩌구 저쩌구</p>
							<img alt=""
								src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Black_Pink_logo_%282%29.png/300px-Black_Pink_logo_%282%29.png">
							<div class="card_area">
								<div class="product_count_area">
									<p>입찰금액</p>
									<div class="product_count d-inline-block">
										<span class="product_count_item inumber-decrement"> <i
											class="ti-minus"></i></span> <input
											class="product_count_item input-number" type="text" value="1"
											min="0" max="10"> <span
											class="product_count_item number-increment"> <i
											class="ti-plus"></i></span>
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
									<tr>
										<td>John</td>
										<td>Doe</td>
										<td>john@example.com</td>
									</tr>
									<tr>
										<td>Mary</td>
										<td>Moe</td>
										<td>mary@example.com</td>
									</tr>
									<tr>
										<td>July</td>
										<td>Dooley</td>
										<td>july@example.com</td>
									</tr>
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
</html>