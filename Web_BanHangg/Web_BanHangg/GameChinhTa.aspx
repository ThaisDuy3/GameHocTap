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
        body{
            background-image: url('images/background-letter.png');
            background-size: cover;
        }
        .container {
            font-family: 'Comic Sans MS', cursive, sans-serif;
            width: 50%;
            margin: 100px auto;
            border: 2px solid black;
            padding: 20px;
            text-align: center;
            background-color: #fff6a4;
        }
        .container h1{
             color: red;
            font-size: 32px;
        }
        .word-container {
            display: flex;
            justify-content: center; 
            align-items: center; 
            padding: 10px;
            border: 1px solid black;
            font-size: 24px; 
            height: 50px; 
            font-weight: bold; 
        }
        .btnKiemTra {
            font-family: 'Comic Sans MS', cursive, sans-serif;
            margin: 10px 0;
            padding: 10px 20px;
            border-radius: 25px; 
            border: 2px solid black;
            background-color: #4CAF50; 
            color: white; 
            cursor: pointer; 
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.3); 
            font-size: 16px;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        .btnKiemTra:hover {
            background-color: #45a049;
            box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.4); 
        }
        .image-container img{
            max-width: 100%;
            height: 150px;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .lblThongBao {
            padding: 15px;
            margin-top: 10px;
            margin-bottom: 10px;
            background-color: #f0f8ff; 
            border-left: 5px solid #4CAF50;
            border-radius: 8px; 
            color: #333; 
            font-size: 16px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); 
            opacity: 0; 
            visibility: hidden; 
            transition: opacity 0.3s ease, visibility 0.3s ease; 
        }
        .lblThongBao.show {
            opacity: 1;
            visibility: visible;
        }
        .lblThongBao.hide {
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s ease, visibility 0.3s ease;
        }
        .lblThongBao.error {
            background-color: #ffdddd;
            border-left: 5px solid #f44336; 
            color: #d8000c; 
        }
        .lblThongBao.success {
            background-color: #ddffdd;
            border-left: 5px solid #4CAF50;
            color: #4CAF50;
        }
        /*.lblThongBao {
            position: relative;
            top: -20px;
            opacity: 0;
            transition: all 0.5s ease;
        }*/
        .lblThongBao.show {
            top: 0;
            opacity: 1;
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

       function showNotification() {
            var notification = document.querySelector('.lblThongBao');
            notification.classList.remove('hide');
            notification.classList.add('show');
        }
        // Sau khi nhấn nút kiểm tra, gọi hàm này để hiện thông báo
        document.getElementById('<%= btnKiemTra.ClientID %>').addEventListener('click', function() {
            showNotification();
       });

       function showNotification() {
            var notification = document.querySelector('.lblThongBao');
            notification.classList.add('show');
       }
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Tìm Lỗi Chính Tả</h1>
            <div class="image-container">
                <img src="images/chinh-ta.jpg" alt="Your Image" />
            </div>
            <div class="word-container">
                <asp:Label ID="lblNoiDung" runat="server"></asp:Label>
            </div>
            <br />
            <!-- Textbox ẩn để lưu các từ đã chọn -->
            <input type="hidden" id="txtLoiSai" runat="server" />
            <asp:Button ID="btnKiemTra" runat="server" Text="Kiểm Tra" CssClass="btnKiemTra" OnClick="btnKiemTra_Click" />
            <br />
            <asp:Label ID="lblThongBao" runat="server" CssClass="lblThongBao hide"></asp:Label>
        </div>
    </form>
</body>
</html>
