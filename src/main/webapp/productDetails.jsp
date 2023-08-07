
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
	<c:set var="review" value="${requestScope.reviews }"></c:set>
	<c:set var="review" value="${requestScope.avgScore }"></c:set>
	<c:set var="numReviews" value="${requestScope.numReviews }"></c:set>
	<c:set var="totalReviewPage" value="${requestScope.totalReviewPage }"></c:set>

	

	<jsp:include page="header.jsp"></jsp:include>	


	<div id="contents" class="ptb-160">
		<c:if test="${product != null }">
			<div class="row product-detail">
				<div class="image-main row">
					<div class="col thumb-item">
						<c:forEach begin="${1 }" end="${3 }" var="i">
							<c:set var="imgSrc"
								value="#{'./assets/images/product/'.concat(product.getImg()).concat('/').concat(product.img).concat('_').concat(i).concat('.jpg') }"></c:set>
							<img class="sub-img" src="${imgSrc}" alt="">

						</c:forEach>

					</div>
					<div class="col slide-img">
						<c:set var="mainImgSrc"
							value="#{'./assets/images/product/'.concat(product.getImg()).concat('/').concat(product.img).concat('_1.jpg') }"></c:set>
						<img class="main-img" src="${mainImgSrc }" alt="">
					</div>
				</div>
				<div class="product-info col1  pl-6p">
					<h2>Thông tin sản phẩm</h2>
					<div class="product-detail-heading">
						<strong class="product-brand p-4"> ${product.brand }</strong> <br>
						<span class="product-name p-4"> ${product.productName } </span> <br>
						<span class="product-info-no p-4"> Item No. ${product.model }
						</span> <br>
					</div>
					<div class="product-detail-price p-4">

						<span class="promo-badge">coupon</span> <span
							class="promo-text p-4">Giảm <strong>$375</strong> Khi nhập
							Code " <strong>BMM375</strong>"
						</span> <br>
						<c:if test="${product.saleValue > 0}">
							<span class="price p-4"> $${product.price - product.price
								* product.saleValue / 100 } <sub> ( ${product.saleValue }
									%off) </sub>
							</span>
							<span class="old-price p-4"> ${product.price} </span>
							<br>
						</c:if>
						<c:if test="${product.saleValue == 0}">
							<span class="price p-4"> $${product.price } </span>
						</c:if>

					</div>
					<span> Có thanh toán: Trả Góp khi mua Online (Qua thẻ tín
						dụng) </span> <br>
					<button class="btn ml-0">Mua ngay</button>
					<form name="formSubmitCart" action="cartProcess" method="post">
						<input name="quantity" hidden="true"
							value="1"> 
						<input name="idProduct"
							hidden="true" value="${product.idProduct }"> 
						<input
							type="submit" class="btn ml-0 add-to-cart"
							value="Thêm vào giỏ hàng">
					</form>

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
								<span class="more-value">${product.brand}</span> <br>
								<h4 class="more-label">Serial label</h4>
								<span class="more-value">${product.label}</span> <br>
								<h4 class="more-label">Gender</h4>
								<span class="more-value">${product.gender}</span> <br>
								<h4 class="more-label">Model</h4>
								<span class="more-value">${product.model}</span> <br>
								<h4 class="more-label">Movement</h4>
								<span class="more-value">${product.movement}</span> <br>
								<h4 class="more-label">Engine</h4>
								<span class="more-value">${product.engine}</span> <br>
								<h4 class="more-label">Power reserver</h4>
								<span class="more-value">${product.powerReverse}</span>


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
					<span class="avg-score">${avgScore }</span> <i
						class="ti-star rate-star js-rate-star"></i> <i
						class="ti-star rate-star js-rate-star"></i> <i
						class="ti-star rate-star js-rate-star"></i> <i
						class="ti-star rate-star js-rate-star"></i> <i
						class="ti-star rate-star js-rate-star"></i> <span
						class="reviews-label">${numReviews } Reviews</span>
				</div>
				<div class="hr"></div>


				<div class="product-comment-list">
					<div class="">
						<span class="reviews-label">${numReviews } Reviews</span>
					</div>
					<c:if test="${reviews != null && reviews.size() > 0}">

						<c:forEach items="${reviews }" var="review">
							<div class="product-rating row">
								<div class="product-rating__avatar col">
									<img src="./assets/images/logo/avatar_default.jpg" alt="">
								</div>
								<div class="product-rating__main col1">
									<div class="product-rating__author-name">
										<strong> ${review.author } </strong>
									</div>
									<div class="product-rating__rating">
										<span>rating: ${review.rate }/5</span>
									</div>
									<div class="product-rating__time">
										<span>${review.time }</span>
									</div>
									<div class="product-rating__title">
										<strong>${review.title }</strong>
									</div>
									<div class="product-rating__comment">
										<span>${review.comment }</span>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
					<c:if test="${reviews.size() == 0 }">

						<div class="empty-result col">
							<img src="./assets/images/logo/no-rs-found.jpg" alt="" /> <span
								class="no-result-title">No Review</span>
						</div>
					</c:if>
				</div>


				<div class="hr"></div>
				<div class="page-controller row">
					<a href=""><i class="ti-angle-left"></i> </a>
					<c:forEach var="page" begin="1" end="${totalReviewPage }">
						<a href=""> ${page} </a>

					</c:forEach>

					<a href=""><i class="ti-angle-right"></i></a>

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
	

	<!-- script -->
	
	<script src="./assets/scrips/productDetails.js"></script>
	




</body>

</html>