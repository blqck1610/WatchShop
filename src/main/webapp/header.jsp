<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<!-- set  -->
	<c:set var="user" value="${sessionScope.user}"></c:set>
	<c:set var="cart" value="${sessionScope.cart }"></c:set>

	<header id="header" class="row">
		<div class="logo col">
			<a href=""> <img width="150px"
				src="./assets/images/logo/logostore.png" alt=""
				class="logo-store ml-60">
			</a>
		</div>

		<div class="nav col col1 mlr-24">
			<div class="row ">
				<div class="search-header">
					<input type="text" class="header-input-search input"
						placeholder="tìm kiếm sản phẩm"><i class="ti-search icon"></i>

				</div>
				<div class="user-header">
					<div class="user-icon">
						<i class="ti-user icon js-user-icon"></i> <i
							class="ti-shopping-cart icon js-cart-icon"><sub>0</sub> </i>
					</div>


				</div>
			</div>
			<ul class="row">
				<li><a href="#" class="nav__link">Thương hiệu</a>
					<ul class="row sub-nav">
						<li class="col"><a href="">Các hãng bán chạy</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khuyên dùng</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Các dòng đặc biệt</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Thụy Sỹ</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>

					</ul></li>
				<li><a href="#" class="nav__link">Nam</a>
					<ul class="row sub-nav">
						<li class="col"><a href="">Khoảng giá</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>Dưới
											2tr</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											2tr - 3tr</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>3tr
											- 4tr</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>4tr
											- 5tr</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											trên 5tr</span></a>
							</ul></li>
						<li class="col"><a href="">Chất Liệu Dây</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Thương Hiệu hot</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">SWISS MADE(THỤY SỸ)</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Các Dòng đặc biệt</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
					</ul></li>
				<li><a href="#" class="nav__link">Nữ</a>
					<ul class="row sub-nav">
						<li class="col"><a href="">Các hãng bán chạy</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khuyên dùng</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Các dòng đặc biệt</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Thụy Sỹ</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khác</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
					</ul></li>
				<li><a href="#" class="nav__link">Cặp đôi</a>
					<ul class="row sub-nav">
						<li class="col"><a href="">Các hãng bán chạy</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khuyên dùng</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Các dòng đặc biệt</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Thụy Sỹ</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khác</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
					</ul></li>
				<li><a href="#" class="nav__link">Trang sức</a>
					<ul class="row sub-nav">
						<li class="col"><a href="">Các hãng bán chạy</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khuyên dùng</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Các dòng đặc biệt</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Thụy Sỹ</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khác</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
					</ul></li>
				<li><a href="#" class="nav__link">Dịch Vụ</a>
					<ul class="row sub-nav">
						<li class="col"><a href="">Các hãng bán chạy</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khuyên dùng</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Các dòng đặc biệt</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Thụy Sỹ</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khác</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
					</ul></li>
				<li><a href="#" class="nav__link">Liên hệ</a>
					<ul class="row sub-nav">
						<li class="col"><a href="">Các hãng bán chạy</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khuyên dùng</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Các dòng đặc biệt</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Thụy Sỹ</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
						<li class="col"><a href="">Khác</a>
							<ul class="col">
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>
								<li><a href=""><i class="ti-angle-right"></i><span>
											Daniel Walington(DW)</span></a></li>

							</ul></li>
					</ul></li>

			</ul>
		</div>
	</header>

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
					action="login" method="post">
					<div class="form-title">
						<lable>Đăng nhập</lab>
					</div>

					<div class="main-content">
						<label for="login-input-username">Tên tài khoản</label> <input
							required type="text" id="login-input-username"
							placeholder="Nhập username " name="username"> <label
							for="login-input-password">Mật khẩu</label> <input required
							type="password" id="login-input-password"
							placeholder="nhập mật Khẩu" name=password> <input
							type="checkbox" class="checkbox"> <span>ghi nhớ</span>


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
						<p>Giỏ hàng(${(cart != null) ? cart.items.size() : "0" })</p>
					</div>
					<div class="hr"></div>
					<c:if test="${cart != null && cart.items.size() != 0 }">

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
										<label class="label">discount</label> <label for="">
											số tiền giảm đc </label>
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
						</div>
					</c:if>
					<c:if test="${cart.items.size() == 0 || cart == null}">
						<p>Your cart is empty</p>
					</c:if>
				</form>
			</div>


		</div>
	</div>

	<!-- script -->
	<script type="text/javascript" src="./assets/scrips/header.js"></script>
	<c:if test="${user == null}">
		<script type="text/javascript">
			showLoginForm();
		</script>
	</c:if>


</body>

</html>