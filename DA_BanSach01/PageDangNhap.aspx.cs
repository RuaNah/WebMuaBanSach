using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class PageDangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangnhap_Click(object sender, EventArgs e)
    {
        string tenDN = txtTendnlogin.Text;
        string matKhau = txtMatkhaulogin.Text;

        String conStr = "Data source = DESKTOP-9P73NMB;Initial Catalog = QL_BS;User ID=sa;Password=123";
        using (SqlConnection con = new SqlConnection(conStr))
        {
            
            String cmdStr = "SELECT COUNT(*) FROM taikhoan WHERE TENDN = '" + tenDN + "' AND MATKHAU = '" + matKhau + "' AND QUYEN = 0";
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            con.Open();
            int kt = (int)cmd.ExecuteScalar();
            if (kt == 1)
            {
                Session["tenDN"] = tenDN;
                Response.Redirect("~/PageHomeLogined.aspx");
            }
            else
            {
                cmdStr = "SELECT COUNT(*) FROM TAIKHOAN WHERE TENDN = '" + tenDN + "' AND MATKHAU = '" + matKhau + "' AND QUYEN = 1";
                cmd = new SqlCommand(cmdStr, con);
                int check = (int)cmd.ExecuteScalar();
                if (check == 1)
                {
                    Response.Redirect("~/PageQuanLy.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Tên đăng nhập hoặc mật khẩu không chính xác!')</script>");
                }
            }
        }
    }
}