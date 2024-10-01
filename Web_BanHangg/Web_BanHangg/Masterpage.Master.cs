using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_BanHangg
{
    public partial class Masterpage : System.Web.UI.MasterPage
    {
        dbcsdlDataContext db = new dbcsdlDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            rpBanner.DataSource = from b in db.tbBaners select b;
            rpBanner.DataBind();
        }
    }
}