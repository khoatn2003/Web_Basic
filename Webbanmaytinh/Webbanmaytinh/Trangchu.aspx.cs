using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webbanmaytinh
{
    public partial class Trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Lưu URL của trang hiện tại vào Session trước khi chuyển hướng đến trang đăng nhập
                Session["ReturnUrl"] = Request.Url.ToString();
            }
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>Xin chào " + Session["username"].ToString() + " | " + "</p>" +
                                  "<a href = 'Dangxuat.aspx'> Đăng xuất </a>";

            }
            List<Product> ProductList = (List<Product>)Application["productList"];
            List<Product> banchay = new List<Product>();
            List<Product> phobien = new List<Product>();

            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id == "1" || id == "2" || id == "3" || id == "4" || id == "5")
                {
                    banchay.Add(product);
                }
                if (id == "6" || id == "7" || id == "8" || id == "9" || id == "10")
                {
                    phobien.Add(product);
                }
            }
            sanphambanchay.DataSource = banchay;
            sanphambanchay.DataBind();
            sanphamphobien.DataSource = phobien;
            sanphamphobien.DataBind();
        }
    }
}