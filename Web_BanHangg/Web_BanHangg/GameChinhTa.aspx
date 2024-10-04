<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GameChinhTa.aspx.cs" Inherits="Web_BanHangg.GameChinhTa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Game Chính Tả</title>
    <style>
        a:active {
            color:blue;
        }
        a:visited {
            color:blue;
        }
        a:hover {
            color:green;
        }
        /* Lớp CSS cho từ đã chọn */
        .selected {
            color: green !important; /* Màu xanh lá cây khi được chọn */
        }
    </style>
   <script>
       function myChinhTa(word, element) {
           // Lưu từ đã chọn vào hidden field
           var txtLoiSai = document.getElementById('<%= txtLoiSai.ClientID %>');

           // Kiểm tra nếu từ chưa được chọn thì thêm từ đó
           if (!txtLoiSai.value.includes(word)) {
               txtLoiSai.value += word + ","; // Add word to the hidden field
           }

           // Đổi màu từ đã chọn sang màu xanh lá cây
           element.style.color = "green";
       }
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNoiDung" runat="server"></asp:Label>
            <br />
            <!-- Textbox ẩn để lưu các từ đã chọn -->
            <input type="hidden" id="txtLoiSai" runat="server" />
            <asp:Button ID="btnKiemTra" runat="server" Text="Kiểm Tra" OnClick="btnKiemTra_Click" />
            <br />
            <asp:Label ID="lblThongBao" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
