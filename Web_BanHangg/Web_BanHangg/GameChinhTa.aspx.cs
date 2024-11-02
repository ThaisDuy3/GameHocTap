using System;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Collections.Generic;

namespace Web_BanHangg
{
    public partial class GameChinhTa : System.Web.UI.Page
    {
        dbcsdlDataContext db = new dbcsdlDataContext();
        int cauHienTai = 1;  // Câu hiện tại
        int tongSoCau = 3;   // Tổng số câu
        int soCauDung = 0; // Biến để theo dõi số câu đúng

        //Code đầu tiên
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        // Lấy câu chứa lỗi chính tả từ cơ sở dữ liệu
        //        var cauChinhTa = (from ct in db.tbGameChinhTas
        //                          select ct).FirstOrDefault();

        //        if (cauChinhTa != null)
        //        {
        //            // Lấy nội dung câu sai chính tả
        //            string noidung = cauChinhTa.gamechinhta_noidung;
        //            string[] words = noidung.Split(' '); // Tách thành từng từ

        //            // Thêm từng từ vào nội dung với thẻ <a> để người dùng click
        //            foreach (var word in words)
        //            {
        //                lblNoiDung.Text += $"<a href='#' onclick=\"myChinhTa('{word}', this)\">{word}</a> ";
        //            }
        //        }
        //    }
        //}

        //protected void btnKiemTra_Click(object sender, EventArgs e)
        //{
        //    // Lấy câu chính tả từ cơ sở dữ liệu
        //    var cauChinhTa = (from ct in db.tbGameChinhTas
        //                      select ct).FirstOrDefault();

        //    if (cauChinhTa != null)
        //    {
        //        // Lấy các từ sai và đúng từ cơ sở dữ liệu
        //        string[] dapAnSai = cauChinhTa.gamechinhta_dapansai.Split(',');
        //        string[] dapAnDung = cauChinhTa.gamechinhta_dapan.Split(',');

        //        // Lấy các từ người dùng đã chọn từ hidden field
        //        string userInput = txtLoiSai.Value;  // Các từ mà người dùng đã chọn
        //        string[] userSelectedWords = userInput.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

        //        StringBuilder resultHtml = new StringBuilder();
        //        string[] originalWords = cauChinhTa.gamechinhta_noidung.Split(' ');

        //        bool allCorrect = true;  // Kiểm tra xem tất cả các từ người dùng chọn có đúng không

        //        // Kiểm tra và hiển thị màu cho từng từ
        //        for (int i = 0; i < originalWords.Length; i++)
        //        {
        //            string word = originalWords[i];

        //            if (userSelectedWords.Contains(word) && dapAnSai.Contains(word))
        //            {
        //                // Nếu từ người dùng chọn là sai, hiện màu xanh lá cây
        //                resultHtml.Append($"<span style='color:green'>{word}</span> ");
        //            }
        //            else if (userSelectedWords.Contains(word) && !dapAnSai.Contains(word))
        //            {
        //                // Nếu từ người dùng chọn không khớp đáp án sai, hiện màu đỏ
        //                resultHtml.Append($"<span style='color:red'>{word}</span> ");
        //                allCorrect = false;  // Có từ không đúng
        //            }
        //            else
        //            {
        //                // Nếu từ chưa chọn hoặc không sai, giữ nguyên
        //                resultHtml.Append($"{word} ");
        //            }
        //        }

        //        // Hiển thị kết quả kiểm tra lên label
        //        lblNoiDung.Text = resultHtml.ToString();

        //        // Hiển thị kết quả đánh giá
        //        if (allCorrect)
        //        {
        //            lblThongBao.Text = "Kết quả đã đúng! Đáp án đúng là: " + string.Join(", ", dapAnDung) ;
        //            //lblThongBao.ForeColor = Color.Green;
        //            lblThongBao.CssClass = "lblThongBao show";
        //        }
        //        else
        //        {
        //            lblThongBao.Text = "Kết quả sai! Đáp án đúng là: " + string.Join(", ", dapAnDung);
        //            //lblThongBao.ForeColor = Color.Red;
        //            lblThongBao.CssClass = "lblThongBao show error";
        //        }
        //    }
        //}





        //Code 2
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Lưu trữ câu hiện tại và tổng số câu trong ViewState để theo dõi
                ViewState["soCauDung"] = 0;
                ViewState["cauHienTai"] = cauHienTai;
                ViewState["tongSoCau"] = tongSoCau;

