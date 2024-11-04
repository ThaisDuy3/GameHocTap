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
                                        FullName = u.taikhoan_hoten,
                                        ProfileImage = u.taikhoan_hinhanh
                                    }).FirstOrDefault();

                    if (userInfo != null)
                    {
                        lblUsername.Text = userInfo.FullName;

                        if (!string.IsNullOrEmpty(userInfo.ProfileImage))
                        {
                            imgProfile.ImageUrl = userInfo.ProfileImage;
                            //Response.Write("<script>console.log('Image URL: " + imgProfile.ImageUrl + "');</script>");
                        }
                        else
                        {
                            imgProfile.ImageUrl = "~/images/guest.jpg"; 
                        }
                    }
                    else
                    {
                        lblUsername.Text = username;
                        imgProfile.ImageUrl = "~/images/guest.jpg"; ;
                    }
                }
                else
                {
                    lblUsername.Text = "Guest";
                    imgProfile.ImageUrl = "~/images/guest.jpg"; ;
                }

                string gameId = Request.QueryString["man"];
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Xóa session
            Session.Clear();

            // Xóa cookie
            if (Request.Cookies["UserLogin"] != null)
            {
                HttpCookie userCookie = new HttpCookie("UserLogin");
                userCookie.Expires = DateTime.Now.AddDays(-1); // Đặt ngày hết hạn trong quá khứ để xóa cookie
                Response.Cookies.Add(userCookie);
            }

            // Chuyển hướng về trang đăng nhập
            Response.Redirect("Web_DangNhap.aspx");
        }

    }
}