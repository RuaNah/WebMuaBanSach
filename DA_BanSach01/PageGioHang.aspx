<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="PageGioHang.aspx.cs" Inherits="PageGioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="text-align:center;color:red">Thông tin giỏ hàng</h3>
    <center>
    <asp:GridView ID="grCart" runat="server" AutoGenerateColumns="False" ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_CancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField HeaderText="Mã sách" DataField="Ms" ReadOnly="True" FooterText="MASH" />
            <asp:BoundField HeaderText="Tên sách" DataField="TenSach" ReadOnly="True" FooterText="TENSH" />
            <asp:BoundField HeaderText="Đơn giá" DataField="Gia" ReadOnly="True" FooterText="DONGIA" />
            <asp:BoundField HeaderText="Số lượng" DataField="SoLuong" FooterText="SL" />
            <asp:BoundField HeaderText="Thành tiền" DataField="ThanhTien" ReadOnly="True" FooterText="THANHTIEN" />
            <asp:CommandField ShowEditButton="True"/>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        <br />
        <asp:Button ID="btTiepTuc" runat="server" Text="Mua tiếp" BackColor="Aqua" Height="35px" OnClick="btTiepTuc_Click" Width="100px"></asp:Button>
        <asp:Button ID="btDatHang" runat="server" Text="Đặt hàng" OnClick="btDatHang_Click" BackColor="Aqua" Height="35px" Width="100px"></asp:Button>
        </center>
</asp:Content>

