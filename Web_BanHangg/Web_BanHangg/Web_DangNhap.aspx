<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_DangNhap.aspx.cs" Inherits="Web_BanHangg.Web_DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Nhập</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #login-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px;
            padding: 20px;
        }

        h2 {
            text-align: center;
        }

        label {
            font-size: 14px;
            color: #333;
        }

        input[type="text"], input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            font-size: 14px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="login-container">
            <h2>Đăng Nhập</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>
            <div>
                <asp:Label ID="lblUsername" runat="server" Text="Tên đăng nhập:" AssociatedControlID="txtUsername"></asp:Label><br />
                <asp:TextBox ID="txtUsername" runat="server" MaxLength="50"></asp:TextBox><br />
            </div>
            <div>
                <asp:Label ID="lblPassword" runat="server" Text="Mật khẩu:" AssociatedControlID="txtPassword"></asp:Label><br />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>
