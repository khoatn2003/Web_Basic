<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="Webbanmaytinh.Giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8"/>
    <title>Giỏ hàng</title>
	<link href="Style/Giohang.css " rel="stylesheet"/>
</head>
<body>
	<form id="form1" runat="server">
    <div class="header">
		<div class="header_top" id="header-top">
			<p>96 Định Công, Hoàng Mai, Hà Nội</p>
			<div id="login" class="login" runat="server">
				<p class="user"></p>
				<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
			</div>	
		</div>
		<div class="header_mid">
			<a href="Trangchu.aspx">
				<img width="80" height="70" src="img/logo.png" title="Máy tính"/>
			</a>
		</div>
		<div class="header_bot" id="header-bot">
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
									<%-- -------------Hiển thị giỏ hàng---------- --%>
		<div class="main">
 <%--   <p class="sogiohang" id="sogiohang" runat="server"></p>--%>
    <div class="cart_product">
        <table class="bang">
            <tr>
                <th>Ảnh</th>
                <th>Tên sản phẩm</th>
                <th>Giá</th>
                <th>Tác vụ</th>
            </tr>
            <asp:ListView ID="ListViewCart" runat="server">
                <ItemTemplate>
                    <tr>
                        <td class="td1"><img src='<%# Eval("Images") %>' class="anh" /></td>
                        <td><p><%# Eval("Name") %></p></td>
						<!-- Thêm dấu chấm phân cách hàng nghìn cho giá tiền -->
                        <td><p><%# Eval("Price", "{0:N0}") %> đồng</p></td>
						<td>
							<a href="Xoagiohang.aspx?id=<%# Eval("Id") %>" class="xoa">Xóa</a>
							<%--<a href="Xoagiohang.aspx?id=<%#Eval("Id")%>" class="xoa"><button class="xoa">Xóa</button></a>--%>
						</td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </table>
		 <div id="emptyCartMessage" runat="server" class="empty-cart-message"></div>
    </div>
    <div class="cart_price" >
        <div class="cart--right">
            <h2 class="cart__title--right">Đơn hàng<br/></h2>
            <div class="cart__products-total-price">
                <p>Tổng tiền sản phẩm</p>
                <!-- Hiển thị tổng tiền sản phẩm từ backend -->
                <p runat="server" id="products_price">0 <span class="cart__product-price-unit">đ</span></p>
            </div>
            <!--<div class="cart__delivery-price">
                <p>Tổng phí giao hàng</p>
                <p runat="server" id="delivery_price">0 <span class="cart__product-price-unit">đ</span></p>
            </div>
            <hr>--->
            <div class="cart__order-total">
                <p>Tổng cộng: </p>
                <!-- Hiển thị tổng cộng từ backend -->
                <p runat="server" id="order_total_price">0 <span class="cart__product-price-unit">đ</span></p>
            </div>
            <!-----<hr>--->
            <div class="cart__buttons--right" >
             <button class="purchase-button" type="button" runat="server" id="btnThanhToan" onserverclick="btnThanhToan_Click">THANH TOÁN</button>
            </div>
					
        </div>
    </div>
</div>

										<%-- ----------------Footer-------------- --%>
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
