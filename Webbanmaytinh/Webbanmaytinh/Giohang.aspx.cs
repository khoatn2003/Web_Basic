using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization; // Thêm namespace này để hỗ trợ định dạng số
using System.Web.Services;

namespace Webbanmaytinh
{
    public partial class Giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Lưu URL của trang hiện tại vào Session trước khi chuyển hướng đến trang đăng nhập
                Session["ReturnUrl"] = Request.Url.ToString();

                if (Session["SuccessMessage"] != null)
                {
                    string message = Session["SuccessMessage"].ToString();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{message}');", true);

                    // Xóa thông báo khỏi Session sau khi hiển thị
                    Session.Remove("SuccessMessage");
                }
            }
            if (Session["username"] != null)
            {
                int soluot = Convert.ToInt32(Application["sogiohang"]);

                login.InnerHtml = "<p class='user'>Xin chào " + Session["username"].ToString() + " | " + "</p>" +
                                  "<a href = 'Dangxuat.aspx'> Đăng xuất </a>";
                if (Request.Cookies["cart"] != null)
                {
                    List<Product> cartList = new List<Product>();
                    List<Product> productList = (List<Product>)Application["ProductList"];
                    string[] productsID = Request.Cookies["cart"].Value.Split(',');

                    foreach (string productID in productsID)
                    {
                        foreach (Product product in productList)
                        {
                            if (product.Id == productID)
                            {
                                soluot++;
                                cartList.Add(product);
                            }
                        }
                    }

                    ListViewCart.DataSource = cartList;
                    ListViewCart.DataBind();

                    // Định dạng giá sản phẩm
                    decimal productsPrice = 0;
                    foreach (Product product in cartList)
                    {
                        productsPrice += product.Price;
                    }

                    // Định dạng giá hiển thị
                    string formattedPrice = string.Format("{0:N0}", productsPrice);
                    products_price.InnerHtml = $"{formattedPrice} <span class='cart__product-price-unit'>đ</span>";

                    // Hiển thị tổng giá đơn hàng
                    decimal orderTotal = productsPrice;
                    string formattedOrderTotal = string.Format("{0:N0}", orderTotal);
                    order_total_price.InnerHtml = $"{formattedOrderTotal} <span class='cart__product-price-unit'>đ</span>";
                    // Kiểm tra nếu giỏ hàng trống, hiển thị thông báo
                    if (cartList.Count == 0)
                    {
                        emptyCartMessage.InnerHtml = "<p>Giỏ hàng của bạn đang trống.</p>";
                        emptyCartMessage.Visible = true;
                    }
                    else
                    {
                        emptyCartMessage.Visible = false;
                    }

                }
                else
                {
                    emptyCartMessage.InnerHtml = "<b>Giỏ hàng của bạn đang trống.</b>";
                    emptyCartMessage.Visible = true;
                    //Response.Redirect("Trangsanphamchitiet.aspx");
                }

            }
            else
            {
                Response.Redirect("Dangnhap.aspx");
            }
        }
        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["cart"] != null)
            {
                // Xóa cookie giỏ hàng
                HttpCookie cartCookie = new HttpCookie("cart");
                cartCookie.Expires = DateTime.Now.AddDays(-1); // Đặt ngày hết hạn để xóa cookie
                Response.Cookies.Add(cartCookie);

                // Làm rỗng ListViewCart và cập nhật tổng giá trị
                ListViewCart.DataSource = null;
                ListViewCart.DataBind();

                // Cập nhật tổng tiền về 0
                products_price.InnerHtml = "0 <span class='cart__product-price-unit'>đ</span>";
                order_total_price.InnerHtml = "0 <span class='cart__product-price-unit'>đ</span>";
                // Hiển thị thông báo thành công
                Session["SuccessMessage"] = "Thanh toán thành công! Cảm ơn quý khách hàng.";
                emptyCartMessage.InnerHtml = "<p>Giỏ hàng của bạn đang trống.</p>";
                emptyCartMessage.Visible = true;

                Response.Redirect("Giohang.aspx");

            }
            else
            {
                // Thông báo nếu giỏ hàng trống
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Không có sản phẩm nào trong giỏ hàng để thanh toán.');", true);
                emptyCartMessage.InnerHtml = "<p>Giỏ hàng của bạn đang trống.</p>";
                emptyCartMessage.Visible = true;
            }
           
        }


    }
}
