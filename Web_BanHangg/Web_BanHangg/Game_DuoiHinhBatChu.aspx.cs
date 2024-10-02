using System;
using System.Linq;
using System.Web.UI;
using System.Drawing;


namespace Web_BanHangg
{
    public partial class Game_DuoiHinhBatChu : Page
    {
        dbcsdlDataContext db = new dbcsdlDataContext();

      
        private string dapAn; 
        private string hinhAnh; 

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             
                var cauHoi = (from ch in db.tbGameDuoiHinhBatChus select ch).FirstOrDefault();

                if (cauHoi != null)
                {
                    dapAn = cauHoi.duoihinhbatchu_dapan;
                    hinhAnh = cauHoi.duoihinhbatchu_hinhanh; 
                    imgHinhDaiDien.ImageUrl = hinhAnh; 
                }
            }
        }

        protected void btnKiemTra_Click(object sender, EventArgs e)
        {
          
            string ketQua = txtKetQua.Value.Trim().ToLower(); 
            lblDapAn.Text = ""; 

            var checkKetQua = (from ch in db.tbGameDuoiHinhBatChus
                               where ch.duoihinhbatchu_dapan.ToLower() == ketQua 
                               select ch).FirstOrDefault();

            if (checkKetQua != null)
            {
                lblDapAn.Text = "Chúc mừng! Bạn đã đoán đúng.";
                lblDapAn.ForeColor = Color.Green;
            }
            else
            {
                lblDapAn.Text = "Rất tiếc! Đáp án không chính xác.";
                lblDapAn.ForeColor = Color.Red;
            }
        }


    }
}
