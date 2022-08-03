using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GioHang
/// </summary>
public class GioHang
{
    //public DataTable items;
    private string ms;

    public string Ms
    {
        get { return ms; }
        set { ms = value; }
    }
    private string tenSach;

    public string TenSach
    {
        get { return tenSach; }
        set { tenSach = value; }
    }
    private int gia;

    public int Gia
    {
        get { return gia; }
        set { gia = value; }
    }
    private int soLuong;

    public int SoLuong
    {
        get { return soLuong; }
        set { soLuong = value; }
    }
    private int thanhTien;

    public int ThanhTien
    {
        get { return soLuong * gia; }
    } 
	public GioHang()
	{
		//
		// TODO: Add constructor logic here
		//
        //items = new DataTable();
	}
    //public void createItem()
    //{
    //    items.Columns.Add("MASH");
    //    items.Columns.Add("TENSH");
    //    items.Columns.Add("DuongDan");
    //    items.Columns.Add("Gia");
    //    items.Columns.Add("SoLuong");
    //}
    //public void add(string mash, string tensh, string duongdan, double gia,int soluong)
    //{
    //    bool flag = false;
    //    foreach (DataRow datarow in items.Rows)
    //    {
    //        if (datarow["MASH"].ToString() == mash)
    //        {
    //            datarow["SoLuong"] = int.Parse(datarow["SoLuong"].ToString())+soluong;
    //        }
    //    }
    //    if (!flag)
    //    {
    //        DataRow newRow = items.NewRow();
    //        newRow["MASH"] = mash;
    //        newRow["TENSH"] = tensh;
    //        newRow["DuongDang"] = duongdan;
    //        newRow["Gia"] = gia;
    //        newRow["SoLuong"] = soluong;

    //        items.Rows.Add(newRow);
    //    }
    //}
    //public double TongTien()
    //{
    //    double sum = 0;
    //    foreach (DataRow dataRow in items.Rows)
    //    {
    //        sum += double.Parse(dataRow["Gia"].ToString()) * int.Parse(dataRow["SoLuong"].ToString()); 
    //    }
    //    return sum;
    //}
}