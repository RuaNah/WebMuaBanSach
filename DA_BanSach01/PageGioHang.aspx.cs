using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
public partial class PageGioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            hienThi();
        }        
    }
    private void hienThi()
    {
        grCart.DataSource = Session["GioHang"];
        grCart.DataBind();


        int soLuong = 0;
        ArrayList gioCu = (ArrayList)Session["GioHang"];
        for (int i = 0; i < gioCu.Count; i++)
        {
            GioHang hang = (GioHang)gioCu[i];
            soLuong = soLuong + hang.SoLuong;
        }

        if (grCart.Rows.Count > 0)
        {
            grCart.FooterRow.Cells[3].Text = "Tổng tiền : ";
            grCart.FooterRow.Cells[4].Text = tongTien().ToString();
        }
    }

    int tongTien()
    {
        int tien = 0;
        ArrayList gioHang = (ArrayList)Session["GioHang"];
        for (int i = 0; i < gioHang.Count; i++)
        {
            GioHang gio = (GioHang)gioHang[i];
            tien = tien + gio.ThanhTien;
        }
        return tien;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ArrayList gioCu = (ArrayList)Session["GioHang"];
        GioHang hang = (GioHang)gioCu[e.RowIndex];
        gioCu.Remove(hang);
        Session["GioHang"] = gioCu;
        Session["SoTien"] = tongTien();
        hienThi();
        Response.Redirect(Request.RawUrl);
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grCart.EditIndex = e.NewEditIndex;
        hienThi();
    }
    protected void GridView1_CancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grCart.EditIndex = -1;
        hienThi();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        ArrayList gioCu = (ArrayList)Session["GioHang"];
        GioHang hang = (GioHang)gioCu[e.RowIndex];
        TextBox txtSL = (TextBox)grCart.Rows[e.RowIndex].Cells[3].Controls[0];
        hang.SoLuong = int.Parse(txtSL.Text);
        Session["GioHang"] = gioCu;

        Session["SoTien"] = tongTien();
        grCart.EditIndex = -1;
        hienThi();
    }
    protected void btDatHang_Click(object sender, EventArgs e)
    {

        string tenDN = "";

        try
        {
            tenDN = Session["tenDN"].ToString();
        }
        catch (Exception)
        {

            Response.Redirect("~/PageDangNhap.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Vui lòng đăng nhập trước khi bắt đầu đặt hàng!')</script>");
        }

        String conStr = "Data source = DESKTOP-MN357EG\\SQLEXPRESS;Initial Catalog = QL_BS;User ID=sa;Password=123";
        SqlConnection con = new SqlConnection(conStr);
        con.Open();
        string cmdStr = "INSERT INTO HOADON VALUES(GETDATE()," + "'" + tenDN + "'," + tongTien().ToString() + ")";
        SqlCommand cmd = new SqlCommand(cmdStr, con);
        cmd.ExecuteNonQuery();

        string cmdStrHD = "SELECT COUNT(*) FROM HOADON";
        SqlCommand cmdHD = new SqlCommand(cmdStrHD, con);
        int maHD = (int)cmdHD.ExecuteScalar();

        ArrayList gioCu = (ArrayList)Session["GioHang"];
        for (int i = 0; i < gioCu.Count; i++)
        {
            GioHang gh = (GioHang)gioCu[i];
            
            cmdStr = "INSERT INTO CHITIETHD VALUES("+maHD+",'"+gh.Ms+"',"+gh.SoLuong+")";
            cmd = new SqlCommand(cmdStr, con);
            cmd.ExecuteNonQuery();
        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Đặt hàng thành công!')</script>");

        Session["SoTien"] = 0;
        Session["GioHang"] = new ArrayList();
        
    }
    protected void btTiepTuc_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/PageHomeLogined.aspx");
    }

    protected void grCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grCart.EditIndex = -1;
        hienThi();
    }
}