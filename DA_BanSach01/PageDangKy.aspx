<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PageDangKy.aspx.cs" Inherits="PageDangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <center>
            <h2>Đăng ký tài khoản</h2>
        </center>
        <div class="row">
            <div class="col-md-4">
                Tên đăng nhập
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtTendn" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtTendn" runat="server" ErrorMessage="Tên đăng nhập không được để trống!" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Mật khẩu
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtMatkhau" TextMode="Password" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Nhập lại mật khẩu
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtReMatkhau" TextMode="Password" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMatkhau" ControlToValidate="txtReMatkhau" ErrorMessage="Mật khẩu không khớp!" ForeColor="Red"></asp:CompareValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Họ và tên
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHoten" ErrorMessage="Họ tên không được để trống!" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Số điện thoại
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtSdt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSdt" ErrorMessage="Số điện thoại không được để trống!" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Email
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không đúng!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Địa chỉ
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-8">
                <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click" />
            </div>
        </div>
    </div>
</asp:Content>

