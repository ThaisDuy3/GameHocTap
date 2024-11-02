<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebManGame.aspx.cs" Inherits="Web_BanHangg.WebManGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Game Levels</title>
    <style>
        .game-header {
            width: 100%; 
            text-align: center; 
            font-size: 24px;
            color: #007BFF; 
            margin-bottom: 30px; 
            font-weight: bold; 
        }

        .game-container {
            display: flex;
            flex-wrap: nowrap; 
            justify-content: space-between; 
            padding: 20px; 
            overflow-x: auto; 
        }

        .class-block {
            width: 200px; 
            padding: 20px;
            margin: 5px; 
            background-color: #ffffff; 
            border: 2px solid #007BFF; 
            border-radius: 10px; 
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            text-align: center; 
            transition: transform 0.2s, box-shadow 0.2s; 
            height: 80px; 
            flex-shrink: 0;
        }

        .class-block h2 {
            font-size: 18px; 
            color: #333;
            margin: 5px 0; 
        }

        .class-block p {
            font-size: 14px;
            color: #666;
            margin: 5px 0; 
        }

        .class-block:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.2); 
        }

        @media (max-width: 768px) {
            .class-block {
                width: 150px; 
            }
        }

        @media (max-width: 480px) {
            .class-block {
                width: 120px; 
            }
        }

        .account-info {
            position: absolute;
            top: 20px;
            right: 20px;
            display: flex;
            align-items: center;
        }

        .account-info img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .account-info span {
            font-size: 16px;
            color: #007BFF;
            font-weight: bold;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="game-header">
            GAME
        </div>

        <!-- Account Info Section -->
        <div class="account-info">
            <asp:Image ID="imgProfile" runat="server" ImageUrl="~/images/tdd.jpg" Alt="Profile Picture" />
            <asp:Label ID="lblUsername" runat="server" Text="User"></asp:Label>
        </div>

        <!-- Game Levels Section -->
        <asp:Repeater ID="rpManGame" runat="server">
            <HeaderTemplate>
                <div class="game-container">
            </HeaderTemplate>
            <ItemTemplate>
                <a href="GameChinhTa.aspx?man=<%# Eval("mangame_man") %>" style="text-decoration: none;">
                    <div class="class-block">
                        <h2><%# Eval("khoilop_khoi") %></h2> 
                        <p><%# Eval("mangame_man") %></p>
                    </div>
                </a>
            </ItemTemplate>
            <FooterTemplate>
                </div>
            </FooterTemplate>
        </asp:Repeater>
    </form>

</body>
</html>
