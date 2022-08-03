<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PageQuanLy.aspx.cs" Inherits="PageQuanLy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MASH" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" ShowFooter="true">
        <Columns>
            <asp:TemplateField HeaderText="Chỉnh sửa" ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <FooterTemplate>
                     <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" BackColor="YellowGreen"/>
                 </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MASH" SortExpression="MASH">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("MASH") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MASH") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtMaSH" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TENSH" SortExpression="TENSH">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TENSH") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENSH") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtTenSach" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MATG" SortExpression="MATG">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MATG") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("MATG") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="txtMaTG" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MATL" SortExpression="MATL">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MATL") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("MATL") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtMaTL" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NAMXB" SortExpression="NAMXB">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("NAMXB") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("NAMXB") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtNAMXB" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SOLUONG" SortExpression="SOLUONG">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("SOLUONG") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("SOLUONG") %>'></asp:Label>
                </ItemTemplate>
                  <FooterTemplate>
                    <asp:TextBox ID="txtSL" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ảnh" SortExpression="DuongDan">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DuongDan") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" Width="100%" runat="server" ImageUrl='<%# Eval("DuongDan") %>' Height="100%" />
                </ItemTemplate>
                <FooterTemplate>
                    <asp:FileUpload ID="FileUploadAnh" runat="server"  />
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DonGiaBan" SortExpression="DonGiaBan">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("DonGiaBan") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("DonGiaBan") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MoTa" SortExpression="MoTa">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("MoTa") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("MoTa") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
        </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_BSConnectionString %>" DeleteCommand="DELETE FROM [SACH] WHERE [MASH] = @MASH" InsertCommand="INSERT INTO [SACH] ([MASH], [TENSH], [MATG], [MATL], [NAMXB], [SOLUONG], [DuongDan], [DonGiaBan], [MoTa]) VALUES (@MASH, @TENSH, @MATG, @MATL, @NAMXB, @SOLUONG, @DuongDan, @DonGiaBan, @MoTa)" SelectCommand="SELECT * FROM [SACH]" UpdateCommand="UPDATE [SACH] SET [TENSH] = @TENSH, [MATG] = @MATG, [MATL] = @MATL, [NAMXB] = @NAMXB, [SOLUONG] = @SOLUONG, [DuongDan] = @DuongDan, [DonGiaBan] = @DonGiaBan, [MoTa] = @MoTa WHERE [MASH] = @MASH">
        <DeleteParameters>
            <asp:Parameter Name="MASH" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MASH" Type="String" />
            <asp:Parameter Name="TENSH" Type="String" />
            <asp:Parameter Name="MATG" Type="String" />
            <asp:Parameter Name="MATL" Type="String" />
            <asp:Parameter Name="NAMXB" Type="Int32" />
            <asp:Parameter Name="SOLUONG" Type="Int32" />
            <asp:Parameter Name="DuongDan" Type="String" />
            <asp:Parameter Name="DonGiaBan" Type="Double" />
            <asp:Parameter Name="MoTa" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENSH" Type="String" />
            <asp:Parameter Name="MATG" Type="String" />
            <asp:Parameter Name="MATL" Type="String" />
            <asp:Parameter Name="NAMXB" Type="Int32" />
            <asp:Parameter Name="SOLUONG" Type="Int32" />
            <asp:Parameter Name="DuongDan" Type="String" />
            <asp:Parameter Name="DonGiaBan" Type="Double" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="MASH" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    </asp:Content>

