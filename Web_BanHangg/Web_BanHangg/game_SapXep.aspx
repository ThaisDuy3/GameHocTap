<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="game_SapXep.aspx.cs" Inherits="Web_BanHangg.game_SapXep" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display: none">
            <input type="text" id="txtCauHoi" runat="server" />
        </div>
        <div>
            <input type="text" id="txtXaoTron" runat="server" />
        </div>
        <div>
            Nhập kết quả: <input type="text" id="txtKetQua" runat="server" />
            <asp:Button ID="btnKiemTra" runat="server" OnClick="btnKiemTra_Click" Text="Kiểm tra" />
        </div>
        <asp:Label ID="lblDapAn" runat="server"></asp:Label>
    </form>
</body>
</html>
