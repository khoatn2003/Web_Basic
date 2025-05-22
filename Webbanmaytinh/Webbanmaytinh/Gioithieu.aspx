<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gioithieu.aspx.cs" Inherits="Webbanmaytinh.Gioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giới thiệu</title>
    <link rel="stylesheet" href="Style/gioithieu.css" />
</head>
<body>
       	    <div class="banner-top">
        <img src="img/banner.jpg" alt="Banner" />
	    </div>
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
    <div class="gioithieu">
        <div class="gioithieu_column_one">
            <img src="img/Acer.jpg" alt="lỗi" width="100%" height="50%">
        </div>
        <div class="gioithieu_column_two">
            <h2>Giới thiệu về Mart Computer</h2>
            <span>
                “Cùng với sự phát triển không ngừng của công nghệ thế giới, rất nhiều thương hiệu cho ra đời những mẫu máy tính chính hãng đa dạng về phong cách, kiểu dáng, màu sắc, kích cỡ…
            </span>
        </div>
    </div>
    <div class="section_content">
        <div class="section_item">
            <div class="section_child">
                <h3>Hàng chính hãng</h3>
                <span>Hiện nay, máy tính là dụng cụ ko thể thiếu cho học sinh, những người chơi game, đi làm</span>
            </div>
            <div class="section_child">
                <h3>Sản phẩm mới 100%</h3>
                <span>Hiện nay, máy tính là dụng cụ ko thể thiếu cho học sinh, những người chơi game, đi làm</span>
            </div>
            <div class="section_child">
                <h3>Bảo hành 12 tháng</h3>
                <span>Hiện nay, máy tính là dụng cụ ko thể thiếu cho học sinh, những người chơi game, đi làm</span>
            </div>
        </div>
        <div class="section_item">
            <div class="section_child">
                <h3>Đổi trả trong vòng 7 ngày</h3>
                <span>Hiện nay, máy tính là dụng cụ ko thể thiếu cho học sinh, những người chơi game, đi làm</span>
            </div>
            <div class="section_child">
                <h3>Miễn phí giao hàng</h3>
                <span>
                    Hiện nay, máy tính là dụng cụ ko thể thiếu cho học sinh, những người chơi game, đi làm
                </span>
            </div>
            <div class="section_child">
                <h3>Giá cả hợp lý</h3>
                <span>Hiện nay, máy tính là dụng cụ ko thể thiếu cho học sinh, những người chơi game, đi làm</span>
            </div>
        </div>
    </div>
    <div class="section_img">
        <img src="img/slide3.jpg" alt="photo" width="100%">
    </div>

    <div class="degi">

    </div>

<div class="footter">
		<div class="footter_top">
			<div class="Thongtinlienhe">
				<h1>Thông Tin Liên Hệ</h1>
				<p>Địa chỉ: Định Công, Hoàng Mai, Hà Nội	</p>
				<p>SĐT: 1910192092</p>
				<p>Gmail: abc1234@gmail.com</p>
			</div>
			<div class="Lienket">
				<h1>Liên Kết</h1>
				<ul>
					<li><a href="gioithieu.html">Giới thiệu</a></li>
					<li><a href="Acer.aspx">Acer</a></li>
					<li><a href="Mac.aspx">Macbook</a></li>
					<li><a href="Lienhe.aspx">Liên hệ</a></li>
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

