using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PageQuanLy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string duongDan = "~/images/" + ((FileUpload)GridView1.FooterRow.FindControl("FileUploadAnh")).FileName;
        ((FileUpload)GridView1.FooterRow.FindControl("FileUploadAnh")).SaveAs(Server.MapPath("~/images/" + ((FileUpload)GridView1.FooterRow.FindControl("FileUploadAnh")).FileName));
        
        SqlDataSource1.InsertParameters["MASH"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMASH")).Text;
        SqlDataSource1.InsertParameters["TENSH"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtTenSach")).Text;
        SqlDataSource1.InsertParameters["MATG"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMaTG")).Text;
        SqlDataSource1.InsertParameters["MATL"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMaTL")).Text;
        SqlDataSource1.InsertParameters["NAMXB"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtNAMXB")).Text;
        SqlDataSource1.InsertParameters["SOLUONG"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtSL")).Text;
        SqlDataSource1.InsertParameters["DuongDan"].DefaultValue = duongDan;
        SqlDataSource1.InsertParameters["DonGiaBan"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtGia")).Text;
        SqlDataSource1.InsertParameters["MoTa"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMoTa")).Text;


        SqlDataSource1.Insert();
    }
}