using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_BanHangg
{
  
    public partial class Web_TrangChu : System.Web.UI.Page
    {
        //dbcsdlDataContext db = new dbcsdlDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //rpLoaiSanPham.DataSource = from lsp in db.tbLoaiSanPhams select lsp;
            //rpLoaiSanPham.DataBind();

        }
        //protected void rpLoaiSanPham_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    Repeater rpSanPham = e.Item.FindControl("rpSanPham") as Repeater;
        //    int lsp_id = int.Parse(DataBinder.Eval(e.Item.DataItem, "loaisanpham_id").ToString());
        //    rpSanPham.DataSource = from sp in db.tbSanPhams where sp.loaisanpham_id == lsp_id select sp;
        //    rpSanPham.DataBind();
        //}
    }
}