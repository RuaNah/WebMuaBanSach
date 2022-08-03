<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PageHoaDon.aspx.cs" Inherits="PageHoaDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <br />
        <h2 style="color: blue"><b>Hóa Đơn</b></h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MAHD" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="MAHD" HeaderText="MAHD" InsertVisible="False" ReadOnly="True" SortExpression="MAHD" />
                <asp:BoundField DataField="NGAYDAT" HeaderText="NGAYDAT" SortExpression="NGAYDAT" />
                <asp:BoundField DataField="TENDN" HeaderText="TENDN" SortExpression="TENDN" />
                <asp:BoundField DataField="THANHTIEN" HeaderText="THANHTIEN" SortExpression="THANHTIEN" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_BSConnectionString3 %>" SelectCommand="SELECT * FROM [HOADON]"></asp:SqlDataSource>
        <br /><br /><br />
        <h2 style="color: blue"><b>Chi tiết hóa đơn</b></h2>
    </center>
</asp:Content>