                LoadQuestion(cauHienTai);

                // Cập nhật số câu hiển thị
                UpdateQuestionCount(cauHienTai, tongSoCau);
            }
        }

        protected void LoadQuestion(int questionNumber)
        {
            // Lấy câu tương ứng với câu hiện tại từ cơ sở dữ liệu
            var cauChinhTa = (from ct in db.tbGameChinhTas
                              where ct.gamechinhta_id == questionNumber  // Giả sử bạn có ID cho từng câu
                              select ct).FirstOrDefault();

            if (cauChinhTa != null)
            {
                string noidung = cauChinhTa.gamechinhta_noidung;
                string[] words = noidung.Split(' ');

                lblNoiDung.Text = "";  // Clear previous content

                // Tạo các từ với thẻ <a> để click
                foreach (var word in words)
                {
                    lblNoiDung.Text += $"<a href='#' onclick=\"myChinhTa('{word}', this)\">{word}</a> ";
                }
            }

            // Cập nhật nút kiểm tra hoặc hoàn thành
            UpdateButtonText();

            // Cập nhật số câu hiển thị
            UpdateQuestionCount((int)ViewState["cauHienTai"], (int)ViewState["tongSoCau"]);
        }

        protected void UpdateButtonText()
        {
            cauHienTai = (int)ViewState["cauHienTai"];
            tongSoCau = (int)ViewState["tongSoCau"];

            if (cauHienTai == tongSoCau)
            {
                btnKiemTra.Text = "Hoàn Thành";  // Đổi nút thành Hoàn Thành ở câu cuối
            }
            else
            {
                btnKiemTra.Text = "Tiếp";  // Các câu khác là Tiếp
            }
        }

        protected void btnKiemTra_Click(object sender, EventArgs e)
        {
            string userSelectedWords = txtLoiSai.Value.Trim();
            if (string.IsNullOrEmpty(userSelectedWords))
            {
                // Hiển thị thông báo lỗi yêu cầu chọn ít nhất một từ
                lblThongBao.Text = "Hoàn thành câu này trước khi sang câu khác nhé";
                lblThongBao.CssClass = "lblThongBao show error";
                return;  // Dừng lại không chuyển sang câu tiếp theo
            }

            // Gọi hàm kiểm tra chính tả
            KiemTraChinhTa();

            // Cập nhật câu tiếp theo
            cauHienTai = (int)ViewState["cauHienTai"];
            tongSoCau = (int)ViewState["tongSoCau"];

            if (cauHienTai < tongSoCau)
            {
                cauHienTai++;  // Chuyển đến câu tiếp theo
                ViewState["cauHienTai"] = cauHienTai;
                LoadQuestion(cauHienTai);

                // Cập nhật số câu hiển thị
                UpdateQuestionCount(cauHienTai, tongSoCau);
            }
            else
            {
                // Nếu là câu cuối cùng, thực hiện hoàn thành
                HoanThanhGame();
            }
        }

        protected void KiemTraChinhTa()
        {
            // Lấy câu chính tả hiện tại từ cơ sở dữ liệu
            var cauChinhTa = (from ct in db.tbGameChinhTas
                              where ct.gamechinhta_id == (int)ViewState["cauHienTai"]  // Lấy câu hiện tại
                              select ct).FirstOrDefault();

            if (cauChinhTa != null)
            {
                // Lấy các từ đáp án sai và đúng từ cơ sở dữ liệu
                string[] dapAnSai = cauChinhTa.gamechinhta_dapansai.Split(',');
                string[] dapAnDung = cauChinhTa.gamechinhta_dapan.Split(',');

                // Lấy từ người dùng chọn
                string userInput = txtLoiSai.Value;
                string[] userSelectedWords = userInput.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

                StringBuilder resultHtml = new StringBuilder();
                string[] originalWords = cauChinhTa.gamechinhta_noidung.Split(' ');

                // Đặt lại biến isCorrect cho câu mới
                bool isCorrect = true;

                // Kiểm tra các từ trong câu chính tả
                for (int i = 0; i < originalWords.Length; i++)
                {
                    string word = originalWords[i];

                    if (userSelectedWords.Contains(word) && dapAnSai.Contains(word))
                    {
                        // Nếu từ người dùng chọn là từ sai chính tả, hiện màu xanh lá cây
                        resultHtml.Append($"<span style='color:green'>{word}</span> ");
                    }
                    else if (userSelectedWords.Contains(word) && !dapAnSai.Contains(word))
                    {
                        // Nếu từ người dùng chọn không phải từ sai, hiện màu đỏ
                        resultHtml.Append($"<span style='color:red'>{word}</span> ");
                        isCorrect = false;  // Câu hiện tại có lỗi
                    }
                    else
                    {
                        // Nếu từ không phải lỗi chính tả, giữ nguyên
                        resultHtml.Append($"{word} ");
                    }
                }

                // Hiển thị lại câu hỏi với màu đúng/sai
                lblNoiDung.Text = resultHtml.ToString();

                // Hiển thị thông báo cho người dùng
                if (isCorrect)
                {
                    lblThongBao.Text = "Kết quả đúng! Đáp án đúng là: " + string.Join(", ", dapAnDung);
                    lblThongBao.CssClass = "lblThongBao show";

                    int soCauDung = (int)(ViewState["soCauDung"] ?? 0); // Lấy số câu đúng từ ViewState
                    ViewState["soCauDung"] = soCauDung + 1; // Tăng số câu đúng
                }
                else
                {
                    lblThongBao.Text = "Kết quả sai! Đáp án đúng là: " + string.Join(", ", dapAnDung);
                    lblThongBao.CssClass = "lblThongBao show error";
                }
            }
        }


        protected void HoanThanhGame()
        {
            int soCauDung = (int)ViewState["soCauDung"];
            int diem = 0;
            if (soCauDung == 3)
            {
                diem = 10; // Đúng 3 câu thì 10 điểm
            }
            else if (soCauDung >= 1)
            {
                diem = (10 * soCauDung) / 3; // Tính điểm cho 1 hoặc 2 câu đúng
            }
            lblThongBao.Text = $"Bạn đã hoàn thành game! Số câu đúng: {soCauDung}, Điểm: {diem}";
            lblThongBao.CssClass = "lblThongBao show success";
            //Response.Redirect("GameChinhTa.aspx");
            // Thực hiện thêm các hành động khi hoàn thành, như lưu kết quả, v.v.
        }

        protected void UpdateQuestionCount(int current, int total)
        {
            lblQuestionCount.Text = $"{current}/{total} câu";
        }


        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        // Lấy 3 câu hỏi ngẫu nhiên từ database
        //        var randomQuestions = GetRandomQuestions(3);

        //        // Lưu vào ViewState hoặc Session để dùng trong game
        //        ViewState["RandomQuestions"] = randomQuestions;
        //        ViewState["CurrentQuestionIndex"] = 0;  // Bắt đầu từ câu đầu tiên

        //        // Tải câu hỏi đầu tiên
        //        LoadQuestion(0);

        //        // Cập nhật số câu hiển thị
        //        UpdateQuestionCount(1, randomQuestions.Count);
        //    }
        //}

        //protected void UpdateQuestionCount(int current, int total)
        //{
        //    lblQuestionCount.Text = $"{current}/{total} câu";
        //}

        //protected List<tbGameChinhTa> GetRandomQuestions(int count)
        //{
        //    // Sử dụng LINQ để lấy ngẫu nhiên 3 câu hỏi từ database
        //    var randomQuestions = (from ct in db.tbGameChinhTas
        //                           orderby Guid.NewGuid()  // Sắp xếp ngẫu nhiên
        //                           select ct).Take(count).ToList();
        //    return randomQuestions;
        //}

        //protected void LoadQuestion(int index)
        //{
        //    // Lấy danh sách câu hỏi ngẫu nhiên đã lưu trong ViewState
        //    var randomQuestions = (List<tbGameChinhTa>)ViewState["RandomQuestions"];

        //    if (index < randomQuestions.Count)
        //    {
        //        var cauChinhTa = randomQuestions[index];  // Lấy câu hỏi tại vị trí index

        //        string noidung = cauChinhTa.gamechinhta_noidung;
        //        string[] words = noidung.Split(' ');

        //        lblNoiDung.Text = "";  // Xóa nội dung trước đó

        //        // Thêm các từ với thẻ <a> để người dùng chọn
        //        foreach (var word in words)
        //        {
        //            lblNoiDung.Text += $"<a href='#' onclick=\"myChinhTa('{word}', this)\">{word}</a> ";
        //        }

        //        // Cập nhật nút kiểm tra hoặc hoàn thành
        //        UpdateButtonText();
        //        // Cập nhật số câu hiển thị
        //        UpdateQuestionCount(index + 1, randomQuestions.Count);
        //    }
        //}

        //protected void KiemTraChinhTa()
        //{
        //    // Kiểm tra chính tả như cũ
        //    var cauChinhTa = (from ct in db.tbGameChinhTas
        //                      where ct.gamechinhta_id == (int)ViewState["cauHienTai"]  // Lấy câu hiện tại
        //                      select ct).FirstOrDefault();

        //    if (cauChinhTa != null)
        //    {
        //        string[] dapAnSai = cauChinhTa.gamechinhta_dapansai.Split(',');
        //        string[] dapAnDung = cauChinhTa.gamechinhta_dapan.Split(',');

        //        string userInput = txtLoiSai.Value;
        //        string[] userSelectedWords = userInput.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

        //        StringBuilder resultHtml = new StringBuilder();
        //        string[] originalWords = cauChinhTa.gamechinhta_noidung.Split(' ');

        //        bool allCorrect = true;

        //        for (int i = 0; i < originalWords.Length; i++)
        //        {
        //            string word = originalWords[i];

        //            if (userSelectedWords.Contains(word) && dapAnSai.Contains(word))
        //            {
        //                resultHtml.Append($"<span style='color:green'>{word}</span> ");
        //            }
        //            else if (userSelectedWords.Contains(word) && !dapAnSai.Contains(word))
        //            {
        //                resultHtml.Append($"<span style='color:red'>{word}</span> ");
        //                allCorrect = false;
        //            }
        //            else
        //            {
        //                resultHtml.Append($"{word} ");
        //            }
        //        }

        //        lblNoiDung.Text = resultHtml.ToString();

        //        if (allCorrect)
        //        {
        //            lblThongBao.Text = "Kết quả đã đúng! Đáp án đúng là: " + string.Join(", ", dapAnDung);
        //            lblThongBao.CssClass = "lblThongBao show";
        //        }
        //        else
        //        {
        //            lblThongBao.Text = "Kết quả sai! Đáp án đúng là: " + string.Join(", ", dapAnDung);
        //            lblThongBao.CssClass = "lblThongBao show error";
        //        }
        //    }
        //}

        //protected void btnKiemTra_Click(object sender, EventArgs e)
        //{
        //    // Kiểm tra chính tả hiện tại
        //    KiemTraChinhTa();

        //    // Lấy câu hiện tại từ ViewState
        //    int currentQuestionIndex = (int)ViewState["CurrentQuestionIndex"];
        //    var randomQuestions = (List<tbGameChinhTa>)ViewState["RandomQuestions"];

        //    if (currentQuestionIndex < randomQuestions.Count - 1)
        //    {
        //        // Chuyển đến câu tiếp theo
        //        currentQuestionIndex++;
        //        ViewState["CurrentQuestionIndex"] = currentQuestionIndex;
        //        LoadQuestion(currentQuestionIndex);

        //        // Cập nhật số câu hiển thị
        //        UpdateQuestionCount(currentQuestionIndex + 1, randomQuestions.Count);
        //    }
        //    else
        //    {
        //        // Nếu là câu cuối cùng, hiển thị hoàn thành
        //        HoanThanhGame();
        //    }
        //}

        //protected void UpdateButtonText()
        //{
        //    int currentQuestionIndex = (int)ViewState["CurrentQuestionIndex"];
        //    var randomQuestions = (List<tbGameChinhTa>)ViewState["RandomQuestions"];

        //    if (currentQuestionIndex == randomQuestions.Count - 1)
        //    {
        //        // Nếu là câu cuối, đổi thành nút "Hoàn Thành"
        //        btnKiemTra.Text = "Hoàn Thành";
        //    }
        //    else
        //    {
        //        // Nếu chưa đến câu cuối, nút là "Tiếp"
        //        btnKiemTra.Text = "Tiếp";
        //    }
        //}

        //protected void HoanThanhGame()
        //{
        //    lblThongBao.Text = "Bạn đã hoàn thành game!";
        //    lblThongBao.CssClass = "lblThongBao show success";

        //    // Ẩn nút kiểm tra sau khi hoàn thành
        //    btnKiemTra.Visible = false;
        //}

    }
}
