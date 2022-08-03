<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="PageTaiKhoan.aspx.cs" Inherits="PageTaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <center>
        <h3>Thông tin tài khoản</h3>
        <asp:FormView ID="formThongTin" runat="server" Cellpadding="4">
        
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>Tên đăng nhập</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("tendn") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td>
                            <asp:TextBox ID="TextBox3" TextMode="Password" runat="server" Text='<%# Eval("matkhau") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Họ tên</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("hoten") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Số điện thoại</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("sodt") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("diachi") %>'></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            </asp:FormView>
             </center>

</asp:Content>

