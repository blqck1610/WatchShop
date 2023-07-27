<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<!-- modal user -->



	<div class="overlay js-overlay hide-modal">
		<div class="slide-out js-slide-out">
			<div class="slide-out__header row">
				<a class="slide-out__close js-btn-slide-out-close">Đóng</a>
				<div class="row">
					<button id="js-account-tab-link" class=" js-tab-links col1"
						onclick="showModalTab(event, 'account-tab')">Tài khoản</button>
					<button id="js-cart-tab-link"
						class="js-cart-tab-link js-tab-links col1"
						onclick="showModalTab(event, 'cart-tab')">Giỏ hàng</button>
				</div>
			</div>
			<div class="hr"></div>
			<div id="account-tab" class=" js-tab-contents ">
				<!-- form login -->
				<form class="form js-form-account col js-login-form hide-modal"
					action="login">
					<div class="form-title">
						<lable>Đăng nhập</lab>
					</div>

					<div class="main-content">
						<label for="login-input-email">Tên tài khoản</label> <input
							type="text" id="login-input-email"
							placeholder="Nhập username "> <label
							for="login-input-password">Mật khẩu</label> <input
							type="password" id="login-input-password"
							placeholder="nhập mật Khẩu"> <input type="checkbox"
							class="checkbox"> <span>ghi nhớ</span>


						<div class="row">
							<input class="submit-form" type="submit" value="Đăng nhập">
						</div>
						<div class="row">
							<a href="" class="forgot-password">Quên mật khẩu?</a> <a href="#"
								class="sign-in js-sign-in-request">Chưa có tài khoản?</a>
						</div>
					</div>
					<div class="hr"></div>

				</form>
				<!-- form sign in -->
				<form class="form js-form-account col js-sign-in-form hide-modal"
					action="">
					<div class="form-title">
						<label>Đăng Ký</label>
					</div>

					<div class="main-content">
						<label for="sign-in-input-username">Tên tài khoản</label> <input
							type="text" id="sign-in-input-username"
							placeholder="Nhập username "> <label
							for="sign-in-input-email">Email</label> <input type="email"
							id="sign-in-input-email" placeholder="nhập địa chỉ email">
						<label for="sign-in-input-password">Mật khẩu</label> <input
							type="password" id="sign-in-input-password"
							placeholder="nhập mật khẩu"> <label
							for="sign-in-input-re-password">nhập lại mật khẩu</label> <input
							type="password" id="sign-in-input-re-password"
							placeholder="nhập lại mật khẩu">

						<div class="row">
							<input class="submit-form" type="submit" value="Đăng Ký">
						</div>

					</div>
					<div class="hr"></div>
					<a href="" class="js-login-request">Quay về đăng nhập</a>

				</form>
				<!-- form user  -->
				<form class="form js-form-account col js-user-form " action="">
					<div class="main-content">
						<h3>Welcome ${sessionScope.user.username}!</h3>
						<h4>Đơn hàng của bạn</h4>
						<a href="" class="row button"> <span><i
								class="ti-time icon"></i> Xem tất cả đơn hàng</span> <i
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

					</div>
					<div class="hr"></div>

					<a href="logout" class="logout-button">Log out</a>
				</form>
			</div>
			<!-- cart -->
			<div id="cart-tab" class=" js-tab-contents ">

				<form class="form col js-cart-form " action="">
					<div class="form-title">
						<p>Giỏ hàng(0)</p>
					</div>
					<div class="hr"></div>
					<div class="main-content">
						<div class="cart-items col1">
							<div class="cart-item">
								<!-- img & label -->
								<div class="row">
									<div class="col">
										<img
											src="./assets/images/product/victorinox-maverick-quartz-black-dial-men_s-watch-241884.jpg"
											alt="">
									</div>
									<div class="col1">
										<p class="brand-label">Tên hãng</p>
										<p class="item-name">Tên produce</p>
									</div>
								</div>
								<!-- price and quatity -->
								<div class="row no-wrap">
									<div class="col">
										<div class="row no-wrap">
											<span class="col new-price">giá mới</span> <span
												class="col old-price"> giá cũ</span>
										</div>
									</div>
									<!-- quatity -->
									<div class="col1 ">

										<div class="row ">
											<a href="" class="sub-btn ">-</a> <input
												style="width: 30% !important; margin: 0;" readonly
												type="number" value="1"> <a href="" class="add-btn">+</a>
										</div>
									</div>
								</div>
								<div class="row ">
									<span class="new-price col">total price</span>
									<div class="col">
										<a href="" class="mt-8">xóa khỏi giỏ hàng</a>
									</div>
									<div class="hr"></div>
								</div>
								<!-- btn remove -->

							</div>
							<div class="cart-item">
								<!-- img & label -->
								<div class="row">
									<div class="col">
										<img
											src="./assets/images/product/victorinox-maverick-quartz-black-dial-men_s-watch-241884.jpg"
											alt="">
									</div>
									<div class="col1">
										<p class="brand-label">Tên hãng</p>
										<p class="item-name">Tên produce</p>
									</div>
								</div>
								<!-- price and quatity -->
								<div class="row no-wrap">
									<div class="col">
										<div class="row no-wrap">
											<span class="col new-price">giá mới</span> <span
												class="col old-price"> giá cũ</span>
										</div>
									</div>
									<!-- quatity -->
									<div class="col1 ">

										<div class="row ">
											<a href="" class="sub-btn ">-</a> <input
												style="width: 30% !important; margin: 0;" readonly
												type="number" value="1"> <a href="" class="add-btn">+</a>
										</div>
									</div>
								</div>
								<div class="row ">
									<span class="new-price col">total price</span>
									<div class="col">
										<a href="" class="mt-8">xóa khỏi giỏ hàng</a>
									</div>
									<div class="hr"></div>
								</div>
								<!-- btn remove -->

							</div>
							<div class="total-price col1">
								<div class="row">
									<label class="label">total price</label> <label for="">
										tổng giá </label>
								</div>
								<div class="row">
									<label class="label">saving</label> <label for=""> %
										giảm giá so với tổng ban đầu </label>
								</div>
								<div class="row">
									<label class="label">discount</label> <label for=""> số
										tiền giảm đc </label>
								</div>
								<div class="row">
									<label class="label">tax</label> <label for=""> thuế </label>
								</div>
								<div class="row">
									<label class="label">Sub total</label> <label for="">
										gia - discount </label>
								</div>
							</div>
						</div>

						<div class="row ">
							<div class="hr"></div>
							<input class="submit-form col1" type="submit" value="Thanh Toán">
						</div>
				</form>
			</div>
			<div class="error-block js-error-block hide-modal">

				<p class="row">Lỗi: ${requestScope.userError } </p>
			</div>

		</div>
	</div>

	<!-- set  -->
	<c:set var="user" value="${sessionScope.user}"></c:set>


	<!-- script -->
	<script type="text/javascript" src="./assets/scrips/scripts.js"></script>
	<c:if test="${user == null}">
		<script type="text/javascript">
		console.log('login');
			showLoginForm();
		</script>
	</c:if>



</body>

</html>