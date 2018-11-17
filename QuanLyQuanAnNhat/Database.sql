USE [Quan_an]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/13/2018 17:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[DonVi] [nvarchar](50) NOT NULL,
	[GiaBan] [int] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SanPham] ([MaSP], [Ten], [DonVi], [GiaBan]) VALUES (N'11        ', N'asdsa', N'das', 12)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [DonVi], [GiaBan]) VALUES (N'222       ', N'2222', N'222', 2222)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [DonVi], [GiaBan]) VALUES (N'DA_1      ', N'Nui xào bò', N'đĩa', 30000)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [DonVi], [GiaBan]) VALUES (N'DA_2      ', N'Cơm hến', N'đĩa', 30000)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [DonVi], [GiaBan]) VALUES (N'DA_4      ', N'SuShi', N'miếng', 20000)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [DonVi], [GiaBan]) VALUES (N'DA_5      ', N'Sasimi', N'dia', 40000)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [DonVi], [GiaBan]) VALUES (N'DA_6      ', N'Orochimaru', N'mi?ng', 50000)
INSERT [dbo].[SanPham] ([MaSP], [Ten], [DonVi], [GiaBan]) VALUES (N'NU_3      ', N'CoCaCoLa', N'chai', 15000)
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/13/2018 17:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GioiTinh] [nchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[ChucVu] [char](10) NOT NULL,
	[Luong] [int] NOT NULL,
	[SDT] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [GioiTinh], [NgaySinh], [ChucVu], [Luong], [SDT]) VALUES (1, N'Nguyễn Hùng Anh', N'Nam       ', CAST(0xAB210B00 AS Date), N'NV        ', 100000, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [GioiTinh], [NgaySinh], [ChucVu], [Luong], [SDT]) VALUES (2, N'Ngu', N'Nu        ', CAST(0xCA210B00 AS Date), N'NV        ', 100000, NULL)
/****** Object:  Table [dbo].[Ban]    Script Date: 11/13/2018 17:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [int] NOT NULL,
	[SoGhe] [int] NOT NULL,
	[Tang] [int] NOT NULL,
	[TinhTrang] [bit] NOT NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ban] ([MaBan], [SoGhe], [Tang], [TinhTrang]) VALUES (1, 4, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [SoGhe], [Tang], [TinhTrang]) VALUES (2, 4, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [SoGhe], [Tang], [TinhTrang]) VALUES (3, 4, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [SoGhe], [Tang], [TinhTrang]) VALUES (4, 4, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [SoGhe], [Tang], [TinhTrang]) VALUES (5, 4, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [SoGhe], [Tang], [TinhTrang]) VALUES (6, 4, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [SoGhe], [Tang], [TinhTrang]) VALUES (7, 4, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [SoGhe], [Tang], [TinhTrang]) VALUES (8, 4, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [SoGhe], [Tang], [TinhTrang]) VALUES (9, 4, 1, 1)
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/13/2018 17:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaBan] [int] NOT NULL,
	[TongTien] [int] NULL,
	[ThoiGian] [datetime] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/13/2018 17:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[MaNV] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [Password], [MaNV]) VALUES (N'Anh', N'123', NULL)
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 11/13/2018 17:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[MaHD] [int] NOT NULL,
	[MaSP] [nchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Account_NhanVien]    Script Date: 11/13/2018 17:46:01 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_NhanVien]
GO
/****** Object:  ForeignKey [FK_HoaDon_Ban]    Script Date: 11/13/2018 17:46:01 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Ban] FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Ban]
GO
/****** Object:  ForeignKey [FK_HoaDon_NhanVien]    Script Date: 11/13/2018 17:46:01 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
/****** Object:  ForeignKey [FK_HoaDonChiTiet_HoaDon]    Script Date: 11/13/2018 17:46:01 ******/
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HoaDon]
GO
/****** Object:  ForeignKey [FK_HoaDonChiTiet_SanPham]    Script Date: 11/13/2018 17:46:01 ******/
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_SanPham]
GO
