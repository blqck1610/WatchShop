<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/register.css">
    <link rel="stylesheet" href="./assets/css/styles.css" />
<link rel="stylesheet"
	href="./assets/css/themify-icons/themify-icons.css">
	<script type="text/javascript" src="./assets/scrips/scripts.js" defer></script>
    <script src="./assets/scrips/register.js" defer></script>

    <title>Document</title>
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
    <div class="wrapper ptb-160">
        <form action="register" id="register-form" method = "post">
            <h1>Đăng Ký Thành Viên</h1>

			<p class="error-message" >${requestScope.error} </p>
            <label for="input-msv">Username</label>
            <input class="nor-input" id="input-msv" type="text" name = "username">
            <p class="error-message" style="display: none">Please enter Username.</p>
            <label for="input-name">Họ và tên</label>
            <input class="nor-input" id="input-name" type="text" name = "fullname">
            <p class="error-message" style="display: none">Please enter your name.</p>
            <label for="input-email">Email</label>
            <input class="nor-input" id="input-email" type="text" name="email">
            <p class="error-message" style="display: none">Please enter your valid email.</p>
            <label for="input-password">Mật khẩu</label>
            <input class="nor-input" id="input-password" type="password" name="password">
            <p class="error-message" style="display: none">Please enter your password.</p>
            <label for="input-verify-password">Nhập lại mật khẩu</label>
            <input class="nor-input" id="input-verify-password" type="password">
            <p class="error-message" style="display: none">password doesnt match.</p>
            <label for="input-gender">Giới tính</label>
            <div id="input-gender">
                <input type="radio" checked name="gender" value="nam"> Nam
                <input type="radio" name="gender" value="Nữ"> Nữ
            </div>
            <label for="input-habit">Sở thích</label>
            <div id="input-habit">
                <input type="checkbox"> Đọc sách
                <input type="checkbox"> Du lịch
                <input type="checkbox"> Âm nhạc
                <input type="checkbox"> Ẩm thực
                <input type="checkbox"> Khác
            </div>
            <label for="">Quốc tịch</label>
            <select name="" id="">
                <option value="">Việt Nam</option>
            </select>
            <label for="input-note">Ghi chú</label>
            <textarea class="nor-input" name="" id="input-note" cols="30" rows="10" maxlength="200">
            </textarea>
            <br>
            <input type="submit" class = "btn" value="Đăng Ký">
        </form>
    </div>
</body>

</html>