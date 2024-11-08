USE [dbGameHocTap]
GO
/****** Object:  Table [dbo].[tbGameChinhTa]    Script Date: 04/11/2024 8:17:01 CH ******/
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
/****** Object:  Table [dbo].[tbGameDuoiHinhBatChu]    Script Date: 04/11/2024 8:17:01 CH ******/
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
/****** Object:  Table [dbo].[tbKhoiLop]    Script Date: 04/11/2024 8:17:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKhoiLop](
	[khoilop_id] [int] IDENTITY(1,1) NOT NULL,
	[khoilop_khoi] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[khoilop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbManGame]    Script Date: 04/11/2024 8:17:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbManGame](
	[mangame_id] [int] IDENTITY(1,1) NOT NULL,
	[mangame_man] [nvarchar](max) NULL,
	[khoilop_id] [int] NULL,
	[khoilop_khoi] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[mangame_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTaiKhoan]    Script Date: 04/11/2024 8:17:01 CH ******/
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
	[taikhoan_ngaysinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[taikhoan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
SET IDENTITY_INSERT [dbo].[tbKhoiLop] ON 

INSERT [dbo].[tbKhoiLop] ([khoilop_id], [khoilop_khoi]) VALUES (1, N'Lớp 1')
INSERT [dbo].[tbKhoiLop] ([khoilop_id], [khoilop_khoi]) VALUES (2, N'Lớp 2')
INSERT [dbo].[tbKhoiLop] ([khoilop_id], [khoilop_khoi]) VALUES (3, N'Lớp 3')
INSERT [dbo].[tbKhoiLop] ([khoilop_id], [khoilop_khoi]) VALUES (4, N'Lớp 4')
INSERT [dbo].[tbKhoiLop] ([khoilop_id], [khoilop_khoi]) VALUES (5, N'Lớp 5')
SET IDENTITY_INSERT [dbo].[tbKhoiLop] OFF
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
SET IDENTITY_INSERT [dbo].[tbTaiKhoan] ON 

INSERT [dbo].[tbTaiKhoan] ([taikhoan_id], [taikhoan_hoten], [taikhoan_tentaikhoan], [taikhoan_matkhau], [taikhoan_hinhanh], [taikhoan_gioitinh], [taikhoan_ngaysinh]) VALUES (1, N'Nguyễn Admin', N'admin', N'1', N'/images/admin.jpg', 0, CAST(N'2024-11-04' AS Date))
INSERT [dbo].[tbTaiKhoan] ([taikhoan_id], [taikhoan_hoten], [taikhoan_tentaikhoan], [taikhoan_matkhau], [taikhoan_hinhanh], [taikhoan_gioitinh], [taikhoan_ngaysinh]) VALUES (2, N'Thái Đăng Duy', N'duy', N'1', N'/images/tdd.jpg', 1, CAST(N'2003-09-09' AS Date))
SET IDENTITY_INSERT [dbo].[tbTaiKhoan] OFF
GO
