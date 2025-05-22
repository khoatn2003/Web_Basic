<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="Webbanmaytinh.Trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <link href="Style/trangchu.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
<%--		<div class="banner">
		<div class="noidung_banner">
				<h2>Mart Computer</h2>
				<h1>Thế giới máy tính</h1>
				<p>Cùng với sự phát triển không ngừng của công nghệ thế giới, rất nhiều thương hiệu cho ra đời những mẫu máy tính chính hãng đa dạng về phong cách, kiểu dáng, màu sắc, kích cỡ…</p>
		</div>
		<img id="img" src="img/slide3.jpg" width="auto">
		</div>--%>
		<section class="slider">
		<div class="container">
			<div class="slider_content">
				<div class="slider_content_left">
				    <div class="slider_content_left_top_container">
						<div class="slider_content_left_top">
							<a href=""><img src="img/slide1.jpg" alt="mô_tả_ảnh"></a>
							<a href=""><img src="img/slide2.jpg" alt=""> </a>
							<a href=""><img src="img/slide3.jpg" alt=""></a>
							<a href=""><img src="img/slide4.jpg" alt=""> </a>
						</div> 
						<div class="slider_content_left_top_btn">
							<i class="fa-solid fa-chevron-left"></i>
							<i class="fa-solid fa-chevron-right"></i>	
						</div>
				    </div> 
					<div class="slider_content_left_bottom">
						<li class="active">Tiểu điểm Acer</li>
						<li>Intel Core Ultra</li>
						<li>Acer predator Helios Neo</li>
						<li>Game without compromise</li>
					</div>
				</div>
			</div>
		</div>
	</section> 
		<div class="maytinh">
		<div class="left">
			<div class="p_maytinh">
				<h2>Xu hướng 2024</h2>
				<h1>Acer</h1>
			</div>
		</div>
		<div class="right">
			<div class="p_maytinh">
				<h2>Xu hướng 2024</h2>
				<h1>Macbook</h1>
			</div>
		</div>
	</div>
									  <%-- ---------Sản phẩm bán chạy---- --%>
		<h1 class="h1">Sản phẩm bán chạy</h1>
		<div class="sanpham">
			<asp:ListView ID="sanphambanchay" runat="server">
				<ItemTemplate>
					<div class="sanphambanchay">
					<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
						<img id="anh1" width="200" height="80" src="<%# Eval("Images") %>" title="Khoa dz">
						<div class="sanphambanchay_gia" id="sanpham1">
							<strong id="ten1"><%# Eval("Name") %></strong>
							<p id="gia1">Giá: <%# Eval("Price", "{0:N0}") %> đồng</p>	
						</div>
					</a>
					&nbsp;</div>
				</ItemTemplate>
			</asp:ListView>
		</div>
		<div class="maytinh_1">
		<div class="left_maytinh1">
			<div class="p_maytinh1">
				<h1>Công nghệ mới,thời đại mới</h1>
				<h3>Phát triển công nghệ tiên tiến vượt bậc...</h3>
			</div>
		</div>
		<div class="right_maytinh1">
			<div class="p_maytinh1">
				<h1>ASUS ROG TRIG 17</h1>
				<h3>Đa dạng về phong cách, kiểu dáng, màu sắc, kích cỡ…</h3>
			</div>
		</div>
	</div>
									<%-- ---------Sản phẩm phổ biến---- --%>
		<div class="luachonsanpham2">
		<ul>
			<li><a href="#"><h1>Sản phẩm phổ biến</h1></a></li>	
		</ul>
		</div>
			<div class="sanpham2">
				<asp:ListView ID="sanphamphobien" runat="server">
				<ItemTemplate>
				<div class="sanphamphobien">
					<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
						<img id="anh2" width="200" height="80" src="<%# Eval("Images") %>" title="Máy tính">
						<div class="sanphamphobien_gia">
							<strong><%# Eval("Name") %></strong>
							<p>Giá:<%# Eval("Price", "{0:N0}") %> đồng</p>
						</div>
					</a>
				&nbsp;</div>
			    </ItemTemplate>
				</asp:ListView>
		    </div>
									<%-- ------------------TIN TỨC--------------- --%>
		<div class="tintucmaytinh">
		<div class="luachontintuc">
		<ul>
			<li><a href="#"><h1>Tin tức phổ biến</h1></a></li>	
		</ul>
		</div>
		<div class="tintuc">
			<div class="tintuc_1">
				<a href="#">
					<img src="img/tintuc1.jpg" title="Máy tính">
					<h5>Khắc phục máy tính bị treo nhưng chuột vẫn chạy siêu dễ</h5>
					<p>Đối với một số dân lập trình,đây là lỗi ko nên bỏ qua ...</p>	
			</div>
		</div>
		<div class="tintuc">
			<div class="tintuc_1">
				<a href="#">
					<img src="img/tintuc2.jpg" title="Máy tính">
					<h5>Những sai lầm cần tránh khi chọn máy tính xách tay mới</h5>
					<p>Đừng để sự lựa chọn máy tính xách tay trở thành nỗi lo...</p>
				</a>	
			</div>
		</div>
		<div class="tintuc">
			<div class="tintuc_1">
				<a href="#">
					<img src="img/tintuc3.jpg" title="Máy tính">
					<h5>10 thương hiệu máy tính cao cấp hàng đầu mọi quý ông đều quan tâm, Rolex xếp hạng số 3...</h5>
					<p>Nguồn gốc của Acer bắt đầu từ Đài Loan vào năm 1976, với tên gọi ban đầu là Multitech. , ...</p>
				</a>	
			</div>
		</div>
	</div>
										 <%---------- Footer---- --%>
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

		<script>
   //         var i = 1;
   //         function chuyenhinh() {
   //             var hinh = ["img/slide3.jpg", "img/slide2.jpg", "img/slide1.jpg", "img/slide4.jpg"];
   //             document.getElementById('img').src = hinh[i];
   //             i++;
   //             if (i > 3) {
   //                 i = 0;
   //             }
   //             setTimeout(chuyenhinh, 3 * 1000);
   //         }
   //         chuyenhinh()
   //         function responsive() {
   //             var x = document.getElementById("header-bot");
   //             if (x.className === "header_bot") {
   //                 x.className += "responsive";
   //             }
   //             else {
   //                 x.className = "header_bot";
   //             }
			//}

            let index = 0
            const rightbtn = document.querySelector(' .fa-chevron-right');
            const leftbtn = document.querySelector(' .fa-chevron-left');
            const imgNumber = document.querySelectorAll('.slider_content_left_top img')
            rightbtn.addEventListener("click", function () {
                index = index + 1
                if (index > imgNumber.length - 1) {
                    index = 0
                }
                document.querySelector(".slider_content_left_top").style.right = index * 100 + "%"
            })
            leftbtn.addEventListener("click", function () {
                index = index - 1
                if (index <= 0) {
                    index = imgNumber.length - 1
                }
                document.querySelector(".slider_content_left_top").style.right = index * 100 + "%"
            })

            //----------------silder 1---------------
            const imgNumberLi = document.querySelectorAll('.slider_content_left_bottom li')
            // console.log(imageActive)
            imgNumberLi.forEach(function (image, index) {
                image.addEventListener("click", function () {
                    removeactive()
                    document.querySelector(".slider_content_left_top").style.right = index * 100 + "%"
                    image.classList.add("active")
                })
            })

            function removeactive() {
                let imageActive = document.querySelector('.active')
                imageActive.classList.remove("active")
            }
            //========= slider 2=========
            function imgAuto() {
                index = index + 1
                if (index > imgNumber.length - 1) {
                    index = 0
                }
                removeactive()
                document.querySelector(".slider_content_left_top").style.right = index * 100 + "%"
                imgNumberLi[index].classList.add("active")
            }
            setInterval(imgAuto, 2000)
        </script>
</body>
</html>
