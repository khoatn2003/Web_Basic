using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webbanmaytinh
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string fullname = Request.Form.Get("fullname");
                string birthdate = Request.Form.Get("birthdate");
                string gender = Request.Form.Get("gender");
                string userClass = Request.Form.Get("class");

                int dem = 0;
                if (string.IsNullOrEmpty(fullname) || !Regex.IsMatch(fullname, @"^[^\d]{5,80}$"))
                {
                    errorL.InnerHtml = "Họ tên phải từ 5 đến 80 ký tự và không chứa số.";
                    return;
                }
                if (string.IsNullOrEmpty(birthdate) || string.IsNullOrEmpty(gender) || string.IsNullOrEmpty(userClass))
                {
                    errorL.InnerHtml = "Vui lòng điền đầy đủ thông tin.";
                    return;
                }
                if (fullname != "" && birthdate != "" && gender != "" && userClass != "")
                {
                    List<Nguoidung> users = (List<Nguoidung>)Application["Users"];
                    bool userExists = users.Any(user =>
                        user.Fullname == fullname &&
                        user.Birthdate == birthdate &&
                        user.Gender == gender &&
                        user.UserClass == userClass
                    );

                    if (userExists)
                    {
                        // Thiết lập Session và chuyển hướng
                        Session["fullname"] = fullname;

                        string returnUrl = Session["ReturnUrl"] as string;
                        if (!string.IsNullOrEmpty(returnUrl))
                        {
                            Response.Redirect(returnUrl);
                        }
                        else
                        {
                            Response.Redirect("Acer.aspx"); // Chuyển đến trang mặc định
                        }
                    }
                    else
                    {
                        errorL.InnerHtml = "Không tìm thấy tài khoản phù hợp.";
                    }
                }

            }
        }
        }
   }
