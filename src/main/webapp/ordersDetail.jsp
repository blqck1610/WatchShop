<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./assets/css/styles.css">
<link rel="stylesheet"
	href="./assets/css/themify-icons/themify-icons.css">
<link rel="stylesheet" href="./assets/css/cart.css">
<title>Document</title>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<c:set var="user" value="${sessionScope.user}"></c:set>
	<c:set var="orders" value="${requestScope.orders}"></c:set>
	<div class="wrapper ptb-160 ">
		<div class="order-contents row">


			<div class="side-bar">
				<form class="form js-form-account col js-user-form " action="">
					<div class="main-content">
						<h3>Welcome ${user.username }!</h3>
						<h4>Đơn hàng của bạn</h4>
						<a href="" class="row button choose"> <span><i
								class="ti-time icon "></i> Xem tất cả đơn hàng</span> <i
							class="ti-arrow-right icon"></i>
						</a>
						<h4>Thanh toán</h4>
						<a href="" class="row button"> <span><i
								class="ti-time icon"></i> Quản lý thẻ</span> <i
							class="ti-arrow-right icon"></i>
						</a>

						<h4>Voucher</h4>
						<a href="" class="row button"> <span><i
								class="ti-time icon"></i> Voucher của bạn</span> <i
							class="ti-arrow-right icon"></i>
						</a>

						<h4>Cài đặt</h4>
						<a href="" class="row button"> <span><i
								class="ti-time icon"></i> Cài đặt tài khoản</span> <i
							class="ti-arrow-right icon"></i>
						</a>
						<h4>Địa chỉ của bạn</h4>
						<a href="" class="row button"> <span><i
								class="ti-time icon"></i> Chỉnh sửa địa chỉ</span> <i
							class="ti-arrow-right icon"></i>
						</a>

					</div>
					<div class="hr"></div>

					<a href="" class="logout-button">Log out</a>
				</form>
			</div>
			<div class="main-contents">
				<div class="ordered-list">

					<c:forEach items="${orders }" var="order">

						<div class="ordered-wrapper ">
							<div class="row orderd">
								<span class="order-id">no. ${orders.indexOf(order) + 1} </span>
								<span class="order-date">date: ${order.date }</span> <span
									class="order-total-price">price : $${order.totalMoney }</span>
							</div>
							<div class="ordered-detail ">
								<c:forEach items="${order.orderDetails }" var="item">

									<div class="ordered-item col">
										<div class="ordered-item-detail row">
											<div class="main-item-img">
												<img
													src="./assets/images/product/${item.product.img }/${item.product.img }_1.jpg"
													alt="">
											</div>
											<a href="productDetails?idProduct=${item.product.idProduct }" class="main-item-text"> <span>${item.product.brand }
													${item.product.productName }</span>
											</a>

											<div class="quantity">
												<span>Số lượng: ${item.quantity } </span>

											</div>
											<div class="price f-13">
												<span class="">$${item.price }</span>

											</div>
											<span>status: ${item.status }</span>
										</div>
										<div class="row">

											<c:if test="${ item.reviewPer == '1' }">

												<div class="review-btn ">Đánh giá sản phẩm</div>
											</c:if>
											<div class="overlay-review hide-modal row">
												<form action="reviewProcess" class="form-review "
													method="post">

													<a class="close-btn" href="">close</a>
													<h2 class="reviews-title">Review</h2>
													<div class="row form-review-rating">
														<input type="number" name="orderId" value="${order.id  }"
															hidden> <input type="number" name="idProduct"
															value="${item.product.idProduct }" hidden> <input
															type="number" name="rvper" value="0" hidden> <input
															type="number"  name="rating" hidden> <i
															class="ti-star review-rating" value="1"></i> <i
															class="ti-star review-rating" value="2"></i> <i
															class="ti-star review-rating" value="3"></i> <i
															class="ti-star review-rating" value="4"></i> <i
															class="ti-star review-rating" value="5"></i>
														

													</div>
													<div class="review-contents">
														<label for="">Name</label> <input type="text" name="name">
														<label for="">Title</label> <input name="title"
															type="text">

														<textarea placeholder="enter review" name="review"
															cols="50" rows="10">
                                            </textarea>
														<input type="submit" class="review-btn" value="SEND">
													</div>


												</form>
											</div>
											<c:if test="${item.status.equals('Đang giao hàng') }">
												<a
													href="orderProcess?rvper=1&idProduct=${item.product.idProduct }&orderId=${order.id}"
													class="review-btn ">đã nhận được hàng</a>

											</c:if>
											<a class="review-btn">mua lại</a>
										</div>
									</div>
									<div class="hr"></div>


								</c:forEach>
							</div>
						</div>


					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="./assets/scrips/order.js" defer></script>
</body>

</html>