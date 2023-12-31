USE [Server_clothes]
GO
/****** Object:  Table [dbo].[Bienthesanpham]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bienthesanpham](
	[ID_Bienthesanpham] [int] IDENTITY(1,1) NOT NULL,
	[ID_Sanpham] [int] NULL,
	[ID_Mau] [int] NULL,
	[Soluongton] [int] NOT NULL,
	[SizeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Bienthesanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitietdanhmuc]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdanhmuc](
	[ID_Chitietdanhmuc] [int] IDENTITY(1,1) NOT NULL,
	[Madanhmuc] [int] NULL,
	[Tenchitietdanhmuc] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Chitietdanhmuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[ID_Chitietdonhang] [int] IDENTITY(1,1) NOT NULL,
	[ID_Donhang] [int] NULL,
	[ID_Sanphambienthe] [int] NULL,
	[Soluong] [int] NOT NULL,
	[Thanhtien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Chitietdonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitietphieunhap]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietphieunhap](
	[ID_Chitietphieunhap] [int] IDENTITY(1,1) NOT NULL,
	[ID_Bienthesanpham] [int] NULL,
	[Soluongnhap] [int] NOT NULL,
	[Thanhtiennhap] [float] NOT NULL,
	[ID_Phieunhaphang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Chitietphieunhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danhmucsanpham]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danhmucsanpham](
	[Madanhmuc] [int] IDENTITY(1,1) NOT NULL,
	[Tendanhmuc] [nvarchar](max) NOT NULL,
	[HinhAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Madanhmuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donmuahang]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donmuahang](
	[ID_Donhang] [int] IDENTITY(1,1) NOT NULL,
	[ID_Nguoidung] [int] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Tennguoidung] [nvarchar](150) NULL,
	[Ngaytao] [date] NULL,
	[Tongdonhang] [float] NULL,
	[ID_Trangthai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Donhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhanhSanpham]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhanhSanpham](
	[ID_Image] [int] IDENTITY(1,1) NOT NULL,
	[TenAnh] [nvarchar](max) NOT NULL,
	[Masanpham] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[ID_Loai] [int] IDENTITY(1,1) NOT NULL,
	[Tenloai] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[ID_Mau] [int] IDENTITY(1,1) NOT NULL,
	[Tenmau] [nvarchar](max) NULL,
	[ID_Loai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Mau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[ID_Nguoidung] [int] IDENTITY(1,1) NOT NULL,
	[Tennguoidung] [nvarchar](max) NOT NULL,
	[Ngaysinh] [date] NULL,
	[Diachi] [nvarchar](max) NULL,
	[SoDT] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Quyentruycap] [int] NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Nguoidung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhacungcap]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhacungcap](
	[Manhacungcap] [int] IDENTITY(1,1) NOT NULL,
	[Tennhacungcap] [nvarchar](max) NOT NULL,
	[Diachi] [nvarchar](max) NULL,
	[SoDT] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Manhacungcap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phieunhap]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieunhap](
	[ID_Phieunhap] [int] IDENTITY(1,1) NOT NULL,
	[ID_Nhacungcap] [int] NULL,
	[Ngaytao] [date] NOT NULL,
	[NguoiLapPhieu] [nvarchar](max) NOT NULL,
	[Tongtien] [float] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Phieunhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masanpham] [int] IDENTITY(1,1) NOT NULL,
	[Tensanpham] [nvarchar](max) NOT NULL,
	[Chitietdanhmuc] [int] NULL,
	[Mota] [nvarchar](max) NULL,
	[Giaban] [float] NULL,
	[Gianhap] [float] NULL,
	[Mathuonghieu] [int] NULL,
	[ID_Loai] [int] NULL,
	[ID_Nhacungcap] [int] NULL,
	[Ngaytao] [date] NULL,
	[Ngaycapnhat] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[ID_Size] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [nvarchar](max) NULL,
	[ID_Loai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuonghieu]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuonghieu](
	[Mathuonghieu] [int] IDENTITY(1,1) NOT NULL,
	[Tenthuonghieu] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mathuonghieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiDH]    Script Date: 11/5/2023 1:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiDH](
	[ID_TrangThai] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bienthesanpham] ON 

INSERT [dbo].[Bienthesanpham] ([ID_Bienthesanpham], [ID_Sanpham], [ID_Mau], [Soluongton], [SizeID]) VALUES (1, 5, 1, 100, 2)
INSERT [dbo].[Bienthesanpham] ([ID_Bienthesanpham], [ID_Sanpham], [ID_Mau], [Soluongton], [SizeID]) VALUES (2, 6, 2, 200, 3)
INSERT [dbo].[Bienthesanpham] ([ID_Bienthesanpham], [ID_Sanpham], [ID_Mau], [Soluongton], [SizeID]) VALUES (3, 7, 1, 100, 4)
INSERT [dbo].[Bienthesanpham] ([ID_Bienthesanpham], [ID_Sanpham], [ID_Mau], [Soluongton], [SizeID]) VALUES (4, 8, 5, 50, 6)
INSERT [dbo].[Bienthesanpham] ([ID_Bienthesanpham], [ID_Sanpham], [ID_Mau], [Soluongton], [SizeID]) VALUES (5, 9, 4, 30, 3)
SET IDENTITY_INSERT [dbo].[Bienthesanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[Chitietdanhmuc] ON 

INSERT [dbo].[Chitietdanhmuc] ([ID_Chitietdanhmuc], [Madanhmuc], [Tenchitietdanhmuc], [HinhAnh]) VALUES (1, 1, N'Thời trang công sở', N'boy_congso.jpg')
INSERT [dbo].[Chitietdanhmuc] ([ID_Chitietdanhmuc], [Madanhmuc], [Tenchitietdanhmuc], [HinhAnh]) VALUES (2, 1, N'Thời trang phố', N'boy_congso.jpg')
INSERT [dbo].[Chitietdanhmuc] ([ID_Chitietdanhmuc], [Madanhmuc], [Tenchitietdanhmuc], [HinhAnh]) VALUES (3, 1, N'Thời trang mặc nhà', N'boy_macnha.jpg')
INSERT [dbo].[Chitietdanhmuc] ([ID_Chitietdanhmuc], [Madanhmuc], [Tenchitietdanhmuc], [HinhAnh]) VALUES (4, 2, N'Thời trang mặc nhà', N'kisd_macnha.jpg')
INSERT [dbo].[Chitietdanhmuc] ([ID_Chitietdanhmuc], [Madanhmuc], [Tenchitietdanhmuc], [HinhAnh]) VALUES (5, 2, N'Thời trang đi học', N'kisd_dihoc.jpg')
INSERT [dbo].[Chitietdanhmuc] ([ID_Chitietdanhmuc], [Madanhmuc], [Tenchitietdanhmuc], [HinhAnh]) VALUES (6, 2, N'Thời trang đi chơi', N'kisd_dichoi.jpg')
INSERT [dbo].[Chitietdanhmuc] ([ID_Chitietdanhmuc], [Madanhmuc], [Tenchitietdanhmuc], [HinhAnh]) VALUES (1002, 1, N'Thời trang hằng ngày', N'boy_congso.jpg')
SET IDENTITY_INSERT [dbo].[Chitietdanhmuc] OFF
GO
SET IDENTITY_INSERT [dbo].[Danhmucsanpham] ON 

INSERT [dbo].[Danhmucsanpham] ([Madanhmuc], [Tendanhmuc], [HinhAnh]) VALUES (1, N'Qúy Ông ', N'abc.jpg')
INSERT [dbo].[Danhmucsanpham] ([Madanhmuc], [Tendanhmuc], [HinhAnh]) VALUES (2, N'Trẻ em nam', N'abc.jpg')
SET IDENTITY_INSERT [dbo].[Danhmucsanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([ID_Loai], [Tenloai]) VALUES (1, N'Áo')
INSERT [dbo].[Loai] ([ID_Loai], [Tenloai]) VALUES (2, N'Quần')
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
SET IDENTITY_INSERT [dbo].[MauSac] ON 

INSERT [dbo].[MauSac] ([ID_Mau], [Tenmau], [ID_Loai]) VALUES (1, N'Ðen', 1)
INSERT [dbo].[MauSac] ([ID_Mau], [Tenmau], [ID_Loai]) VALUES (2, N'Trắng', 1)
INSERT [dbo].[MauSac] ([ID_Mau], [Tenmau], [ID_Loai]) VALUES (3, N'Vàng', 1)
INSERT [dbo].[MauSac] ([ID_Mau], [Tenmau], [ID_Loai]) VALUES (4, N'Tím', 1)
INSERT [dbo].[MauSac] ([ID_Mau], [Tenmau], [ID_Loai]) VALUES (5, N'Ðỏ', 1)
INSERT [dbo].[MauSac] ([ID_Mau], [Tenmau], [ID_Loai]) VALUES (6, N'Ðen', 2)
INSERT [dbo].[MauSac] ([ID_Mau], [Tenmau], [ID_Loai]) VALUES (7, N'Trắng', 2)
INSERT [dbo].[MauSac] ([ID_Mau], [Tenmau], [ID_Loai]) VALUES (8, N'Vàng', 2)
INSERT [dbo].[MauSac] ([ID_Mau], [Tenmau], [ID_Loai]) VALUES (9, N'Tím', 2)
INSERT [dbo].[MauSac] ([ID_Mau], [Tenmau], [ID_Loai]) VALUES (10, N'Ðỏ', 2)
SET IDENTITY_INSERT [dbo].[MauSac] OFF
GO
SET IDENTITY_INSERT [dbo].[Nhacungcap] ON 

INSERT [dbo].[Nhacungcap] ([Manhacungcap], [Tennhacungcap], [Diachi], [SoDT]) VALUES (1, N'Công ty vận chuyển ABC', N'Số 48 Điện Biên Phủ', N'094567832')
INSERT [dbo].[Nhacungcap] ([Manhacungcap], [Tennhacungcap], [Diachi], [SoDT]) VALUES (2, N'Công ty vận chuyển Fresh', N'Số 123 Cách Mạng Tháng Tám', N'097845673')
INSERT [dbo].[Nhacungcap] ([Manhacungcap], [Tennhacungcap], [Diachi], [SoDT]) VALUES (1002, N'Công Ty C? Ph?n May Phú Th?nh - Nhà Bè', N'13A, T?ng Van Trân, Phu?ng 5, Qu?n 11 Tp. H? Chí Minh (TPHCM)', N'098745623')
INSERT [dbo].[Nhacungcap] ([Manhacungcap], [Tennhacungcap], [Diachi], [SoDT]) VALUES (1003, N'Công Ty TNHH May Tr?n Trúc', N'292 - 294 Nguy?n Van Luông, P. 12, Q. 6, Tp. H? Chí Minh', N'098645763')
INSERT [dbo].[Nhacungcap] ([Manhacungcap], [Tennhacungcap], [Diachi], [SoDT]) VALUES (1004, N'Xu?ng May Bình Duong', N'206 Lê L?i Th? Xã Thu?n An T?nh Bình Duong', N'097148563')
SET IDENTITY_INSERT [dbo].[Nhacungcap] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masanpham], [Tensanpham], [Chitietdanhmuc], [Mota], [Giaban], [Gianhap], [Mathuonghieu], [ID_Loai], [ID_Nhacungcap], [Ngaytao], [Ngaycapnhat]) VALUES (5, N'Áo cardigan n? nam', 2, N'Áo khoác có thi?t k? co b?n giúp t?o ki?u d? dàng.
G?u thân, g?u tau dùng bo rid có gân ôm g?n quanh ph?n hông.
R?ng rãi tho?i mái d? dàng k?t h?p v?i nh?ng trang ph?c khác.
Có túi bên su?n ti?n d?ng.
S? k?t h?p c?a 2 thành ph?n s?i cotton và polyester giúp s?n ph?m gi? form dáng t?t nhung v?n d?m b?o d? x?p và thoáng khí. Màu s?c b?n d?p và d? b?n c?a s?n ph?m cao.', 500000, 350000, 1002, 1, 1, CAST(N'2023-10-30' AS Date), CAST(N'2023-10-30' AS Date))
INSERT [dbo].[Sanpham] ([Masanpham], [Tensanpham], [Chitietdanhmuc], [Mota], [Giaban], [Gianhap], [Mathuonghieu], [ID_Loai], [ID_Nhacungcap], [Ngaytao], [Ngaycapnhat]) VALUES (6, N'Áo khoác bomber da l?n nam', 2, N'Áo khoác bomber da l?n. M? khoá thân tru?c, túi h?p 2 bên. G?u áo, c? áo dùng bo d?t', 320000, 120000, 1003, 2, 1, CAST(N'2023-10-30' AS Date), CAST(N'2023-10-30' AS Date))
INSERT [dbo].[Sanpham] ([Masanpham], [Tensanpham], [Chitietdanhmuc], [Mota], [Giaban], [Gianhap], [Mathuonghieu], [ID_Loai], [ID_Nhacungcap], [Ngaytao], [Ngaycapnhat]) VALUES (7, N'Áo so mi Oxford nam cotton dài tay', 2, N'Áo so mi nam dài tay Oxford, 
ch?t li?u cotton thông thoáng, form regular fit v?i d? ôm sát co th? v?a ph?i, 
tho?i mái c? ngày dài. Ðu?ng may t? m?, ki?m soát ch?t lu?ng ch?, du?ng may m?t cách hoàn h?o mang d?n cho khách hàng m?t s?n ph?m ch?n chu, thanh l?ch và sang tr?ng.
Ch?t li?u 100% cotton:
- Uu di?m NL: Thân thi?n v?i môi tru?ng. Ð? b?n t?t. Th?m hút t?t, thoáng mát, không gây h?i cho s?c kh?e. Thoáng mát khi m?c.', 499000, 300000, 1004, 1, 2, CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[Sanpham] ([Masanpham], [Tensanpham], [Chitietdanhmuc], [Mota], [Giaban], [Gianhap], [Mathuonghieu], [ID_Loai], [ID_Nhacungcap], [Ngaytao], [Ngaycapnhat]) VALUES (8, N'Qu?n dài nam cotton dáng ôm', 1, N'Qu?n dài nam ?ng d?ng, form slimfit, túi chéo, có túi sau mông.
Ch?t li?u 100% cotton:
- Uu di?m NL: Thân thi?n v?i môi tru?ng. Ð? b?n t?t. Th?m hút t?t, thoáng mát, không gây h?i cho s?c kh?e. Thoáng mát khi m?c.', 799000, 600000, 1005, 2, 1, CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[Sanpham] ([Masanpham], [Tensanpham], [Chitietdanhmuc], [Mota], [Giaban], [Gianhap], [Mathuonghieu], [ID_Loai], [ID_Nhacungcap], [Ngaytao], [Ngaycapnhat]) VALUES (9, N'Áo gi? nhi?t nam c? tròn', 1, N'Áo gi? nhi?t nam du?c làm t? nguyên li?u heattech. Nguyên li?u du?c nghiên c?u ki v? thành ph?n s?i, t? l? thành ph?n d? mang l?i kh? nang tang sinh nhi?t m?nh khi m?c.
Hi?u qu? gi?a ?m t?i da khi m?c l?p trong cùng và k?t h?p v?i áo len, n?, áo khoác Canifa.
C?u trúc s?i du?c thi?t k? d?c bi?t v?i nhi?u khoang r?ng trên thân s?i do dó nhi?t sinh ra do c? xát, nhi?t t? co th? ngu?i m?c s? du?c gi?a trong các khoang r?ng này giúp co th? ?m d?n và không b? m?t nhi?t.
S? k?t h?p nhi?u thành ph?n t?o nên s?i có d?c trung tron bóng, mu?t mà, m?m m?n.
Thành ph?n spandex giúp s?n ph?m có d? co giãn, ôm sát co th? giúp tang kh? nang sinh nhi?t và gi? nhi?t. Thành ph?n Acrylic giúp s?n ph?m gi? du?c form dáng và có d? b?n cao.
S?i có chi s? nh?, m?t d? d?t cao giúp s?n ph?m m?ng nh? m?n màng t?o c?m giác tho?i mái khi m?c.', 299000, 130000, 1002, 1, 2, CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([ID_Size], [TenSize], [ID_Loai]) VALUES (1, N'S', 1)
INSERT [dbo].[Size] ([ID_Size], [TenSize], [ID_Loai]) VALUES (2, N'M', 1)
INSERT [dbo].[Size] ([ID_Size], [TenSize], [ID_Loai]) VALUES (3, N'L', 1)
INSERT [dbo].[Size] ([ID_Size], [TenSize], [ID_Loai]) VALUES (4, N'XL', 1)
INSERT [dbo].[Size] ([ID_Size], [TenSize], [ID_Loai]) VALUES (5, N'S', 2)
INSERT [dbo].[Size] ([ID_Size], [TenSize], [ID_Loai]) VALUES (6, N'M', 2)
INSERT [dbo].[Size] ([ID_Size], [TenSize], [ID_Loai]) VALUES (7, N'L', 2)
INSERT [dbo].[Size] ([ID_Size], [TenSize], [ID_Loai]) VALUES (8, N'XL', 2)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Thuonghieu] ON 

INSERT [dbo].[Thuonghieu] ([Mathuonghieu], [Tenthuonghieu]) VALUES (1, N'VietTien')
INSERT [dbo].[Thuonghieu] ([Mathuonghieu], [Tenthuonghieu]) VALUES (2, N'DongTien')
INSERT [dbo].[Thuonghieu] ([Mathuonghieu], [Tenthuonghieu]) VALUES (1002, N'ZERO')
INSERT [dbo].[Thuonghieu] ([Mathuonghieu], [Tenthuonghieu]) VALUES (1003, N'Gucci')
INSERT [dbo].[Thuonghieu] ([Mathuonghieu], [Tenthuonghieu]) VALUES (1004, N'WIND')
INSERT [dbo].[Thuonghieu] ([Mathuonghieu], [Tenthuonghieu]) VALUES (1005, N'Yody')
SET IDENTITY_INSERT [dbo].[Thuonghieu] OFF
GO
ALTER TABLE [dbo].[Bienthesanpham]  WITH CHECK ADD FOREIGN KEY([ID_Mau])
REFERENCES [dbo].[MauSac] ([ID_Mau])
GO
ALTER TABLE [dbo].[Bienthesanpham]  WITH CHECK ADD FOREIGN KEY([ID_Sanpham])
REFERENCES [dbo].[Sanpham] ([Masanpham])
GO
ALTER TABLE [dbo].[Bienthesanpham]  WITH CHECK ADD FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([ID_Size])
GO
ALTER TABLE [dbo].[Chitietdanhmuc]  WITH CHECK ADD FOREIGN KEY([Madanhmuc])
REFERENCES [dbo].[Danhmucsanpham] ([Madanhmuc])
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD FOREIGN KEY([ID_Donhang])
REFERENCES [dbo].[Donmuahang] ([ID_Donhang])
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD FOREIGN KEY([ID_Sanphambienthe])
REFERENCES [dbo].[Bienthesanpham] ([ID_Bienthesanpham])
GO
ALTER TABLE [dbo].[Chitietphieunhap]  WITH CHECK ADD FOREIGN KEY([ID_Bienthesanpham])
REFERENCES [dbo].[Bienthesanpham] ([ID_Bienthesanpham])
GO
ALTER TABLE [dbo].[Chitietphieunhap]  WITH CHECK ADD FOREIGN KEY([ID_Phieunhaphang])
REFERENCES [dbo].[Phieunhap] ([ID_Phieunhap])
GO
ALTER TABLE [dbo].[Donmuahang]  WITH CHECK ADD FOREIGN KEY([ID_Nguoidung])
REFERENCES [dbo].[Nguoidung] ([ID_Nguoidung])
GO
ALTER TABLE [dbo].[Donmuahang]  WITH CHECK ADD  CONSTRAINT [FK_Trangthai_Donmua] FOREIGN KEY([ID_Trangthai])
REFERENCES [dbo].[TrangThaiDH] ([ID_TrangThai])
GO
ALTER TABLE [dbo].[Donmuahang] CHECK CONSTRAINT [FK_Trangthai_Donmua]
GO
ALTER TABLE [dbo].[HinhanhSanpham]  WITH CHECK ADD FOREIGN KEY([Masanpham])
REFERENCES [dbo].[Sanpham] ([Masanpham])
GO
ALTER TABLE [dbo].[Phieunhap]  WITH CHECK ADD FOREIGN KEY([ID_Nhacungcap])
REFERENCES [dbo].[Nhacungcap] ([Manhacungcap])
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD FOREIGN KEY([Chitietdanhmuc])
REFERENCES [dbo].[Chitietdanhmuc] ([ID_Chitietdanhmuc])
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD FOREIGN KEY([ID_Nhacungcap])
REFERENCES [dbo].[Nhacungcap] ([Manhacungcap])
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD FOREIGN KEY([Mathuonghieu])
REFERENCES [dbo].[Thuonghieu] ([Mathuonghieu])
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_ID_Loai] FOREIGN KEY([ID_Loai])
REFERENCES [dbo].[Loai] ([ID_Loai])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_ID_Loai]
GO
