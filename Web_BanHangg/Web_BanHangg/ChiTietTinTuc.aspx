<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ChiTietTinTuc.aspx.cs" Inherits="Web_BanHangg.ChiTietTinTuc" %>
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

        <!-- Cột bên phải - Nội dung tin tức -->
        <div class="main-content">  
    <asp:Repeater ID="rpChiTietTinTuc" runat="server">
        <ItemTemplate>
            <div class="news-detail">
                <div class="news-image">
                    <img src='<%# Eval("tintuc_hinhanh") %>' alt="Tin tức hình ảnh" />
                </div>
                <div class="news-text">
                    <h1><%# Eval("tintuc_tieude") %></h1>
                    <p><%# Eval("tintuc_noidung") %></p>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
