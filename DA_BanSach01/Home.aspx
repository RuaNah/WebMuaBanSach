<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .giohang
        {
            text-decoration:none;
            display:block;
            font-size:25px;
            background-color:#6cbe6d;
            color:white;
            width:130px;

        }
            .giohang:hover
            {
                color:red;
                background-color:white;
            }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="background-color:#dac976">
        <div class="row">
            <div class="col-3">
                <asp:TextBox ID="txtSearch" runat="server" TextMode="Search" placeholder="Tìm kiếm sách" ValidationGroup="search" Width="183px"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" NavidationGroup="search" OnClick="btnSearch_Click" />
            </div>
            
            <div class="col-2">
                <asp:HyperLink ID="tabGioHang" CssClass="giohang" runat="server" NavigateUrl="~/PageGioHang.aspx" ><i class="fa fa-shopping-cart" style="font-size:22px"></i>    Giỏ hàng  </asp:HyperLink>
            </div>
        </div>
    </div>
    
    
    <div class="container">
        
                    
                    <asp:DataList ID="DataFull" runat="server" RepeatColumns="4" OnItemCommand="DataFull_ItemCommand">
                     <ItemTemplate>
                         <div class="card card-product" style="width:280px;height:350px;">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<% #Eval("DuongDan") %>' Width="100px" Height="120px"></asp:Image>
                        <div class="card-body">
                            <div class="card-title">
                                <asp:Label  ID="Label3" runat="server" Text='<%#Eval("TenSH") %>'></asp:Label>
                            </div>
                            <div class="card-text">
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("DonGiaBan") %>'></asp:Label>  
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Thêm vào giỏ"  CommandArgument='<%# Eval("MASH") %>' CommandName="chonmua" />
                            <asp:Button ID="Button2" runat="server" Text="Chi Tiết" PostBackUrl='<%# "~/PageChiTiet.aspx?masach=" + Eval("MASH") %>'/>  
                            
                        </div>
                        
                        </div>

                    </ItemTemplate>
                    </asp:DataList>
                    
               
        
    </div>
</asp:Content>

