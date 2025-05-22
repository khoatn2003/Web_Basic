<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mac.aspx.cs" Inherits="Webbanmaytinh.Mac" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MACBOOK</title>
	 <link href="Style/mac.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
		<div class="up">
        <div class="abc">
            <a href="Trangchu.aspx"><strong>TRANG CHỦ</strong></a> / <a href="Mac.aspx"><strong>MACBOOK</strong></a>
        </div>
    </div>
	<div class="container">
        <div class="sidebar_one">
            <div class="row_1">
                <strong>Danh mục sản phẩm</strong>
                <div class="show">
                    <ul>
                        <li><a href="Acer.aspx">Acer</a></li>
                        <li><a href="Mac.aspx">Macbook</a></li>
                    </ul>
                </div>
            </div>
            <div class="row_2"></div>
            <div class="row_3"></div>
        </div>
		<div class="sidebar_two">
            <div class="sanpham">
                <asp:ListView ID="mac1" runat="server">
                    <ItemTemplate>
                        <a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
                            <div class="sanpham_show">
                                <img src="<%# Eval("Images") %>" alt="ảnh lỗi">
                                <div class="sanpham_gia">
                                    <strong><%# Eval("Name") %></strong>
                                    <p><%# Eval("Price", "{0:N0}") %> đồng</p>
                                </div>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
        <div class="footter">
        <div class="footter_top">
            <div class="Thongtinlienhe">
                <h1>Thông Tin Liên Hệ</h1>
                <p>Địa chỉ:  Định Công, Hoàng Mai, Hà Nội</p>
                <p>SĐT: 1910192092</p>
                <p>Gmail: abc1234@gmail.com</p>
            </div>
            <div class="Lienket">
                <h1>Liên Kết</h1>
                <ul>
                    <li><a href="gioithieu.aspx">Giới thiệu</a></li>
                    <li><a href="Acer.aspx">Acer</a></li>
                    <li><a href="Macbook.aspx">Macbook</a></li>
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
    </form>
</body>
</html>
