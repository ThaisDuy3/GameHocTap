<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Game_DuoiHinhBatChu.aspx.cs" Inherits="Web_BanHangg.Game_DuoiHinhBatChu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đuổi Hình Bắt Chữ</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #game-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px;
            padding: 20px;
            text-align: center;
        }

        #game-container h1 {
            color: #333;
            margin-bottom: 20px;
        }

        .image-container img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .input-group button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .input-group button:hover {
            background-color: #218838;
        }

        #lblDapAn {
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="game-container">
            <h1>Đuổi Hình Bắt Chữ</h1>
            <div class="image-container">
                <asp:Image ID="imgHinhDaiDien" runat="server" />
            </div>
            <div class="input-group">
                <label for="txtKetQua">Nhập kết quả:</label>
                <input type="text" id="txtKetQua" runat="server" />
            </div>
            <div class="input-group">
                <asp:Button ID="btnKiemTra" runat="server" OnClick="btnKiemTra_Click" Text="Kiểm tra" />
            </div>
            <asp:Label ID="lblDapAn" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
