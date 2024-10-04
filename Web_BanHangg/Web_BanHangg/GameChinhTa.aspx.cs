using System;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_BanHangg
{
    public partial class GameChinhTa : System.Web.UI.Page
    {
        dbcsdlDataContext db = new dbcsdlDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Lấy câu chứa lỗi chính tả từ cơ sở dữ liệu
                var cauChinhTa = (from ct in db.tbGameChinhTas
                                  select ct).FirstOrDefault();

                if (cauChinhTa != null)
                {
                    // Lấy nội dung câu sai chính tả
                    string noidung = cauChinhTa.gamechinhta_noidung;
                    string[] words = noidung.Split(' '); // Tách thành từng từ

                    // Thêm từng từ vào nội dung với thẻ <a> để người dùng click
                    foreach (var word in words)
                    {
                        lblNoiDung.Text += $"<a href='#' onclick=\"myChinhTa('{word}', this)\">{word}</a> ";
                    }
                }
            }
        }

        protected void btnKiemTra_Click(object sender, EventArgs e)
        {
            // Lấy câu chính tả từ cơ sở dữ liệu
            var cauChinhTa = (from ct in db.tbGameChinhTas
                              select ct).FirstOrDefault();

            if (cauChinhTa != null)
            {
                // Lấy các từ sai và đúng từ cơ sở dữ liệu
                string[] dapAnSai = cauChinhTa.gamechinhta_dapansai.Split(',');
                string[] dapAnDung = cauChinhTa.gamechinhta_dapandung.Split(',');

                // Lấy các từ người dùng đã chọn từ hidden field
                string userInput = txtLoiSai.Value;  // Các từ mà người dùng đã chọn
                string[] userSelectedWords = userInput.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

                StringBuilder resultHtml = new StringBuilder();
                string[] originalWords = cauChinhTa.gamechinhta_noidung.Split(' ');

                bool allCorrect = true;  // Kiểm tra xem tất cả các từ người dùng chọn có đúng không

                // Kiểm tra và hiển thị màu cho từng từ
                for (int i = 0; i < originalWords.Length; i++)
                {
                    string word = originalWords[i];

                    if (userSelectedWords.Contains(word) && dapAnSai.Contains(word))
                    {
                        // Nếu từ người dùng chọn là sai, hiện màu xanh lá cây
                        resultHtml.Append($"<span style='color:green'>{word}</span> ");
                    }
                    else if (userSelectedWords.Contains(word) && !dapAnSai.Contains(word))
                    {
                        // Nếu từ người dùng chọn không khớp đáp án sai, hiện màu đỏ
                        resultHtml.Append($"<span style='color:red'>{word}</span> ");
                        allCorrect = false;  // Có từ không đúng
                    }
                    else
                    {
                        // Nếu từ chưa chọn hoặc không sai, giữ nguyên
                        resultHtml.Append($"{word} ");
                    }
                }

                // Hiển thị kết quả kiểm tra lên label
                lblNoiDung.Text = resultHtml.ToString();

                // Hiển thị kết quả đánh giá
                if (allCorrect)
                {
                    lblThongBao.Text = "Kết quả đã đúng! Đáp án đúng là: " + string.Join(", ", dapAnDung) ;
                }
                else
                {
                    lblThongBao.Text = "Kết quả sai! Đáp án đúng là: " + string.Join(", ", dapAnDung);
                }
            }
        }
    }
}
