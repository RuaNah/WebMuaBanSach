<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="PageChiTiet.aspx.cs" Inherits="PageChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 99%;
        }
        .auto-style2 {
            width: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:datalist ID="DataCTSP" runat="server" OnItemCommand="DataListCTSP_ItemCommand">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td rowspan="5"><asp:Image runat="server" ImageUrl='<%#Eval("DuongDan") %>' Height="200px"></asp:Image></td>
                    <td>Tên sách</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("TENSH") %>'></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>Năm xuất bản</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("NAMXB") %>'></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>Số lượng</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("SOLUONG") %>'></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>Đơn giá bán</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("DonGiaBan") %>'></asp:Label>
                    </td>
                   <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Thêm vào giỏ" CommandArgument='<%# Eval("MASH") %>' CommandName="chonmua" />
                        
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-size:xx-large">Mô tả:</td>     
                </tr>
                
            </table>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("MoTa") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:datalist>
</asp:Content>

