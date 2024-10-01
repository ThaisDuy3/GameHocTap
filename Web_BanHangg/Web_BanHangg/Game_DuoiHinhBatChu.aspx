<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Game_DuoiHinhBatChu.aspx.cs" Inherits="Web_BanHangg.Game_DuoiHinhBatChu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đuổi Hình Bắt Chữ</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="display: none">
                <img src="~/images/hq720.jpg" alt="hình ảnh" />
                <input type="text" id="txtDapAn" runat="server" />
            </div>
            <div>
                <asp:Image ID="imgHinhDaiDien" runat="server" />
            </div>
            <div>
                Nhập kết quả: <input type="text" id="txtKetQua" runat="server" />
                <asp:Button ID="btnKiemTra" runat="server" OnClick="btnKiemTra_Click" Text="Kiểm tra" />
            </div>
            <asp:Label ID="lblDapAn" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
