using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Web_BanHangg
{
    public partial class game_SapXep : System.Web.UI.Page
    {
        dbcsdlDataContext db = new dbcsdlDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCauHoi.Value = (from tn in db.tbGameSapXepCauThanhNgus select tn).FirstOrDefault().cauthanhngu_dapan;
            string suf = ShuffleWordsFunc(txtCauHoi.Value);
            txtXaoTron.Value = suf;
        }
        private string ShuffleWordsFunc(string input)
        {
            // Tách chuỗi thành các từ bằng khoảng trắng
            string[] words = input.Split(' ');

            // Sử dụng LINQ và Random để xáo trộn các từ
            Random rng = new Random();
            return string.Join(" /", words.OrderBy(w => rng.Next()).ToArray());
        }

        protected void btnKiemTra_Click(object sender, EventArgs e)
        {
            var checkKetQua = (from kq in db.tbGameSapXepCauThanhNgus
                               where kq.cauthanhngu_dapan == txtKetQua.Value
                               select kq);
            if(checkKetQua.Count()>0)
            {
                lblDapAn.Text = "Kết quả đã đúng";
                lblDapAn.ForeColor = Color.Green;
            }
            else
            {
                lblDapAn.Text = "Kết quả sai, nhập lại";
                lblDapAn.ForeColor = Color.Red;
            }

        }
    }
}