using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class PageSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String conStr = "Data source = DESKTOP-9P73NMB;Initial Catalog = QL_BS;User ID=sa;Password=123";
            using (SqlConnection con = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from SACH where MATL = @Ma";
                cmd.Connection = con;
                SqlParameter pa = cmd.CreateParameter();
                pa.ParameterName = "@Ma";
                pa.Value = Request.QueryString["maloai"].ToString();
                cmd.Parameters.Add(pa);
                con.Open();
                DataSP.DataSource = cmd.ExecuteReader();
                DataSP.DataBind();
                con.Close();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Đã thêm vào giỏ hàng thành công!')</script>");
    }
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

            DataSP.DataSource = cmd.ExecuteReader();
            DataSP.DataBind();
            con.Close();

        }
    }
}