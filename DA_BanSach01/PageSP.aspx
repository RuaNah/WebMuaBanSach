<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="PageSP.aspx.cs" Inherits="PageSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        
                    
                    <asp:DataList ID="DataSP" runat="server" RepeatColumns="4" >
                     <ItemTemplate>
                         <div class="card card-product" style="width:280px;height:350px;">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<% #Eval("DuongDan") %>' Width="100px" Height="120px"></asp:Image>
                        <div class="card-body">
                            <div class="card-title">
                                <asp:Label  ID="Label3" runat="server" Text='<%#Eval("TenSH") %>'></asp:Label>
                            </div>
                            <div class="card-text">
                                <asp:Label ID="txtDonGia" runat="server" Text='<%#Eval("DonGiaBan") %>'></asp:Label>  
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Thêm vào giỏ" CommandArgument='<%# Eval("MASH") %>' CommandName="chonmua" OnClick="Button1_Click"  />
                            <asp:Button ID="Button2" runat="server" Text="Chi Tiết" PostBackUrl='<%# "~/PageChiTiet.aspx?masach="+Eval("MASH") %>'/>  
                        </div>
                        
                        </div>

                    </ItemTemplate>
                    </asp:DataList>
                    
               
        
    </div>
</asp:Content>

