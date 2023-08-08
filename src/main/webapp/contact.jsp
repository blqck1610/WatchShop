<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./assets/css/styles.css">
<link rel="stylesheet"
	href="./assets/css/themify-icons/themify-icons.css">
<title>PL Store| contact</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="contacts col ptb-160">
		<h1>Contact Us</h1>
		<span class="contact-sub-text">Do you have any questions?
			Please do not hesitate to contact us directly. Our team will come
			back to you within a matter of hours to help you.</span>
		<div class="form-contact row">
			<div class="form-contact-main ">
				<label for="">Name</label> <input type="text"> <label for="">Email</label>
				<input type="email"> <label for="">Subject</label> <input
					type="text"> <label for="">Your message</label> <input
					type="text" name="message"> <input type="submit"
					value="Send">
			</div>
			<div class="form-contact-sub ">
				<span><i class="ti-location-pin icon"> </i>Quận 12, Thành Phố
					Hồ Chí Minh</span><br> <span><i class="ti-rss-alt icon"> </i>+84
					0334*****</span><br> <span><i class="ti-email icon"> </i>store@store.com</span><br>

			</div>

		</div>


		<div class="map">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.088714590089!2d106.71422577438865!3d10.80451718934598!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175293dceb22197%3A0x755bb0f39a48d4a6!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBHaWFvIFRow7RuZyBW4bqtbiBU4bqjaSBUaMOgbmggUGjhu5EgSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2s!4v1691244522699!5m2!1svi!2s"
				style="border: 0;" allowfullscreen="" loading="lazy"
				referrerpolicy="no-referrer-when-downgrade"> </iframe>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>