using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
public partial class PageChiTiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            {
                string str = "Data Source = DESKTOP-9P73NMB; Initial Catalog = QL_BS; User ID = sa;PassWord = 123";
                SqlConnection con = new SqlConnection(str);

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM SACH where MASH = @Ma";
                cmd.Connection = con;
                con.Open();

                SqlParameter par = cmd.CreateParameter();
                par.ParameterName = "@Ma";
                par.Value = Request.QueryString["masach"].ToString();
                cmd.Parameters.Add(par);


                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);

                DataCTSP.DataSource = dt;
                DataCTSP.DataBind();
                con.Close();
        }
        //GioHang gh = new GioHang();
        ////gh.createItem();
        //Session["GioHang"] = gh;

    }
    protected void DataListCTSP_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "chonmua")
        {
            ArrayList gioCu = (ArrayList)Session["GioHang"];
            Label gia = (Label)e.Item.FindControl("Label2");
            int dg = Convert.ToInt32(gia.Text);
            Session["SoTien"] = (int)Session["SoTien"] + dg;

            GioHang hangMoi = new GioHang();
            //hangMoi.Ms = int.Parse(DataListTatCaSP.DataKeys[e.Item.ItemIndex].ToString());
            hangMoi.Ms = e.CommandArgument.ToString();
            hangMoi.TenSach = ((Label)e.Item.FindControl("Label1")).Text;
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
        for (int i = 0; i < gioCu.Count; i++)
        {
            GioHang gh = (GioHang)gioCu[i];
            if (string.Compare(gh.Ms,ms) == 0)
                return i;
        }
        return -1;
    }

}
