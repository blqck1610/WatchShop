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
<title>PL Store |  Order list</title>
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
						<a href="orderDetails" class="row button "> <span><i
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
						<a href="" class="row button" choose> <span><i
								class="ti-time icon"></i> Chỉnh sửa địa chỉ</span> <i
							class="ti-arrow-right icon"></i>
						</a>

					</div>
					<div class="hr"></div>

					<a href="" class="logout-button">Log out</a>
				</form>
			</div>
			<div class="main-contents">
				<h2>Địa chỉ</h2>
				<div class="title-address row">
					<span class="name">Tên</span>
					<span class="sdt">SDT</span>
					<span class="address">Địa Chỉ</span>
					
				</div>
				<div class="title-address row">
				<span class="name">Nguyen</span>
					<span class="sdt">012321321</span>
					<span class="address">2 Tô Ký, quận 12, TP HCM</span>
					<a style="padding:12px" href="">Xóa</a>
				</div>
				<a style="padding:12px" href="">Thêm</a>
					
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="./assets/scrips/order.js" defer></script>
</body>

</html>