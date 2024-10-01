<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="Web_BanHangg.TinTuc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <!-- Bố cục chính -->
    <div class="container">
        <!-- Cột bên trái - Loại tin tức -->
        <div class="sidebar">
            <ul>
                <asp:Repeater ID="rpLoaiTinTuc" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href="TinTuc.aspx?loaitintuc_id=<%# Eval("loaitintuc_id") %>">
                                <%# Eval("loaitintuc_ten") %>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

       <!-- Cột bên phải - Danh sách tin tức -->
<div class="main-content">
    <asp:Repeater ID="rpTinTuc" runat="server">
    <ItemTemplate>
        <div class="news-item">
            <div class="news-content">
                <div class="news-text">
                    <h3>
                        <a href="ChiTietTinTuc.aspx?tintuc_id=<%# Eval("tintuc_id") %>">
                            <%# Eval("tintuc_tieude") %>
                        </a>
                    </h3>
                    <p><%# Eval("tintuc_noidung") %></p>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>

</div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
