
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>PL Store</title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./assets/css/styles.css" />
<link rel="stylesheet"
	href="./assets/css/themify-icons/themify-icons.css">

</head>
<body>

	<div id="wrapper">
		<!-- header -->
		<%@ include file="header.jsp"%>
		<!-- main contents -->

		<!-- banner -->
		<div class="banner"></div>
		<!-- contents -->
		<div id="contents ">

			<!-- bar -->
			<div class="contents__bar row  pt-16">
				<a class="contents__bar__item col" href="">
					<div class="col">
						<img src="./assets/images/logo/mens_round_150.png" alt=""
							class="item__img"> <span class="item__label">Đồng hồ
							nam</span>
					</div>
				</a> <a class="contents__bar__item col" href="">
					<div class="col">
						<img src="./assets/images/logo/ladies_round_150.png" alt=""
							class="item__img"> <span class="item__label">Đồng hồ
							nữ</span>
					</div>
				</a> <a class="contents__bar__item col" href="">
					<div class="col">
						<img src="./assets/images/logo/sunglasses_round_150.png" alt=""
							class="item__img"> <span class="item__label">Kính</span>
					</div>
				</a> <a class="contents__bar__item col" href="">
					<div class="col">
						<img src="./assets/images/logo/jewelry_round_150.png" alt=""
							class="item__img"> <span class="item__label">Trang
							sức</span>
					</div>
				</a> <a class="contents__bar__item col" href="">
					<div class="col">
						<img src="./assets/images/logo/sale_round_150.png" alt=""
							class="item__img"> <span class="item__label">Đang
							giảm giá</span>
					</div>
				</a> <a class="contents__bar__item col" href="">
					<div class="col">
						<img src="./assets/images/logo/preowned_round_150.png" alt=""
							class="item__img"> <span class="item__label">pre
							order</span>
					</div>
				</a>
			</div>
			<div class="hr"></div>
			<!-- brand -->
			<div class="brand row pt-16 ">
				<a href="" title="Rolex" class="col-1 nav__link">Rolex</a> <a
					href="" class="col-1 nav__link">Seiko</a> <a href=""
					class="col-1 nav__link">Omega</a> <a href=""
					class="col-1 nav__link">Casio</a> <a href=""
					class="col-1 nav__link">Citizen</a> <a href=""
					class="col-1 nav__link">Timex</a> <a href=""
					class="col-1 nav__link">Bulova</a> <a href=""
					class="col-1 nav__link">G-shock</a> <a href=""
					class="col-1 nav__link">Orient</a> <a href=""
					class="show-all-btn col-1 nav__link">Show all brand</a>
			</div>

			<!-- trending -->
			<div class="container row bg-blue mb-0">
				<div class="container__title col">
					<span class="container__label bg-blue">Trending Now </span> <a
						href="#" class="btn-show-all">Show all</a>
				</div>
				<div class="container__items row">
					<c:set var="productNames" value="${requestScope.productNames }"></c:set>

					<c:forEach items="${productNames }" var="product">

						<a href="productDetails?idProduct=${product.idProduct }"  class="col item"> <img
							src="./assets/images/product/${product.img }/${product.img }_1.jpg"
							alt="">
							<div class="item-name">
								<span class="brand-label">${product.brand } </span>${product.productName }
								<br>
								<c:if test="${product.saleValue == 0 }">
									<span class=""><Strong>$${product.price }</strong> </span>
								</c:if>
								<c:if test="${product.saleValue > 0 }">
									<span class="new-price">$${product.price -
										product.price*product.saleValue/100} (sale off:
										${product.saleValue}%) </span>
									<span class="old-price">$${product.price } </span>
								</c:if>
							</div>
						</a>
					</c:forEach>

				</div>
			</div>
			<div class="hr"></div>
			<!-- new -->
			<div class="container row">
				<div class="container__title col">
					<span class="container__label">Sản phẩm mới </span> <a href="#"
						class="btn-show-all">Show all</a>
				</div>
				<div class="container__items row">
					<c:set var="productNames" value="${requestScope.productNews }"></c:set>

					<c:forEach items="${productNames }" var="product">

						<a href="productDetails?idProduct=${product.idProduct }"  class="col item"> <img
							src="./assets/images/product/${product.img }/${product.img }_1.jpg"
							alt="">
							<div class="item-name">
								<span class="brand-label">${product.brand } </span>${product.productName }
								<br>
								<c:if test="${product.saleValue == 0 }">
									<span class=""><Strong>$${product.price }</strong> </span>
								</c:if>
								<c:if test="${product.saleValue > 0 }">
									<span class="new-price">$${product.price -
										product.price*product.saleValue/100} (sale off:
										${product.saleValue}%) </span>
									<span class="old-price">$${product.price } </span>
								</c:if>
							</div>
						</a>
					</c:forEach>
				</div>
			</div>
			<div class="hr"></div>
			<!-- nam -->
			<div class="container row">
				<div class="container__title col ">
					<span class="container__label">Đồng Hồ Nam </span> <a href="MenWatches"
						class="btn-show-all">Show all</a>
				</div>
				<div class="container__items row">

					<c:set var="productNames" value="${requestScope.productMens }"></c:set>

					<c:forEach items="${productNames }" var="product">

						<a href="productDetails?idProduct=${product.idProduct }" class="col item"> <img
							src="./assets/images/product/${product.img }/${product.img }_1.jpg"
							alt="">
							<div class="item-name">
								<span class="brand-label">${product.brand } </span>${product.productName }
								<br>
								<c:if test="${product.saleValue == 0 }">
									<span class=""><Strong>$${product.price }</strong> </span>
								</c:if>
								<c:if test="${product.saleValue > 0 }">
									<span class="new-price">$${product.price -
										product.price*product.saleValue/100} (sale off:
										${product.saleValue}%) </span>
									<span class="old-price">$${product.price } </span>
								</c:if>
							</div>
						</a>
					</c:forEach>

				</div>
			</div>
			<div class="hr"></div>
			<!-- nữ -->
			<div class="container row">
				<div class="container__title col">
					<span class="container__label">Đồng Hồ Nữ </span> <a href="#"
						class="btn-show-all">Show all</a>
				</div>
				<div class="container__items row">
					<c:set var="productNames" value="${requestScope.productWomens }"></c:set>

					<c:forEach items="${productNames }" var="product">

						<a href="productDetails?idProduct=${product.idProduct }"  class="col item"> <img
							src="./assets/images/product/${product.img }/${product.img }_1.jpg"
							alt="">
							<div class="item-name">
								<span class="brand-label">${product.brand } </span>${product.productName }
								<br>
								<c:if test="${product.saleValue == 0 }">
									<span class=""><Strong>$${product.price }</strong> </span>
								</c:if>
								<c:if test="${product.saleValue > 0 }">
									<span class="new-price">$${product.price -
										product.price*product.saleValue/100} (sale off:
										${product.saleValue}%) </span>
									<span class="old-price">$${product.price } </span>
								</c:if>
							</div>
						</a>
					</c:forEach>

				</div>
			</div>
			<div class="hr"></div>
			<!-- trang sức -->
			<div class="container row">
				<div class="container__title col">
					<span class="container__label">Trang Sức </span> <a href="#"
						class="btn-show-all">Show all</a>
				</div>
				<div class="container__items row">
					

				</div>
			</div>
			<!-- customer -->
			<div class="container row">
				<div class="container__title col">
					<span class="container__label">Khách hàng của chúng tôi </span>
				</div>
				<div class="customer row ">
					<img src="./assets/images/logo/customer/Bosch_logo-1.jpg" alt="">
					<img src="./assets/images/logo/customer/EVN-1.jpg" alt=""> <img
						src="./assets/images/logo/customer/LAVIE-1.jpg" alt=""> <img
						src="./assets/images/logo/customer/NESTLE-1.jpg" alt=""> <img
						src="./assets/images/logo/customer/NUMBER-1-1.jpg" alt=""> <img
						src="./assets/images/logo/customer/PETRO-1.jpg" alt=""> <img
						src="./assets/images/logo/customer/POCA-1.jpg" alt=""> <img
						src="./assets/images/logo/customer/UNILEVER-1.jpg" alt="">
				</div>
				<div class="hr-inner"></div>

			</div>
			<!-- service -->
			<div class="row service">
				<div class="col service-item">
					<h3 class="headline p-8">CAM KẾT</h3>
					<h2 class="sub-headeline">HÀNG CHÍNH HÃNG</h2>
					<a href="" class="btn-primary">tìm hiểu thêm</a>
				</div>
				<div class="col service-item">
					<h3 class="headline">BẢO HÀNH</h3>
					<h2 class="sub-headeline">VƯỢT CHÍNH SÁCH</h2>
					<a href="" class="btn-primary">tìm hiểu thêm</a>
				</div>
				<div class="col service-item">
					<h3 class="headline">1 ĐỔI 1</h3>
					<h2 class="sub-headeline">NHANH CHÓNG VÀ DỄ DÀNG</h2>
					<a href="" class="btn-primary">tìm hiểu thêm</a>
				</div>
			</div>
			<!-- social page -->
			
		</div>


		<!-- footer -->
		<%@ include file="footer.jsp"%>




	</div>

	<script type="text/javascript" src="./assets/scrips/scripts.js"></script>
	<c:set var="userError" value="${requestScope.userError}"></c:set>
	<c:if test="${userError != null}">
		<script type="text/javascript">
			console.log('${userError}');
			// show error login
			//	showError();
		</script>
	</c:if>
</body>

</html>