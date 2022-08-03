using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
public partial class Home : System.Web.UI.Page
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
    protected void DataFull_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "chonmua")
        {           
            ArrayList gioCu = (ArrayList)Session["GioHang"];
            Label gia = (Label)e.Item.FindControl("Label4");
            int dg = Convert.ToInt32(gia.Text);
            Session["SoTien"] = (int)Session["SoTien"] + dg;

            GioHang hangMoi = new GioHang();
            //hangMoi.Ms = int.Parse(DataListTatCaSP.DataKeys[e.Item.ItemIndex].ToString());
            hangMoi.Ms = e.CommandArgument.ToString();
            hangMoi.TenSach = ((Label)e.Item.FindControl("Label3")).Text;
            hangMoi.Gia = dg;
            hangMoi.SoLuong = 1;
            int n = ktHangTonTai(hangMoi.Ms);
            if (n == -1)
            {
                gioCu.Add(hangMoi);
            }
            else
            {
                GioHang nhapHang = (GioHang)gioCu[n];
                nhapHang.SoLuong = nhapHang.SoLuong + 1;

            }
            Session["GioHang"] = gioCu;
            Response.Redirect(Request.RawUrl);
        }
    }
    public int ktHangTonTai(string ms)
    {
        ArrayList gioCu = (ArrayList)Session["GioHang"];
        if (gioCu == null)
            return -1;
        for (int i = 0; i < gioCu.Count; i++)
        {
            GioHang gh = (GioHang)gioCu[i];
            if ( string.Compare(gh.Ms,ms) == 0 )
                return i;
        }
        return -1;
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

            DataFull.DataSource = cmd.ExecuteReader();
            DataFull.DataBind();
            con.Close();

        }
    }
}