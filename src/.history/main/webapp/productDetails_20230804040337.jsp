<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./assets/css/styles.css" />
<link rel="stylesheet"
	href="./assets/css/themify-icons/themify-icons.css">



<title>Insert title here</title>
</head>

<body>

	<c:set var="product" value="${requestScope.product }"></c:set>
	<jsp:include page="header.jsp"></jsp:include>

	<div id="contents" class="ptb-160">
		<c:if test="${product != null }">
			<div class="row product-detail">
				<div class="image-main row">
					<div class="col thumb-item">
						
						<img class="sub-img" src="./assets/images/product/"
									alt="">
						<script>
							document.querySelector('.sub-img').src += document.querySelector('.sub-img').src + ${product.img} + ""
						</script>
									
						
						<!-- <img class="sub-img"
							src="./assets/images/product/Submariner_Automatic_Chronometer_Black/Submariner_Automatic_Chronometer_Black_2.jpg"
							alt=""> 
						<img class="sub-img"
							src="./assets/images/product/Submariner_Automatic_Chronometer_Black/Submariner_Automatic_Chronometer_Black_3.jpg"
							alt=""> -->

					</div>
					<div class="col slide-img">
						<img class="main-img"
							src="./assets/images/product/Submariner_Automatic_Chronometer_Black/Submariner_Automatic_Chronometer_Black_1.jpg"
							alt="">
					</div>
				</div>
				<div class="product-info col1  pl-6p">
					<h2>Thông tin sản phẩm</h2>
					<div class="product-detail-heading">
						<strong class="product-brand p-4"> ROLEX </strong> <br> <span
							class="product-name p-4"> Clifton GMT Automatic Black Dial
							Men's Watch </span> <br> <span class="product-info-no p-4">
							Item No. RB2140 902/51 50 </span> <br>
					</div>
					<div class="product-detail-price p-4">

						<span class="promo-badge">coupon</span> <span
							class="promo-text p-4">Giảm <strong>$375</strong> Khi nhập
							Code " <strong>BMM375</strong>"
						</span> <br> <span class="price p-4"> $1,225.00 <sub>
								(%off) </sub>
						</span> <span class="old-price p-4"> $1,600.00 </span> <br>


					</div>
					<span> Có thanh toán: Trả Góp khi mua Online (Qua thẻ tín
						dụng) </span> <br>
					<button class="btn ml-0">Mua ngay</button>
					<button class="btn ml-0">Thêm Vào giỏ hàng</button>

					<span>Vận chuyển từ 3-5 ngày, Miễn phí vận chuyển</span>


				</div>

			</div>
			<div class="hr"></div>
			<div class="dg-wrap no-wrap row">
				<div class="col more-detail-wrap">
					<div class="more-detail js-more-details">
						<h2>More detail</h2>
						<br>
						<div class="row">
							<div class="col-3 pb-32 ">
								<h3>Infomation</h3>
								<h4 class="more-label">Brand</h4>
								<span class="more-value">${brand}</span> <br>
								<h4 class="more-label">Serial label</h4>
								<span class="more-value">${label}</span> <br>
								<h4 class="more-label">Gender</h4>
								<span class="more-value">${gener}</span> <br>
								<h4 class="more-label">Model</h4>
								<span class="more-value">${model}</span> <br>
								<h4 class="more-label">Movement</h4>
								<span class="more-value">${movement}</span> <br>
								<h4 class="more-label">Engine</h4>
								<span class="more-value">${Engine}</span> <br>
								<h4 class="more-label">Power reserver</h4>
								<span class="more-value">${powerreserver}</span>


							</div>
							<div class="col-3 pb-32 ">
								<h3>Case</h3>
								<h4 class="more-label">Case Sieze</h4>
								<span class="more-value">42 mm</span> <br>
								<h4 class="more-label">Case material</h4>
								<span class="more-value">Stainless Steel</span> <br>
								<h4 class="more-label">Case Shape</h4>
								<span class="more-value">Round</span> <br>
								<h4 class="more-label">Case Back</h4>
								<span class="more-value">Transparent See Through</span>


							</div>
							<div class="col-3 pb-32 ">
								<h3>Band</h3>
								<h4 class="more-label">Band material</h4>
								<span class="more-value">Stainless Steel</span> <br>
								<h4 class="more-label">Band Type</h4>
								<span class="more-value">Bracelet</span> <br>
								<h4 class="more-label">Band Color</h4>
								<span class="more-value">Silver-tone</span> <br>
								<h4 class="more-label">Band width</h4>
								<span class="more-value">22 mm</span> <br>
								<h4 class="more-label">CLASP</h4>
								<span class="more-value">Fold Over with Push Button
									Release</span> <br>

							</div>
							<div class="col-3 pb-32 ">
								<h3>Dial</h3>
								<h4 class="more-label">Dial Color</h4>
								<span class="more-value">black</span> <br>
								<h4 class="more-label">Type</h4>
								<span class="more-value">Analog</span> <br>
								<h4 class="more-label">Crystal</h4>
								<span class="more-value">Scratch Resistant Minera</span> <br>
								<h4 class="more-label">Hands</h4>
								<span class="more-value">Luminous Silver-tone</span> <br>
								<h4 class="more-label">Dial Maker</h4>
								<span class="more-value">Luminous Silver-tone</span> <br>
								<h4 class="more-label">Second Maker</h4>
								<span class="more-value">Minute Markers around the outer
									rim</span> <br>
								<h4 class="more-label">Power reserver</h4>
								<span class="more-value">Fixed</span>


							</div>
							<div class="col-3 pb-32 ">
								<h3>Feartures</h3>
								<h4 class="more-label">WATER RESISTANCE</h4>
								<span class="more-value">50 meters / 165 feet</span> <br>
								<h4 class="more-label">Calendar</h4>
								<span class="more-value">Day of the Week and Date display
									at the 3 o'clock position</span> <br>
								<h4 class="more-label">Functions</h4>
								<span class="more-value">Date, Day, Hour, Minute, Second</span>
								<br>
								<h4 class="more-label">WATCH FEATURES</h4>
								<span class="more-value">Stainless Steel, Analog</span>



							</div>
							<div class="col-3 pb-32 ">
								<h3>Additional Info</h3>
								<h4 class="more-label">Watch Style</h4>
								<span class="more-value">casual</span> <br>
								<h4 class="more-label">Warranty</h4>
								<span class="more-value">3 Year Warranty</span> <br>
								<h4 class="more-label">Upc Code</h4>
								<span class="more-value">4954628216533</span> <br>
								<h4 class="more-label">Category</h4>
								<span class="more-value">Watches</span>


							</div>

						</div>
						<div class="row">
							<h3>Description</h3>
							<p>Silver-tone stainless steel case with a black leather
								strap. Fixed silver-tone stainless steel bezel. Black dial with
								silver-tone hands and Arabic numeral hour markers. Minute
								markers around the outer rim. Dial Type: Analog. Date display at
								the 3 o'clock position. One subdial displaying: second time
								zone. ETA Caliber 2893-2 Automatic movement, based upon ETA
								2892-A2, containing 21 Jewels, bitting at 28800 vph, and has a
								power reserve of approximately 42 hours. Scratch resistant
								sapphire crystal. Pull / push crown. Transparent case back.
								Round case shape, case size: 43 mm, case thickness: 11.4 mm.
								Band width: 21 mm, band length: 8 inches. Deployment with push
								button release clasp. Water resistant at 50 meters / 165 feet.
								Functions: date, GMT, second time zone, hour, minute, second.
								Additional Info: hours, minutes, seconds, date, dual time.
								Clifton Series. Luxury watch style. Watch label: Swiss Movt.
								Baume et Mercier Clifton GMT Automatic Black Dial Men's Watch
								M0A10302.</p>
						</div>
					</div>
					<a href="" class="show-more js-show-more-btn"> Show More </a> <a
						href="" class="show-less hide-modal js-show-less-btn"> Show
						Less </a>
				</div>
				<div class="guarantee-list col">
					<div class="g-item row">
						<img src="./assets/images/logo/authenticity_guarantee.png" alt="">
						<div class="pl-4">
							<strong> Authenticity Guarantee: </strong>
							<p>All products sold on Jomashop.com are 100% authentic,
								guaranteed.</p>
							<a href="">view detail</a>
						</div>

					</div>
					<div class="g-item">
						<Strong> Easy Returns: </Strong>
						<p>
							this item can be returned within 30 days. <a href="">View our
								returns policy</a>
						</p>
					</div>
					<div class="g-item">
						<strong>Need help?</strong> <br>
						<p>
							Call our Jomashop customer service team at +1 877-834-1434. <strong>Email</strong>
							or <strong>Chat</strong> by visiting our Customer <strong>Service</strong>
							center.
						</p>
					</div>
					<div class="g-item">
						<strong>USA Shipping:</strong>
						<p>
							All of our items ship from the United States. <br> <a
								href="">View Details</a>
						</p>
					</div>
				</div>
			</div>
			<div class="review-wrapper">
				<h2 class="mlr-24">Reviews</h2>
				<div class="review-rate">
					<span class="avg-score">4.4</span> <i
						class="ti-star rate-star js-rate-star"></i> <i
						class="ti-star rate-star js-rate-star"></i> <i
						class="ti-star rate-star js-rate-star"></i> <i
						class="ti-star rate-star js-rate-star"></i> <i
						class="ti-star rate-star js-rate-star"></i> <span
						class="reviews-label">8 Reviews</span>
				</div>
				<div class="hr"></div>


				<div class="product-comment-list">
					<div class="">
						<span class="reviews-label">8 Reviews</span>
					</div>

					<div class="product-rating row">
						<div class="product-rating__avatar col">
							<img src="./assets/images/logo/avatar_default.jpg" alt="">
						</div>
						<div class="product-rating__main col1">
							<div class="product-rating__author-name">
								<strong>asdaskldj</strong>
							</div>
							<div class="product-rating__rating">
								<span>rating: 4/5</span>
							</div>
							<div class="product-rating__time">
								<span>16/10/2002</span>
							</div>
							<div class="product-rating__title">
								<strong>asdas</strong>
							</div>
							<div class="product-rating__comment">
								<span>Lorem, ipsum dolor sit amet consectetur adipisicing
									elit. Consequuntur architecto impedit praesentium non quae
									harum alias officiis dignissimos! Repellat fuga consectetur
									veritatis minima asperiores reprehenderit optio quia maiores
									nesciunt labore.</span>
							</div>
						</div>
					</div>
				</div>
				<div class="hr"></div>
				<div class="page-controller row">
					<a href=""><i class="ti-angle-left"></i> </a> <a href="">1</a> <a
						href="">2</a> <a href=""><i class="ti-angle-right"></i></a>

				</div>

				<div class="hr"></div>
			</div>
		</c:if>
		<c:if test="${product == null }">
			<div class="empty-result col">
				<img src="./assets/images/logo/no-rs-found.jpg" alt="" /> <span
					class="no-result-title">No result</span>
			</div>
		</c:if>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<jsp:include page="modals.jsp"></jsp:include>


	<script src="./assets/scrips/productDetails.js"></script>
</body>

</html>