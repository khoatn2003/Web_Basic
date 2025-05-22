﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="Webbanmaytinh.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
	<link href="Style/dangnhap.css" rel="stylesheet" />
</head>
<body>
       <div class="header">
		<div class="header_top" id="header-top">
			<p>96 Định Công, Hoàng Mai, Hà Nội</p>
			<div id="login" class="login" runat="server">
				<p class="user"></p>
				<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
			</div>	
		</div>
		<div class="header_bot" id="header-bot">
			<a href="Trangchu.aspx" class="header_logo">
				<img width="60" height="50" src="img/logo.png" title="Máy tính"/>
			</a>
			<ul>
				<li><a href="Trangchu.aspx">Trang chủ</a></li>
				<li><a href="gioithieu.aspx">Giới thiệu</a></li>
				<li>
					<a href="javascript:void(0);">Danh mục sản phẩm</a> <!-- Liên kết chuyển trang -->
					<ul>
						<li><a href="Acer.aspx">Acer</a></li>
						<li><a href="Mac.aspx">Macbook</a></li>
					</ul>
				</li>
				<li><a href="Thongtincanhan.aspx">Thông tin cá nhân</a></li>
				<li><a href="Giohang.aspx">Giỏ hàng</a></li>
			</ul>
			<a href="javascript:void(0);" style="font-size:35px;" class="icon" onclick="responsive() ">&#9776;</a>
		</div>
	</div>
								<%-- ---------Điền thông tin đăng nhập------------- --%>
			 <div class="content">
            <div id="login-form" class="auth" >
                <form action="Dangnhap.aspx" method="post" runat="server">
                <div class="auth__header">
                    <h2>Đăng nhập</h2>
                    <a href="Dangky.aspx">Đăng ký</a>
                </div>
                <div class="auth__form">
                <div class="form-control">
                    <label for="fullname">Họ tên: </label>
                    <input type="text" id="fullname" placeholder="Vui lòng nhập họ tên" name="fullname">
                </div>
                <div class="form-control">
                    <label for="birthdate">Ngày sinh: </label>
                    <input type="date" id="birthdate" name="birthdate">
                </div>
                <div class="form-control">
                    <label for="gender">Giới tính: </label>
                    <select id="gender" name="gender">
                        <option value="male">Nam</option>
                        <option value="female">Nữ</option>
                        <option value="other">Khác</option>
                    </select>
                </div>
                <div class="form-control">
                    <label for="class">Lớp: </label>
                    <input type="text" id="class" placeholder="Nhập lớp" name="class">
                </div>
                <p runat="server" id="errorL" style="color:red"></p>
                <button class="auth_btn" id="btnSubmit" runat="server">Gửi</button>
            </div>

                </form>
            </div>
		</div>
<%--		 <div class="content">
            <div id="login-form" class="auth" >
                <form action="Dangnhap.aspx" method="post" runat="server">
                <div class="auth__header">
                    <h2>Đăng nhập</h2>
                    <a href="Dangky.aspx">Đăng ký</a>
                </div>
                <div class="auth__form">
                    <div class="form-control">
                        <label for="username">Tên đăng nhập</label>
                        <input type="text" id="usernameL" placeholder="Nhập tên đăng nhập" name="usernameL">
                    </div>
                    <div class="form-control">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="passwordL" placeholder="Nhập mật khẩu" name="passwordL">
                    </div>
                    <p runat="server" id="errorL" style=" color:red"></p>
                    <button class="auth_btn" id="btnLogin" runat="server">Đăng nhập</button>
                </div>
                </form>
            </div>
		</div>--%>
									<%-- ----------------Footer-------------- --%>
		<div class="footter">
		<div class="footter_top">
			<div class="Thongtinlienhe">
				<h1>Thông Tin Liên Hệ</h1>
				<p>Địa chỉ: Định Công, Hoàng Mai, Hà Nội</p>
				<p>SĐT: 1910192092</p>
				<p>Gmail: abc1234@gmail.com</p>
			</div>
			<div class="Lienket">
				<h1>Liên Kết</h1>
				<ul>
					<li><a href="gioithieu.html">Giới thiệu</a></li>
					<li><a href="Acer.aspx">Acer</a></li>
					<li><a href="Mac.aspx">Macbook</a></li>
					<li><a href="Thongtincanhan.aspx">Thông tin cá nhân</a></li>
				</ul>
			</div>
			<div class="Lienket">
				<h1>Hỗ Trợ</h1>
				<ul>
					<li><a href="#">Hướng dẫn mua hàng</a></li>
					<li><a href="#">Hướng dẫn thanh toán</a></li>
					<li><a href="#">Chính sách bảo hành</a></li>
					<li><a href="#">Chính sách đổi trả</a></li>
					<li><a href="#">Tư vấn khách hàng</a></li>
				</ul>
			</div>
		</div>
		<div class="footter_bot">
			<div class="copyright">
        		© Bản quyền 
			</div>
		</div>
	</div>
	<script>
    btnLogin.onclick = function (e) {
        var valid = true;
        if (!(usernameL.value.trim() && passwordL.value.trim())) {
            valid = false;
        }
        if (!valid) {
            e.preventDefault();
            btn_error = document.getElementById("errorL");
            btn_error.innerHTML = "Điền đầy đủ tài khoản và mật khẩu";
        }
    }


</script>
</body>
</html>
