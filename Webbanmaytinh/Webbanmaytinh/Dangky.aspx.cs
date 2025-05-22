using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Web.UI;

namespace Webbanmaytinh
{
    public partial class Dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string fullname = Request.Form["fullname"];
                string birthdate = Request.Form["birthdate"];
                string gender = Request.Form["gender"];
                string className = Request.Form["class"];
                List<Nguoidung> users = (List<Nguoidung>)Application["Users"] ?? new List<Nguoidung>();

                string message = ValidateRegistration(fullname, birthdate, gender, className, users);

                if (message == "Success")
                {
                    btn_error.InnerHtml = "Đăng ký thành công";
                    Nguoidung newUser = new Nguoidung(fullname, birthdate, gender, className);
                    users.Add(newUser);
                    Application["Users"] = users;
                }
                else
                {
                    btn_error.InnerHtml = message;
                }
            }
        }

        private string ValidateRegistration(string fullname, string birthdate, string gender, string className, List<Nguoidung> users)
        {
            if (string.IsNullOrWhiteSpace(fullname))
                return "Vui lòng nhập họ tên";

            if (string.IsNullOrWhiteSpace(birthdate))
                return "Vui lòng chọn ngày sinh";

            if (string.IsNullOrWhiteSpace(gender))
                return "Vui lòng chọn giới tính";

            if (string.IsNullOrWhiteSpace(className))
                return "Vui lòng nhập lớp";

            foreach (Nguoidung user in users)
            {
                if (fullname == user.Fullname)
                    return "Tên người dùng đã được sử dụng";
            }

            return "Success";
        }
    }
}
