<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hienthithongtin.aspx.cs" Inherits="Webbanmaytinh.Hienthithongtin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông tin người dùng</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <h2>Thông tin người dùng</h2>
            <div>
                <p>Họ tên: <span id="lblFullname" runat="server"></span></p>
                <p>Ngày sinh: <span id="lblBirthdate" runat="server"></span></p>
                <p>Giới tính: <span id="lblGender" runat="server"></span></p>
                <p>Lớp: <span id="lblClass" runat="server"></span></p>
            </div>
        </div>
    </form>
</body>
</html>
