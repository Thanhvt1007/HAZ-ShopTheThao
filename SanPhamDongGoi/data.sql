	USE [master]
	GO
	/****** Object:  Database [QuanLyShopTheThaoPingPong]    Script Date: 15/12/2021 6:47:51 SA ******/
	CREATE DATABASE [QuanLyShopTheThaoPingPong]
	 
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyShopTheThaoPingPong].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET QUERY_STORE = OFF
GO
USE [QuanLyShopTheThaoPingPong]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 15/12/2021 6:47:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHDCT] [int] NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaSP] [nvarchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC,
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 15/12/2021 6:47:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nvarchar](20) NOT NULL,
	[TenChucVu] [nvarchar](255) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 15/12/2021 6:47:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[MaDonVi] [nvarchar](20) NOT NULL,
	[TenDonVi] [nvarchar](255) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDBan]    Script Date: 15/12/2021 6:47:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDBan](
	[MaHD] [int] NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
	[MaKH] [int] NOT NULL,
	[PhanTramGiam] [float] NOT NULL,
	[NgayLapHD] [date] NOT NULL,
	[TrangThai] [nvarchar](100) NOT NULL,
	[GiaGiam] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 15/12/2021 6:47:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] NOT NULL,
	[TenKH] [nvarchar](255) NOT NULL,
	[SoDT] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 15/12/2021 6:47:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [nvarchar](20) NOT NULL,
	[TenLoai] [nvarchar](255) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 15/12/2021 6:47:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](20) NOT NULL,
	[TenNV] [nvarchar](500) NOT NULL,
	[SoDienThoai] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](500) NOT NULL,
	[CMND] [nvarchar](12) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[MaChucVu] [nvarchar](20) NOT NULL,
	[Gmail] [nvarchar](100) NOT NULL,
	[PathAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 15/12/2021 6:47:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](20) NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[DonViTinh] [nvarchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [float] NOT NULL,
	[TrangThai] [nvarchar](100) NOT NULL,
	[Loai] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 15/12/2021 6:47:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[SoDienThoai] [varchar](10) NOT NULL,
	[Pass] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SoDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (1, 1, N'1', 1, 80000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (2, 1, N'3', 1, 950000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (3, 2, N'4', 2, 150000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (4, 2, N'5', 1, 15000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (5, 3, N'1', 3, 80000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (6, 3, N'3', 3, 950000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (7, 3, N'4', 1, 150000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (8, 4, N'1', 1, 80000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (9, 4, N'3', 1, 950000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (10, 4, N'5', 2, 15000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (11, 5, N'4', 1, 150000)
INSERT [dbo].[ChiTietHoaDon] ([MaHDCT], [MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (12, 5, N'5', 2, 15000)
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [MoTa]) VALUES (N'1', N'Admin', N'Là admin chủ cửa hàng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [MoTa]) VALUES (N'2', N'Quản Lý', N'Nhân viên quản lý')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [MoTa]) VALUES (N'3', N'Thu Ngân', N'Nhân viên thu ngân')
GO
INSERT [dbo].[DonViTinh] ([MaDonVi], [TenDonVi], [MoTa]) VALUES (N'1', N'Cái', N'Đơn vị dùng cho áo...')
INSERT [dbo].[DonViTinh] ([MaDonVi], [TenDonVi], [MoTa]) VALUES (N'2', N'Đôi', N'Đơn vị dùng cho giày, dép...')
GO
INSERT [dbo].[HDBan] ([MaHD], [MaNV], [MaKH], [PhanTramGiam], [NgayLapHD], [TrangThai], [GiaGiam], [ThanhTien]) VALUES (1, N'3', 2, 0, CAST(N'2021-09-13' AS Date), N'Đã thanh toán', 0, 1030000)
INSERT [dbo].[HDBan] ([MaHD], [MaNV], [MaKH], [PhanTramGiam], [NgayLapHD], [TrangThai], [GiaGiam], [ThanhTien]) VALUES (2, N'3', 1, 0, CAST(N'2021-10-14' AS Date), N'Đã thanh toán', 0, 315000)
INSERT [dbo].[HDBan] ([MaHD], [MaNV], [MaKH], [PhanTramGiam], [NgayLapHD], [TrangThai], [GiaGiam], [ThanhTien]) VALUES (3, N'3', 7, 0, CAST(N'2021-11-15' AS Date), N'Đã thanh toán', 0, 3240000)
INSERT [dbo].[HDBan] ([MaHD], [MaNV], [MaKH], [PhanTramGiam], [NgayLapHD], [TrangThai], [GiaGiam], [ThanhTien]) VALUES (4, N'3', 8, 10, CAST(N'2021-12-10' AS Date), N'Đã thanh toán', 106000, 954000)
INSERT [dbo].[HDBan] ([MaHD], [MaNV], [MaKH], [PhanTramGiam], [NgayLapHD], [TrangThai], [GiaGiam], [ThanhTien]) VALUES (5, N'3', 4, 0, CAST(N'2021-12-15' AS Date), N'Đã thanh toán', 0, 180000)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDT]) VALUES (1, N'Khách Hàng Mua Lẻ', N'0978215902')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDT]) VALUES (2, N'Huỳnh Thanh Tâm', N'0987654756')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDT]) VALUES (4, N'Lê Văn Thanh', N'0947843764')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDT]) VALUES (6, N'Mai Văn Tài Anh', N'0367489576')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDT]) VALUES (7, N'Châu Gia Bảo', N'0737262783')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDT]) VALUES (8, N'Lê Thanh Duẩn', N'0927642372')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDT]) VALUES (9, N'Trần Bảo Lê Duy', N'0387726367')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDT]) VALUES (10, N'Huỳnh Thị Tú Mai', N'0972632636')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'1', N'Áo', NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'2', N'Quần', NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'3', N'Giày', NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'4', N'Dụng Cụ', NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'5', N'Phụ Kiện', NULL)
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDienThoai], [DiaChi], [CMND], [GioiTinh], [MaChucVu], [Gmail], [PathAnh]) VALUES (N'1', N'Lê Văn Thành', N'0973438765', N'Cần Thơ', N'337647645', 1, N'3', N'levanthanh039@gmail.com', N'src\com\software\images\CHOPPER.jpg')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDienThoai], [DiaChi], [CMND], [GioiTinh], [MaChucVu], [Gmail], [PathAnh]) VALUES (N'2', N'Mai Thị Út', N'0943756476', N'Cà Mau', N'387454757', 0, N'3', N'maithiut534@gmail.com', N'src\com\software\images\CHOPPER.jpg')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDienThoai], [DiaChi], [CMND], [GioiTinh], [MaChucVu], [Gmail], [PathAnh]) VALUES (N'3', N'Nguyễn Đoàn Chí Thức', N'0978215902', N'Vĩnh Long', N'331950119', 1, N'1', N'thucndcpc01573@fpt.edu.vn', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDienThoai], [DiaChi], [CMND], [GioiTinh], [MaChucVu], [Gmail], [PathAnh]) VALUES (N'4', N'Huỳnh Văn Đạt', N'0946492294', N'Cà Mau', N'342565253', 1, N'1', N'quangdat0156@gmail.com', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDienThoai], [DiaChi], [CMND], [GioiTinh], [MaChucVu], [Gmail], [PathAnh]) VALUES (N'5', N'Bùi Trọng Nhân', N'0769331203', N'Hậu Giang', N'387353736', 1, N'1', N'nhanbtpc01721@fpt.edu.vn', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDienThoai], [DiaChi], [CMND], [GioiTinh], [MaChucVu], [Gmail], [PathAnh]) VALUES (N'6', N'Mai Thị Tuyết', N'0923763247', N'Cần Thơ', N'383457838', 0, N'2', N'maittpdh32@gmai.com', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDienThoai], [DiaChi], [CMND], [GioiTinh], [MaChucVu], [Gmail], [PathAnh]) VALUES (N'7', N'Lê Châu Khánh', N'0937436726', N'Tiền Giang', N'327642526', 0, N'2', N'khachcl23@gmail.com', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [SoLuong], [Gia], [TrangThai], [Loai]) VALUES (N'1', N'Áo Thun Thái', N'1', 100, 80000, N'Đang Kinh Doanh', N'1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [SoLuong], [Gia], [TrangThai], [Loai]) VALUES (N'2', N'Giày Đá Bóng', N'2', 100, 250000, N'Ngừng Kinh Doanh', N'4')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [SoLuong], [Gia], [TrangThai], [Loai]) VALUES (N'3', N'Quần Dài Thun', N'1', 200, 950000, N'Đang Kinh Doanh', N'2')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [SoLuong], [Gia], [TrangThai], [Loai]) VALUES (N'4', N'Găng tay bắt bóng', N'2', 250, 150000, N'Đang Kinh Doanh', N'5')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [SoLuong], [Gia], [TrangThai], [Loai]) VALUES (N'5', N'Găng tay chóng nắng', N'2', 200, 15000, N'Đang Kinh Doanh', N'5')
GO
INSERT [dbo].[TaiKhoan] ([SoDienThoai], [Pass]) VALUES (N'0769331203', N'admin@123')
INSERT [dbo].[TaiKhoan] ([SoDienThoai], [Pass]) VALUES (N'0946492294', N'admin@123')
INSERT [dbo].[TaiKhoan] ([SoDienThoai], [Pass]) VALUES (N'0978215902', N'admin@123')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__BC3D04C9500E4AC0]    Script Date: 15/12/2021 6:47:52 SA ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[SoDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__0389B7BD59F87749]    Script Date: 15/12/2021 6:47:52 SA ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[SoDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__B488B103FFB0018D]    Script Date: 15/12/2021 6:47:52 SA ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[Gmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__F67C8D0BF24891E4]    Script Date: 15/12/2021 6:47:52 SA ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_chiTietHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HDBan] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_HoaDon_chiTietHoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_HoaDonChiTiet] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_SanPham_HoaDonChiTiet]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HDBan] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HDBan] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ChucVu_NhanVien] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_ChucVu_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSanPham_SanPham] FOREIGN KEY([Loai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_LoaiSanPham_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DonVi] FOREIGN KEY([DonViTinh])
REFERENCES [dbo].[DonViTinh] ([MaDonVi])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DonVi]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([SoDienThoai])
REFERENCES [dbo].[NhanVien] ([SoDienThoai])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
/****** Object:  StoredProcedure [dbo].[sp_thongke]    Script Date: 15/12/2021 6:47:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_thongke] @ngayBatDau nvarchar(10), @ngayKetThuc nvarchar(10)
as begin
	select 
		sum(cthd.SoLuong * cthd.DonGia) as N'Tổng Tiền Bán Được',
		sum(hd.GiaGiam) as N'Tổng Giá Giảm',
		sum(cthd.SoLuong * cthd.DonGia)-sum(hd.GiaGiam) as N'Doanh Thu'
	from HDBan hd
	inner join ChiTietHoaDon cthd on hd.MaHD=cthd.MaHD
	where hd.NgayLapHD
	between @ngayBatDau and @ngayKetThuc
end
GO
USE [master]
GO
ALTER DATABASE [QuanLyShopTheThaoPingPong] SET  READ_WRITE 
GO
