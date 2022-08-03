using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String conStr = "Data source =DESKTOP-9P73NMB;Initial Catalog = QL_BS;User ID=sa;Password=123";
        using (SqlConnection con = new SqlConnection(conStr))
        {
            String cmdStr = "SELECT * FROM THELOAI";
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            con.Open();
            DataTheLoai.DataSource = cmd.ExecuteReader();
            DataTheLoai.DataBind();
            con.Close();
        }
    }
}
