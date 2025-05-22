<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangsanphamchitiet.aspx.cs" Inherits="Webbanmaytinh.Trangsanphamchitiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thế giới máy tính</title>
	<link href="Style/trangsanphamchitiet.css" rel="stylesheet" />
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
		<div>					<%-- Hiển thị sản phẩm --%>
		<div class="main">
		<asp:ListView ID="ListViewProductinformation" runat="server" >
			<ItemTemplate>
				<div class="anh">
					<img src="<%# Eval("Images") %>" title="Máy tính rẻ,ngon">
				</div>

				<div class="content">
					<!----<p><a href="#">Trang chủ</a> / <a href="#">Acer</a></p>---->
					<h1 class="header-content"><%# Eval("Name") %></h1>
					<hr width="20px" /><td>
					<p style="font-size:45px;color: #C89979;   " class="header-content"><b><%# Eval("Price", "{0:N0}") %> đồng</b></p>
					<p class="header-content"><%# Eval("Detail") %>
					</p>
					<ul class="header-content">
						<li>Intel Core i7-12700K</li>
						<li>Tốc độ cơ bản: 3.6 GHz</li>
						<li>Bộ nhớ cache: 25 MB</li>
						<li>RAM: 16GB</li>
					</ul>
				</ItemTemplate>
		</asp:ListView>
		<div class="submit">
			<p class="Themgio" name="Themgio" runat="server" id="Themgio" style="color:red"></p>
			<button type="submit" class="themvaogio" runat="server" id="AddToCartButton1" onserverclick="AddToCartButton" >Thêm vào giỏ hàng</button>
		</div>
			</div>
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
    </form>
</body>
</html>
