using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_BanHangg
{
    public partial class ChiTietTinTuc : System.Web.UI.Page
    {
        dbcsdlDataContext db = new dbcsdlDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["tintuc_id"]);
            var getData = from tt in db.tbTinTucs
                          where tt.tintuc_id == id
                          select tt;
            rpChiTietTinTuc.DataSource = getData;
            rpChiTietTinTuc.DataBind();


            var loaiTinTucs = from ltt in db.tbLoaiTinTucs select ltt;
            rpLoaiTinTuc.DataSource = loaiTinTucs.ToList();
            rpLoaiTinTuc.DataBind();
        }
    }
}