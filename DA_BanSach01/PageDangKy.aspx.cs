using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class PageDangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        string tenDN = txtTendn.Text;
        string matKhau = txtMatkhau.Text;
        string hoTen = txtHoten.Text;
        string email = txtEmail.Text;
        string soDT = txtSdt.Text;
        string diaChi = txtDiachi.Text;
        String conStr = "Data source = DESKTOP-9P73NMB;Initial Catalog=QL_BS;User ID=sa;Password=123";
        using (SqlConnection con = new SqlConnection(conStr))
        {
            String cmdStr = "SELECT COUNT(*) FROM TAIKHOAN WHERE TENDN = '" + tenDN + "'";
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            con.Open();
            int kt = (int)cmd.ExecuteScalar();
            if (kt == 1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Đã tồn tại tên đăng nhập này!')</script>");
            }
            else
            {
                cmdStr = "INSERT INTO taikhoan VALUES('" + tenDN + "','" + matKhau + "',N'" + hoTen + "','" + email + "','" + soDT + "',N'" + diaChi + "',0)";
                SqlCommand cmd2 = new SqlCommand(cmdStr, con);
                int kq = cmd2.ExecuteNonQuery();
                if (kq == 1)
                {
                    txtTendn.Text = "";
                    txtMatkhau.Text = "";
                    txtHoten.Text = "";
                    txtEmail.Text = "";
                    txtSdt.Text = "";
                    txtDiachi.Text = "";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Đăng ký thành công!')</script>");
                }
            }
            con.Close();
        }
    }
}