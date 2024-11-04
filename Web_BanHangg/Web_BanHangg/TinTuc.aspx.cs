using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_BanHangg
{
    public partial class TinTuc1 : System.Web.UI.Page
    {
        //dbcsdlDataContext db = new dbcsdlDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var loaiTinTucs = from ltt in db.tbLoaiTinTucs select ltt;
            //rpLoaiTinTuc.DataSource = loaiTinTucs.ToList();
            //rpLoaiTinTuc.DataBind();

            //int loaiTinTucId = Convert.ToInt32(Request.QueryString["loaitintuc_id"]);
            //var tinTucs = from tt in db.tbTinTucs where tt.loaitintuc_id == loaiTinTucId select tt;
            //rpTinTuc.DataSource = tinTucs.ToList();
            //rpTinTuc.DataBind();
        }
    }
}