<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GameChinhTa.aspx.cs" Inherits="Web_BanHangg.GameChinhTa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Game Chính Tả</title>
    <style>
        a:active {
            color:black;
        }
        a:visited {
            color:black;
        }
        a:hover {
            color:lightblue;
        }
        /* Lớp CSS cho từ đã chọn */
        .selected {
            color: lightblue !important; /* Màu xanh lá cây khi được chọn */
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
            margin-top: 6px;
            margin-bottom: 30px;
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
            margin-top: 60px;
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
        .container {
            position: relative;
            background-size: cover;
            padding: 20px;
            border: 2px solid black;
            width: 50%;
            /*margin: 0 auto;*/
        }
        .question-count {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 18px;
            font-weight: bold;
            color: red;
        }
    </style>
   <script>
       function myChinhTa(word, element) {
            // Lấy hidden field lưu các từ đã chọn
            var txtLoiSai = document.getElementById('<%= txtLoiSai.ClientID %>');

            // Kiểm tra nếu từ đã được chọn (có trong hidden field)
            if (txtLoiSai.value.includes(word)) {
                // Nếu từ đã được chọn, bỏ từ đó ra khỏi danh sách
                var selectedWords = txtLoiSai.value.split(',');
                var index = selectedWords.indexOf(word);
                if (index > -1) {
                    selectedWords.splice(index, 1); // Loại bỏ từ khỏi mảng
                }

                // Cập nhật lại hidden field sau khi bỏ từ
                txtLoiSai.value = selectedWords.join(',');

                // Đổi màu từ về đen (chưa chọn)
                element.style.color = "black";
            } else {
                // Nếu từ chưa được chọn, thêm từ vào danh sách
                txtLoiSai.value += word + ",";

                // Đổi màu từ đã chọn sang xanh lá cây
                element.style.color = "blue";
            }
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
            <div class="question-count">
                <asp:Label ID="lblQuestionCount" runat="server" CssClass="lblQuestionCount"></asp:Label>
            </div>
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
