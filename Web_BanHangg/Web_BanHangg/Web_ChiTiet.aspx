<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Web_ChiTiet.aspx.cs" Inherits="Web_BanHangg.Web_ChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div>
            <asp:Repeater ID="rpSanPHamChiTiet" runat="server">
            <ItemTemplate>
                Đây là sản phẩm : 
                <%# Eval("sanpham_ten") %>
                <img style="width: 50px; height: 50px;" src='<%# Eval("sanpham_hinhanh") %>' />
            </ItemTemplate>
        </asp:Repeater>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
