using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class PageHoaDon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String conStr = "Data Source=DESKTOP-9P73NMB;Initial Catalog=QL_Sach;User ID=sa;Password=123";
            using (SqlConnection con = new SqlConnection(conStr))
            {
                String cmdStr = "SELECT TENSACH,SL,HOTEN,DIACHI,SODT FROM HOADON HD ,CTHD CT ,SACH S,TAIKHOAN TK WHERE HD.MAHD = CT.MAHD AND CT.MASACH = S.MASACH AND HD.TENDN = TK.TENDN";
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                //GridView2.DataSource = cmd.ExecuteReader();
                //GridView2.DataBind();
                con.Close();
            }
        }
    }
}