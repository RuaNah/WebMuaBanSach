using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class PageHomeLogined : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String conStr = "Data source = DESKTOP-9P73NMB;Initial Catalog = QL_BS;User ID=sa;Password=123";
            using (SqlConnection con = new SqlConnection(conStr))
            {
                String cmdStr = "SELECT * FROM SACH";
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                DataFull.DataSource = cmd.ExecuteReader();
                DataFull.DataBind();
                con.Close();
            }
        }

    }
    //protected void btTimTheoGia_Click(object sender, EventArgs e)
    //{
    //    if (txtLow.Text != "" && txtHeight.Text != "")
    //    {
    //        try
    //        {
    //            float l = float.Parse(txtLow.Text);
    //            float h = float.Parse(txtHeight.Text);

    //            if (l <= h)
    //            {
    //                String conStr = "Data source = DESKTOP - MN357EG\\SQLEXPRESS;Initial Catalog = QL_Sach;Integrated Security = true";
    //                using (SqlConnection con = new SqlConnection(conStr))
    //                {
    //                    String cmdStr = "SELECT * FROM SACH WHERE GIA BETWEEN @LOW AND @HEIGHT";
    //                    SqlCommand cmd = new SqlCommand(cmdStr, con);
    //                    SqlParameter par1 = new SqlParameter("@LOW", txtLow.Text);
    //                    SqlParameter par2 = new SqlParameter("@HEIGHT", txtHeight.Text);
    //                    cmd.Parameters.Add(par1);
    //                    cmd.Parameters.Add(par2);
    //                    con.Open();
    //                    DataFull.DataSource = cmd.ExecuteReader();
    //                    DataFull.DataBind();
    //                    con.Close();
    //                }
    //            }
    //        }
    //        catch
    //        {
    //            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Nhập sai kiểu dữ liệu hoặc sai khoảng giá trị!')</script>");
    //            txtHeight.Text = "";
    //            txtLow.Text = "";
    //        }
    //    }
    //}
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        String conStr = "Data Source= DESKTOP-9P73NMB; Initial Catalog=QL_BS; Integrated Security = true";
        using (SqlConnection con = new SqlConnection(conStr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM SACH WHERE TENSH LIKE '%'+ @ts +'%'";
            cmd.Connection = con;
            con.Open();

            SqlParameter par = new SqlParameter("@ts", txtSearch.Text);
            cmd.Parameters.Add(par);

            DataFull.DataSource = cmd.ExecuteReader();
            DataFull.DataBind();
            con.Close();

        }
    }
}