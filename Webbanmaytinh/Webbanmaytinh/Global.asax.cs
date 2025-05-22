using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Webbanmaytinh
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

            //tk mac dinh
            Application["Users"] = new List<Nguoidung>();
            List<Nguoidung> Users = (List<Nguoidung>)Application["Users"];
            Users.Add(new Nguoidung("khoatn2003", "khoadz@gmail.com", "123", "123"));

            //Application["sogiohang"] = 0; // Khởi tạo biến "sogiohang" với giá trị 0
            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = new List<Product>();
            //san pham ban chay
            ProductList.Add(new Product() { Id = "1", Images = "../img/Acer/item1.jpg", Name = "Acer Nitro", Price = 25000000m, Detail = "Máy tính Acer-Nitro-1381L-9AVDF với kiểu dáng thời trang dành cho nam, cấu hình cao, chơi game mượt" });
            ProductList.Add(new Product() { Id = "2", Images = "../img/Acer/item2.jpg", Name = "Acer Nitro", Price = 25000000m, Detail = "Máy tính Acer-Nitro-1381L-9AVDF với kiểu dáng thời trang dành cho nam, cấu hình cao, chơi game mượt" });
            ProductList.Add(new Product() { Id = "3", Images = "../img/Macbook/macbook1.jpg", Name = "Macbook", Price = 25000000m, Detail = "Macbook đẹp, sang " });
            ProductList.Add(new Product() { Id = "4", Images = "../img/Macbook/macbook1.jpg", Name = "Macbook", Price = 25000000m, Detail = "Macbook đẹp, sang " });
            ProductList.Add(new Product() { Id = "5", Images = "../img/Dell/dell.jpg", Name = "Dell", Price = 25000000m, Detail = "Dell đẹp, sang " });
            // sản phẩm phổ biến
            ProductList.Add(new Product() { Id = "6", Images = "../img/HP,lenovo/hp.jpg", Name = "HP", Price = 25000000m, Detail = "HP đẹp, sang " });
            ProductList.Add(new Product() { Id = "7", Images = "../img/HP,lenovo/lenovo.jpg", Name = "Lenovo", Price = 26000000m, Detail = "Lenovo đẹp, sang " });
            ProductList.Add(new Product() { Id = "8", Images = "../img/Macbook/macbook1.jpg", Name = "Macbook", Price = 17000000m, Detail = "Macbook đẹp, sang " });
            ProductList.Add(new Product() { Id = "9", Images = "../img/Acer/item4.jpg", Name = "Acer", Price = 18000000m, Detail = "Acer đẹp, sang " });

            Application["ProductList"] = ProductList;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            /**Session["product"] = new List<Product>();**/
            Session["login"] = 0;
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}