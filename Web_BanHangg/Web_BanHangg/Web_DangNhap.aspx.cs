using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_BanHangg
{
    public partial class Web_DangNhap : System.Web.UI.Page
    {
        dbcsdlDataContext db = new dbcsdlDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserLogin"] != null)
                {
                    string username = Request.Cookies["UserLogin"]["Username"];
                    txtUsername.Text = username; // Điền tự động tên đăng nhập
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Kiểm tra tài khoản người dùng
            var user = (from u in db.tbTaiKhoans
                        where u.taikhoan_tentaikhoan == username && u.taikhoan_matkhau == password
                        select u).FirstOrDefault();

            if (user != null)
            {
                // Đăng nhập thành công, lưu cookie
                HttpCookie userCookie = new HttpCookie("UserLogin");
                userCookie["Username"] = username;
                userCookie.Expires = DateTime.Now.AddDays(365); // Cookie tồn tại 7 ngày
                Response.Cookies.Add(userCookie);

                // Chuyển hướng sang trang Game_DuoiHinhBatChu.aspx
                Response.Redirect("WebManGame.aspx");
            }
            else
            {
                // Thông báo lỗi nếu đăng nhập thất bại
                lblMessage.Text = "Tên đăng nhập hoặc mật khẩu không chính xác.";
                lblMessage.CssClass = "error";
            }
        }
    }
}