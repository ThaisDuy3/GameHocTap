using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_BanHangg
{
	public partial class WebManGame : System.Web.UI.Page
	{

        dbcsdlDataContext db = new dbcsdlDataContext();

        protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                // Retrieve and display game levels
                var gameLevels = from g in db.tbManGames
                                 select new
                                 {
                                     khoilop_khoi = g.khoilop_khoi,
                                     mangame_man = g.mangame_man
                                 };

                rpManGame.DataSource = gameLevels.ToList();
                rpManGame.DataBind();

                if (Request.Cookies["UserLogin"] != null)
                {
                    string username = Request.Cookies["UserLogin"]["Username"];

                    var userInfo = (from u in db.tbTaiKhoans
                                    where u.taikhoan_tentaikhoan == username
                                    select new
                                    {
                                        FullName = u.taikhoan_hoten
                                    }).FirstOrDefault();

                    if (userInfo != null)
                    {
                        lblUsername.Text = userInfo.FullName;
                    }
                    else
                    {
                        lblUsername.Text = username;
                    }
                }
                else
                {
                    lblUsername.Text = "Guest"; 
                }

                if (Session["UserProfileImage"] != null)
                {
                    imgProfile.ImageUrl = Session["UserProfileImage"].ToString();
                }
                else
                {
                    imgProfile.ImageUrl = "~/images/tdd.jpg";
                }

                string gameId = Request.QueryString["man"];
            }
        }
    }
}