using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webbanmaytinh
{
    public partial class Mac : System.Web.UI.Page
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
            List<Product> mac = new List<Product>();
            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id == "3" || id == "4" || id == "8")
                {
                    mac.Add(product);
                }
                mac1.DataSource = mac;
                mac1.DataBind();
            }
        }
    }
}