USE [dbQuanLyQuanCafe]
GO
/****** Object:  Table [dbo].[tbBan]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbBan](
	[ban_id] [int] IDENTITY(1,1) NOT NULL,
	[ban_ten] [nvarchar](max) NULL,
	[ban_trangthai] [nvarchar](max) NULL,
	[loaiban_id] [int] NULL,
	[loaiban_tenban] [nvarchar](max) NULL,
	[sanpham_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ban_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbBaner]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbBaner](
	[banner_id] [int] IDENTITY(1,1) NOT NULL,
	[banner_image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[banner_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbGameChinhTa]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbGameChinhTa](
	[gamechinhta_id] [int] IDENTITY(1,1) NOT NULL,
	[gamechinhta_noidung] [nvarchar](max) NULL,
	[gamechinhta_dapan] [nvarchar](max) NULL,
	[gamechinhta_dapansai] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[gamechinhta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbGameDuoiHinhBatChu]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbGameDuoiHinhBatChu](
	[duoihinhbatchu_id] [int] IDENTITY(1,1) NOT NULL,
	[duoihinhbatchu_hinhanh] [nvarchar](max) NULL,
	[duoihinhbatchu_dapan] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[duoihinhbatchu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbGameSapXepCauThanhNgu]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbGameSapXepCauThanhNgu](
	[cauthanhngu_id] [int] IDENTITY(1,1) NOT NULL,
	[cauthanhngu_dapan] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[cauthanhngu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbHoaDon]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDon](
	[hoadon_id] [int] IDENTITY(1,1) NOT NULL,
	[hoadon_ngaynhap] [datetime] NULL,
	[hoadon_ngayxuat] [datetime] NULL,
	[hoadon_mahoadon] [nvarchar](max) NULL,
	[ban_id] [int] NULL,
	[hoadon_trangthai] [int] NULL,
	[hoadon_tongtien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[hoadon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbHoaDonChiTiet]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDonChiTiet](
	[hoadonchitiet_id] [int] IDENTITY(1,1) NOT NULL,
	[hoadon_id] [int] NULL,
	[sanpham_id] [int] NULL,
	[sanpham_soluong] [int] NULL,
	[sanpham_dongia] [decimal](18, 0) NULL,
	[hoadonchitiet_thanhtien] [decimal](18, 0) NULL,
	[ban_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[hoadonchitiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbKhoiLop]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKhoiLop](
	[khoilop_id] [int] IDENTITY(1,1) NOT NULL,
	[khoilop_khoi] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbLoaiBan]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbLoaiBan](
	[loaiban_id] [int] IDENTITY(1,1) NOT NULL,
	[loaiban_tenban] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[loaiban_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbLoaiSanPham]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbLoaiSanPham](
	[loaisanpham_id] [int] IDENTITY(1,1) NOT NULL,
	[loaisanpham_ten] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[loaisanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbLoaiTinTuc]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbLoaiTinTuc](
	[loaitintuc_id] [int] IDENTITY(1,1) NOT NULL,
	[loaitintuc_ten] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loaitintuc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbManGame]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbManGame](
	[mangame_id] [int] IDENTITY(1,1) NOT NULL,
	[mangame_man] [nvarchar](max) NULL,
	[khoilop_id] [int] NULL,
	[khoilop_khoi] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNhapHang]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhapHang](
	[nhaphang_id] [nvarchar](255) NOT NULL,
	[nhaphang_nguoinhap] [nvarchar](max) NULL,
	[nhaphang_nhacungcap] [nvarchar](max) NULL,
	[nhaphang_ngaynhap] [datetime] NULL,
	[nhaphang_tongtien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[nhaphang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNhapHangChiTiet]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhapHangChiTiet](
	[nhaphangchitiet_id] [int] IDENTITY(1,1) NOT NULL,
	[nhaphangchitiet_sanpham] [nvarchar](max) NULL,
	[nhaphangchitiet_soluong] [int] NULL,
	[nhaphangchitiet_dongia] [decimal](18, 0) NULL,
	[nhaphangchitiet_thanhtien] [decimal](18, 0) NULL,
	[nhaphang_id] [nvarchar](max) NULL,
	[sanpham_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[nhaphangchitiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSanPham]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSanPham](
	[sanpham_id] [int] IDENTITY(1,1) NOT NULL,
	[sanpham_ten] [nvarchar](max) NULL,
	[sanpham_dongia] [decimal](18, 0) NULL,
	[loaisanpham_id] [int] NULL,
	[loaisanpham_ten] [nvarchar](max) NULL,
	[sanpham_soluong] [int] NULL,
	[sanpham_hinhanh] [nvarchar](max) NULL,
	[ban_id] [int] NULL,
	[sanpham_thanhtien] [decimal](18, 0) NULL,
	[sanpham_soluongtoithieu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTaiKhoan]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTaiKhoan](
	[taikhoan_id] [int] IDENTITY(1,1) NOT NULL,
	[taikhoan_hoten] [nvarchar](max) NULL,
	[taikhoan_tentaikhoan] [nvarchar](255) NULL,
	[taikhoan_matkhau] [nvarchar](max) NULL,
	[taikhoan_hinhanh] [nvarchar](max) NULL,
	[taikhoan_gioitinh] [bit] NULL,
	[taikhoan_ngaysinh] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[taikhoan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTinTuc]    Script Date: 02/11/2024 7:05:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTinTuc](
	[tintuc_id] [int] IDENTITY(1,1) NOT NULL,
	[tintuc_tieude] [nvarchar](255) NOT NULL,
	[tintuc_noidung] [nvarchar](max) NOT NULL,
	[tintuc_ngaytao] [datetime] NULL,
	[loaitintuc_id] [int] NULL,
	[tintuc_hinhanh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[tintuc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbBan] ON 

INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (4, N'Bàn 1', NULL, 1, N'Khu A', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (5, N'Bàn 2', NULL, 1, N'Khu A', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (6, N'Bàn 3', NULL, 1, N'Khu A', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (7, N'Bàn 4', NULL, 1, N'Khu A', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (8, N'Bàn 5', NULL, 1, N'Khu A', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (9, N'Bàn 6', NULL, 1, N'Khu A', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (15, N'Bàn 1', NULL, 2, N'Khu B', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (22, N'Bàn 2', NULL, 2, N'Khu B', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (23, N'Bàn 3', NULL, 2, N'Khu B', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (24, N'Bàn 4', NULL, 2, N'Khu B', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (25, N'Bàn 5 ', NULL, 2, N'Khu B', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (26, N'Bàn 1', NULL, 3, N'Khu C', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (27, N'Bàn 2', NULL, 3, N'Khu C', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (28, N'Bàn 3', NULL, 3, N'Khu C', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (29, N'Bàn 4', NULL, 3, N'Khu C', NULL)
INSERT [dbo].[tbBan] ([ban_id], [ban_ten], [ban_trangthai], [loaiban_id], [loaiban_tenban], [sanpham_id]) VALUES (30, N'Bàn 5', NULL, 3, N'Khu C', NULL)
SET IDENTITY_INSERT [dbo].[tbBan] OFF
GO
SET IDENTITY_INSERT [dbo].[tbBaner] ON 

INSERT [dbo].[tbBaner] ([banner_id], [banner_image]) VALUES (1, N'images/download.png')
SET IDENTITY_INSERT [dbo].[tbBaner] OFF
GO
SET IDENTITY_INSERT [dbo].[tbGameChinhTa] ON 

INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (1, N'Uống nước nhớ nguôn', N'Uống nước nhớ nguồn', N'nguôn')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (2, N'Ăn quá nhớ kẻ trồng cây', N'Ăn quả nhớ kẻ trồng cây', N'quá')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (3, N'Ăn cay nào, rào cây nấy', N'Ăn cây nào, rào cây nấy', N'cay')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (4, N'Có công mày sắt, có ngày nên kim', N'Có công mài sắt, có ngày nên kim', N'mày')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (5, N'Một cây làm chẳng nên nun', N'Một cây làm chẳng nên non', N'nun')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (6, N'Gần mực thì đen, gàn đèn thì sáng', N'Gần mực thì đen, gần đèn thì sáng', N'gàn')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (7, N'Lá lành đùm la rách', N'Lá lành đùm lá rách', N'la')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (8, N'Ăn bát, trả đủa', N'Ăn bát, trả đũa', N'đủa')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (9, N'Học thầy không tài học bạn', N'Học thầy không tày học bạn', N'tài')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (10, N'Tốt gỗ hơn tốt nước son', N'Tốt gỗ hơn tốt nước sơn', N'son')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (11, N'Nước chãy đá mòn', N'Nước chảy đá mòn', N'chãy')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (12, N'Đi một ngày dàng học một sàng khôn', N'Đi một ngày đàng, học một sàng khôn', N'dàng')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (13, N'Lửa thử vàng, dan nan thử sức', N'Lửa thử vàng, gian nan thử sức', N'dan')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (14, N'Khôn ngoan chẵng lọ thật thà', N'Khôn ngoan chẳng lọ thật thà', N'chẵng')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (15, N'Một giọt máu đào hơn ao nước lả', N'Một giọt máu đào hơn ao nước lã', N'lả')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (16, N'Cái nét đánh chết cái đẹp', N'Cái nết đánh chết cái đẹp', N'nét')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (17, N'Đói cho sạch, rách cho thom', N'Đói cho sạch, rách cho thơm', N'thom')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (18, N'Tiên học lễ, hạu học văn', N'Tiên học lễ, hậu học văn', N'hạu')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (19, N'Con hơn cha là nhà có phấc', N'Con hơn cha là nhà có phúc', N'phấc')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (20, N'Mẹ dạy thì con khéo, bó dạy thì con khôn', N'Mẹ dạy thì con khéo, bố dạy thì con khôn', N'bó')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (21, N'Trời kêu ai nấy da', N'Trời kêu ai nấy dạ', N'da')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (22, N'Bụng đói ăn rau, không đâu ăn thịt', N'Bụng đói ăn rau, không đau ăn thịt', N'đâu')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (23, N'Gan đục khơi trong', N'Gạn đục khơi trong', N'Gan')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (24, N'Nói ngọt lọc đến xương', N'Nói ngọt lọt đến xương', N'lọc')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (25, N'Đàn gãi tai trâu', N'Đàn gảy tai trâu', N'gãi')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (26, N'Một miếng khi đói bằng một gọi khi no', N'Một miếng khi đói bằng một gói khi no', N'gọi')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (27, N'Cửa bền tại người', N'Của bền tại người', N'Cửa')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (28, N'Dĩ hòa vy quý', N'Dĩ hòa vi quý', N'vy')
INSERT [dbo].[tbGameChinhTa] ([gamechinhta_id], [gamechinhta_noidung], [gamechinhta_dapan], [gamechinhta_dapansai]) VALUES (29, N'Mền nắn, rắn buông', N'Mềm nắn, rắn buông', N'Mền')
SET IDENTITY_INSERT [dbo].[tbGameChinhTa] OFF
GO
SET IDENTITY_INSERT [dbo].[tbGameDuoiHinhBatChu] ON 

INSERT [dbo].[tbGameDuoiHinhBatChu] ([duoihinhbatchu_id], [duoihinhbatchu_hinhanh], [duoihinhbatchu_dapan]) VALUES (1, N'images/hq720.jpg', N'Sóc Trăng')
SET IDENTITY_INSERT [dbo].[tbGameDuoiHinhBatChu] OFF
GO
SET IDENTITY_INSERT [dbo].[tbGameSapXepCauThanhNgu] ON 

INSERT [dbo].[tbGameSapXepCauThanhNgu] ([cauthanhngu_id], [cauthanhngu_dapan]) VALUES (1, N'ăn quả nhớ kẻ trồng cây')
SET IDENTITY_INSERT [dbo].[tbGameSapXepCauThanhNgu] OFF
GO
SET IDENTITY_INSERT [dbo].[tbHoaDon] ON 

INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (30, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:01:47.483' AS DateTime), N'HD0001', 6, 1, 300000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (31, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:02:19.383' AS DateTime), N'HD0002', 7, 1, 400000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (32, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:02:16.150' AS DateTime), N'HD0003', 8, 1, 440000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (33, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:04:35.563' AS DateTime), N'HD0004', 7, 1, 300000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (34, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:05:04.633' AS DateTime), N'HD0005', 7, 1, 300000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (35, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:08:14.077' AS DateTime), N'HD0006', 6, 1, 300000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (37, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:10:57.773' AS DateTime), N'HD0007', 8, 1, 500000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (38, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:11:24.070' AS DateTime), N'HD0008', 8, 1, 400000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (39, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:11:51.110' AS DateTime), N'HD0009', 7, 1, 150000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (40, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:13:56.607' AS DateTime), N'HD0010', 8, 1, 500000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (41, CAST(N'2024-09-14T00:00:00.000' AS DateTime), CAST(N'2024-09-16T11:22:36.527' AS DateTime), N'HD0011', 8, 1, 300000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (42, NULL, CAST(N'2024-09-16T13:51:29.467' AS DateTime), N'HD0012', 7, 1, 50000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (43, NULL, CAST(N'2024-09-16T13:52:39.257' AS DateTime), N'HD0013', 7, 1, 50000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (44, NULL, CAST(N'2024-09-16T15:02:44.487' AS DateTime), N'HD0014', 4, 1, 500000)
INSERT [dbo].[tbHoaDon] ([hoadon_id], [hoadon_ngaynhap], [hoadon_ngayxuat], [hoadon_mahoadon], [ban_id], [hoadon_trangthai], [hoadon_tongtien]) VALUES (45, CAST(N'2024-09-16T15:04:23.063' AS DateTime), CAST(N'2024-09-16T15:04:28.623' AS DateTime), N'HD0015', 8, 1, 800000)
SET IDENTITY_INSERT [dbo].[tbHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[tbKhoiLop] ON 

INSERT [dbo].[tbKhoiLop] ([khoilop_id], [khoilop_khoi]) VALUES (1, N'Lớp 1')
INSERT [dbo].[tbKhoiLop] ([khoilop_id], [khoilop_khoi]) VALUES (2, N'Lớp 2')
INSERT [dbo].[tbKhoiLop] ([khoilop_id], [khoilop_khoi]) VALUES (3, N'Lớp 3')
INSERT [dbo].[tbKhoiLop] ([khoilop_id], [khoilop_khoi]) VALUES (4, N'Lớp 4')
INSERT [dbo].[tbKhoiLop] ([khoilop_id], [khoilop_khoi]) VALUES (5, N'Lớp 5')
SET IDENTITY_INSERT [dbo].[tbKhoiLop] OFF
GO
SET IDENTITY_INSERT [dbo].[tbLoaiBan] ON 

INSERT [dbo].[tbLoaiBan] ([loaiban_id], [loaiban_tenban]) VALUES (1, N'Khu A')
INSERT [dbo].[tbLoaiBan] ([loaiban_id], [loaiban_tenban]) VALUES (2, N'Khu B')
INSERT [dbo].[tbLoaiBan] ([loaiban_id], [loaiban_tenban]) VALUES (3, N'Khu C')
INSERT [dbo].[tbLoaiBan] ([loaiban_id], [loaiban_tenban]) VALUES (4, N'Khu D')
INSERT [dbo].[tbLoaiBan] ([loaiban_id], [loaiban_tenban]) VALUES (5, N'Khu VIP')
INSERT [dbo].[tbLoaiBan] ([loaiban_id], [loaiban_tenban]) VALUES (6, N'Khu Sân Vườn')
INSERT [dbo].[tbLoaiBan] ([loaiban_id], [loaiban_tenban]) VALUES (7, N'Tất cả')
SET IDENTITY_INSERT [dbo].[tbLoaiBan] OFF
GO
SET IDENTITY_INSERT [dbo].[tbLoaiSanPham] ON 

INSERT [dbo].[tbLoaiSanPham] ([loaisanpham_id], [loaisanpham_ten]) VALUES (1, N'san pham a')
INSERT [dbo].[tbLoaiSanPham] ([loaisanpham_id], [loaisanpham_ten]) VALUES (2, N'san pham b')
INSERT [dbo].[tbLoaiSanPham] ([loaisanpham_id], [loaisanpham_ten]) VALUES (3, N'san pham c')
INSERT [dbo].[tbLoaiSanPham] ([loaisanpham_id], [loaisanpham_ten]) VALUES (4, N'san pham d')
INSERT [dbo].[tbLoaiSanPham] ([loaisanpham_id], [loaisanpham_ten]) VALUES (5, N'san pham e')
INSERT [dbo].[tbLoaiSanPham] ([loaisanpham_id], [loaisanpham_ten]) VALUES (6, N'san pham f')
SET IDENTITY_INSERT [dbo].[tbLoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[tbLoaiTinTuc] ON 

INSERT [dbo].[tbLoaiTinTuc] ([loaitintuc_id], [loaitintuc_ten]) VALUES (1, N'Sự kiện')
INSERT [dbo].[tbLoaiTinTuc] ([loaitintuc_id], [loaitintuc_ten]) VALUES (2, N'Bóng đá')
INSERT [dbo].[tbLoaiTinTuc] ([loaitintuc_id], [loaitintuc_ten]) VALUES (3, N'Cầu lông')
SET IDENTITY_INSERT [dbo].[tbLoaiTinTuc] OFF
GO
SET IDENTITY_INSERT [dbo].[tbManGame] ON 

INSERT [dbo].[tbManGame] ([mangame_id], [mangame_man], [khoilop_id], [khoilop_khoi]) VALUES (1, N'Màn 1', 1, N'Lớp 1')
INSERT [dbo].[tbManGame] ([mangame_id], [mangame_man], [khoilop_id], [khoilop_khoi]) VALUES (2, N'Màn 2 ', 1, N'Lớp 1')
INSERT [dbo].[tbManGame] ([mangame_id], [mangame_man], [khoilop_id], [khoilop_khoi]) VALUES (3, N'Màn 3', 1, N'Lớp 1')
INSERT [dbo].[tbManGame] ([mangame_id], [mangame_man], [khoilop_id], [khoilop_khoi]) VALUES (4, N'Màn 4', 1, N'Lớp 1')
INSERT [dbo].[tbManGame] ([mangame_id], [mangame_man], [khoilop_id], [khoilop_khoi]) VALUES (5, N'Màn 5', 1, N'Lớp 1')
INSERT [dbo].[tbManGame] ([mangame_id], [mangame_man], [khoilop_id], [khoilop_khoi]) VALUES (6, N'Màn 1', 2, N'Lớp 2')
INSERT [dbo].[tbManGame] ([mangame_id], [mangame_man], [khoilop_id], [khoilop_khoi]) VALUES (7, N'Màn 2 ', 2, N'Lớp 2')
INSERT [dbo].[tbManGame] ([mangame_id], [mangame_man], [khoilop_id], [khoilop_khoi]) VALUES (8, N'Màn 3', 2, N'Lớp 2')
INSERT [dbo].[tbManGame] ([mangame_id], [mangame_man], [khoilop_id], [khoilop_khoi]) VALUES (9, N'Màn 4', 2, N'Lớp 2')
INSERT [dbo].[tbManGame] ([mangame_id], [mangame_man], [khoilop_id], [khoilop_khoi]) VALUES (10, N'Màn 5', 2, N'Lớp 2')
SET IDENTITY_INSERT [dbo].[tbManGame] OFF
GO
INSERT [dbo].[tbNhapHang] ([nhaphang_id], [nhaphang_nguoinhap], [nhaphang_nhacungcap], [nhaphang_ngaynhap], [nhaphang_tongtien]) VALUES (N'2024NH0001', N'phihung', NULL, CAST(N'2024-09-10T14:44:18.527' AS DateTime), CAST(400000 AS Decimal(18, 0)))
INSERT [dbo].[tbNhapHang] ([nhaphang_id], [nhaphang_nguoinhap], [nhaphang_nhacungcap], [nhaphang_ngaynhap], [nhaphang_tongtien]) VALUES (N'2024NH0002', N'phihung', NULL, CAST(N'2024-09-10T14:44:35.050' AS DateTime), CAST(2250000 AS Decimal(18, 0)))
INSERT [dbo].[tbNhapHang] ([nhaphang_id], [nhaphang_nguoinhap], [nhaphang_nhacungcap], [nhaphang_ngaynhap], [nhaphang_tongtien]) VALUES (N'2024NH0003', N'phihung', NULL, CAST(N'2024-09-10T15:24:52.147' AS DateTime), CAST(61000000 AS Decimal(18, 0)))
INSERT [dbo].[tbNhapHang] ([nhaphang_id], [nhaphang_nguoinhap], [nhaphang_nhacungcap], [nhaphang_ngaynhap], [nhaphang_tongtien]) VALUES (N'2024NH0004', N'phihung', NULL, CAST(N'2024-09-11T13:40:32.510' AS DateTime), CAST(92200000 AS Decimal(18, 0)))
INSERT [dbo].[tbNhapHang] ([nhaphang_id], [nhaphang_nguoinhap], [nhaphang_nhacungcap], [nhaphang_ngaynhap], [nhaphang_tongtien]) VALUES (N'2024NH0005', N'phihung', NULL, CAST(N'2024-09-11T16:47:39.277' AS DateTime), CAST(30000000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[tbNhapHangChiTiet] ON 

INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (2, N'Chanh tuyết đá xay', 10, CAST(40000 AS Decimal(18, 0)), CAST(400000 AS Decimal(18, 0)), N'2024NH0001', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (4, N'Bingsu dâu', 15, CAST(512121 AS Decimal(18, 0)), CAST(7681815 AS Decimal(18, 0)), N'2024NH0002', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (9, N'Chanh tuyết đá xay', 123, CAST(222222 AS Decimal(18, 0)), CAST(27333306 AS Decimal(18, 0)), N'2024NH0003', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (12, N'Cafe muối', 100, CAST(30000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (13, N'Bạc xỉu', 100, CAST(37000 AS Decimal(18, 0)), CAST(3700000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (14, N'Cafe sữa', 100, CAST(25000 AS Decimal(18, 0)), CAST(2500000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (15, N'Cafe đen', 100, CAST(20000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (16, N'Trà mãng cầu', 100, CAST(30000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (17, N'Trà đào', 100, CAST(50000 AS Decimal(18, 0)), CAST(5000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (18, N'Trà bưởi hồng', 100, CAST(30000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (19, N'Trà chanh dây ', 100, CAST(30000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (20, N'Trà trái cây nhiệt đới', 100, CAST(30000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (21, N'Trà sữa phô mai', 100, CAST(45000 AS Decimal(18, 0)), CAST(4500000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (22, N'Trà sữa thạch trái cây', 100, CAST(50000 AS Decimal(18, 0)), CAST(5000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (23, N'Trà sữa thái xanh', 100, CAST(50000 AS Decimal(18, 0)), CAST(5000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (24, N'Bánh trung thu ', 100, CAST(85000 AS Decimal(18, 0)), CAST(8500000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (25, N'Bánh trứng chảy', 100, CAST(70000 AS Decimal(18, 0)), CAST(7000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (26, N'Bánh phô mai', 100, CAST(70000 AS Decimal(18, 0)), CAST(7000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (27, N'Bánh chanh dây', 100, CAST(70000 AS Decimal(18, 0)), CAST(7000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (28, N'Cacao nóng', 100, CAST(25000 AS Decimal(18, 0)), CAST(2500000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (29, N'Cacao đá', 100, CAST(25000 AS Decimal(18, 0)), CAST(2500000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (30, N'Bingsu phô mai', 100, CAST(150000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), N'2024NH0004', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (31, N'Bingsu dâu', 100, CAST(150000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), N'2024NH0005', NULL)
INSERT [dbo].[tbNhapHangChiTiet] ([nhaphangchitiet_id], [nhaphangchitiet_sanpham], [nhaphangchitiet_soluong], [nhaphangchitiet_dongia], [nhaphangchitiet_thanhtien], [nhaphang_id], [sanpham_id]) VALUES (32, N'Bingsu đào', 100, CAST(150000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), N'2024NH0005', NULL)
SET IDENTITY_INSERT [dbo].[tbNhapHangChiTiet] OFF
GO
SET IDENTITY_INSERT [dbo].[tbSanPham] ON 

INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (113, N'A1', NULL, 1, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (114, N'A2', NULL, 1, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (115, N'A3', NULL, 1, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (116, N'A4', NULL, 1, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (117, N'B1', NULL, 2, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (118, N'B2', NULL, 2, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (119, N'B3', NULL, 2, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (120, N'B4', NULL, 2, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (121, N'C1', NULL, 3, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (122, N'C2', NULL, 3, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (123, N'C3', NULL, 3, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (124, N'C4', NULL, 3, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (126, N'D1', NULL, 4, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (127, N'D2', NULL, 4, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (128, N'D3', NULL, 4, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (129, N'D4', NULL, 4, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (130, N'E1', NULL, 5, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (131, N'E2', NULL, 5, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (132, N'E3', NULL, 5, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (133, N'E4', NULL, 5, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (134, N'F1', NULL, 6, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (135, N'F2', NULL, 6, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (136, N'F3', NULL, 6, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
INSERT [dbo].[tbSanPham] ([sanpham_id], [sanpham_ten], [sanpham_dongia], [loaisanpham_id], [loaisanpham_ten], [sanpham_soluong], [sanpham_hinhanh], [ban_id], [sanpham_thanhtien], [sanpham_soluongtoithieu]) VALUES (137, N'F4', NULL, 6, NULL, NULL, N'images/Bai-45-4-1.png', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[tbTaiKhoan] ON 

INSERT [dbo].[tbTaiKhoan] ([taikhoan_id], [taikhoan_hoten], [taikhoan_tentaikhoan], [taikhoan_matkhau], [taikhoan_hinhanh], [taikhoan_gioitinh], [taikhoan_ngaysinh]) VALUES (1, N'Tiêu Chấn Phi Hưng', N'1phihung', N'1', N'C:\Users\My computer\Downloads\ma qr.jpg', 1, CAST(N'2003-11-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tbTaiKhoan] ([taikhoan_id], [taikhoan_hoten], [taikhoan_tentaikhoan], [taikhoan_matkhau], [taikhoan_hinhanh], [taikhoan_gioitinh], [taikhoan_ngaysinh]) VALUES (2, N'Thái Đăng Duy', N'duy', N'1', N'\images\tdd.jpg', 1, CAST(N'2003-09-09T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbTaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[tbTinTuc] ON 

INSERT [dbo].[tbTinTuc] ([tintuc_id], [tintuc_tieude], [tintuc_noidung], [tintuc_ngaytao], [loaitintuc_id], [tintuc_hinhanh]) VALUES (1, N'Ronaldo “ghi bàn như máy” cho Al Nassr, giải mã màn ăn mừng cảm xúc
', N'Tiến gần hơn đến cột mốc 40 tuổi nhưng Cristiano Ronaldo vẫn duy trì “thói quen” ghi bàn mà mọi cầu thủ đều mơ ước. Phút 76, Ronaldo tung ra cú dứt điểm một chạm quyết đoán sau đường kiến tạo của Abdulrahman Ghareeb, giúp Al Nassr đánh bại Al Rayyan 2-1 ở đấu trường AFC Champions League.', CAST(N'2024-10-01T00:00:00.000' AS DateTime), 1, N'images/download.png')
INSERT [dbo].[tbTinTuc] ([tintuc_id], [tintuc_tieude], [tintuc_noidung], [tintuc_ngaytao], [loaitintuc_id], [tintuc_hinhanh]) VALUES (2, N'Nóng trên mạng', N'Sở Du lịch TP HCM gửi lời xin lỗi IShowSpeed sau khi anh bị "hét giá" một triệu đồng cho 5 phút thuê xe điện cân bằng trong buổi livestream ở Nguyễn Huệ tối 14/9.
Streamer IshowSpeed, sở hữu kênh Youtube gần 30 triệu lượt đăng ký, đến TPHCM tham dự chuỗi sự kiện về siêu xe từ 13/9. Tại phố đi bộ Nguyễn Huệ tối 14/9, anh thuê từ người bán hàng rong chiếc xe điện cân bằng và bị "hét giá" một triệu đồng cho 5 phút, gấp gần 20 lần so với bình thường. Thời điểm streamer IShowSpeed phát trực tiếp, có gần 170.000 lượt xem từ khắp thế giới.

Ông Lê Trương Hiền Hòa, Phó Giám đốc Sở Du lịch TP HCM, cho biết lấy làm tiếc vì xảy ra trường hợp chặt chém khách nước ngoài ngay tại một sự kiện lớn ở trung tâm thành phố. Sáng 15/9, đại diện Sở đã gặp gỡ IShowSpeed (tên thật là Darren Watkins Jr.) tại một sự kiện của thành phố, đồng thời gửi lời xin lỗi đến streamer. Ông Hòa cho hay vị khách Mỹ cùng êkip không than phiền về sự việc, đồng tình với hướng xử lý của giới chức.', CAST(N'2024-10-01T00:00:00.000' AS DateTime), 2, N'images/download.png')
SET IDENTITY_INSERT [dbo].[tbTinTuc] OFF
GO
ALTER TABLE [dbo].[tbHoaDon] ADD  DEFAULT ((0)) FOR [hoadon_trangthai]
GO
ALTER TABLE [dbo].[tbTinTuc] ADD  DEFAULT (getdate()) FOR [tintuc_ngaytao]
GO
