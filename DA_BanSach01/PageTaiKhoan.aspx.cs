using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class PageTaiKhoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string tenDN = Session["tenDN"].ToString();
            String conStr = "Data source = DESKTOP-9P73NMB;Initial Catalog = QL_BS;User ID=sa;Password=123";
            using (SqlConnection con = new SqlConnection(conStr))
            {
                String cmdStr = "SELECT * FROM taikhoan WHERE TENDN='" + tenDN + "'";
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                formThongTin.DataSource = cmd.ExecuteReader();
                formThongTin.DataBind();
                con.Close();
            }
        }
    }
}