<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Web_TrangChu.aspx.cs" Inherits="Web_BanHangg.Web_TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div>
        <asp:Repeater ID="rpLoaiSanPham" runat="server" OnItemDataBound="rpLoaiSanPham_ItemDataBound">
            <ItemTemplate>
                <div>
                    <%#Eval("loaisanpham_ten")%>
                </div>
                <div>
                    <asp:Repeater ID="rpSanPham" runat="server">
                        <ItemTemplate>
                            <a href='<%# Eval("sanpham_id", "Web_ChiTiet.aspx?sanpham_id={0}") %>'>
                                <img style="width: 50px; height: 50px;" src='<%# Eval("sanpham_hinhanh") %>' alt='<%# Eval("sanpham_ten") %>' />
                            </a>
                            <%# Eval("sanpham_ten") %>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
