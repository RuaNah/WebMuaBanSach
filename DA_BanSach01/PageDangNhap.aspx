<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PageDangNhap.aspx.cs" Inherits="PageDangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <center>
            <h1>Đăng nhập</h1>
        </center>
        <div class="row">
            <div class="col-md-4">
                Tên đăng nhập
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtTendnlogin" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Mật khẩu
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtMatkhaulogin" TextMode="Password" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5">

            </div>
            <div class="col-md-7">
                <asp:Button ID="btnDangnhap" runat="server" Text="Đăng nhập" OnClick="btnDangnhap_Click" />
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                
            </div>
            <div class="col-8">
                Quên mật khẩu?          
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PageDangKy.aspx">Đăng ký</asp:HyperLink>
            </div>
        </div>
    </div>
</asp:Content>

