<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="./assets/css/login.css">
    <title>Document</title>
</head>

<body>
	
    <div class="wrapper">
        <div class="contents">
            <form class="form " action="login">
                <div class="form-title">
                    <lable>Đăng nhập</lab>
                </div>

                <div class="main-content">
                    <label for="login-input-email">Tên tài khoản</label>
                    <input name ="username" class="input" type="text" id="login-input-email" placeholder="Nhập username">
                    <label for="login-input-password">Mật khẩu</label>
                    <input name="password" class = "input "type="password" id="login-input-password" placeholder="nhập mật Khẩu">
                    <br>
                    <input type="checkbox" class="checkbox">
                    <span>ghi nhớ</span>


                    <div class="">
                        <input class="submit-form" type="submit" value="Đăng nhập">
                    </div>
                    <div class="row">
                        <a href="" class="forgot-password">Quên mật khẩu?</a>
                        <a href="register.jsp" class="sign-in js-sign-in-request">Chưa có tài khoản?</a>
                    </div>
                </div>
                <div class="hr"></div>

            </form>
        </div>
    </div>
    
</body>

</html>