<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lienhe.aspx.cs" Inherits="Webbanmaytinh.Thongtincanhan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông tin cá nhân</title>
    <link rel="stylesheet" href="Style/ttcn.css" />
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

    <!-- Form nhập thông tin cá nhân -->
    <form method="GET" action="#">
        <div class="content">
            <div class="auth">
                <div class="auth__header">
                    <h2>Nhập thông tin cá nhân</h2>
                </div>
                <div class="auth__form">
                    <div class="form-control">
                        <label for="name">Họ và tên</label>
                        <input type="text" id="name" required>
                        <p>Error message</p>
                    </div>
                    <div class="form-control">
                        <label for="Email">Email</label>
                        <input type="email" id="Email" required>
                        <p>Error message</p>
                    </div>
                    <div class="form-control">
                        <label for="phone">Số điện thoại</label>
                        <input type="tel" id="phone" pattern="[0-9]{10}" required>
                        <p>Error message</p>
                    </div>
                    <div class="form-control">
                        <label for="address">Địa chỉ</label>
                        <textarea id="address" cols="5" required></textarea>
                        <p>Error message</p>
                    </div>
                    <input type="submit" name="submit" class="auth_btn" id="btnSubmit" value="Xác nhận" />
                </div>
            </div>
        </div>
    </form>

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
</body>
</html>
