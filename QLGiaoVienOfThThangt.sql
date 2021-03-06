USE [Schoolmanagement]
GO
/****** Object:  User [nhutero5_skhdatauser]    Script Date: 11/8/2020 8:51:42 PM ******/
CREATE USER [nhutero5_skhdatauser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[nhutero5_skhdatauser]
GO
/****** Object:  User [nhutero5_utehy]    Script Date: 11/8/2020 8:51:42 PM ******/
CREATE USER [nhutero5_utehy] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[nhutero5_utehy]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [nhutero5_skhdatauser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [nhutero5_skhdatauser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [nhutero5_skhdatauser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [nhutero5_skhdatauser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [nhutero5_utehy]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [nhutero5_utehy]
GO
ALTER ROLE [db_datareader] ADD MEMBER [nhutero5_utehy]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [nhutero5_utehy]
GO
/****** Object:  Schema [nhutero5_skhdatauser]    Script Date: 11/8/2020 8:51:42 PM ******/
CREATE SCHEMA [nhutero5_skhdatauser]
GO
/****** Object:  Schema [nhutero5_utehy]    Script Date: 11/8/2020 8:51:42 PM ******/
CREATE SCHEMA [nhutero5_utehy]
GO
/****** Object:  Table [dbo].[tblBacLuong]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBacLuong](
	[MaBac] [bigint] IDENTITY(1,1) NOT NULL,
	[TenBac] [nvarchar](255) NULL,
	[HeSoBacLg] [float] NULL,
	[Status] [int] NULL,
	[NhomBac] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [text] NULL,
 CONSTRAINT [PK_tblBacLuong] PRIMARY KEY CLUSTERED 
(
	[MaBac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBoMonTrungTam]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBoMonTrungTam](
	[MaBMTT] [varchar](10) NOT NULL,
	[TenBMTT] [nvarchar](50) NULL,
	[MaPK] [varchar](10) NULL,
	[SoLuongNhanSu] [int] NULL,
	[PhanLoai] [int] NULL,
	[DiaChi] [ntext] NULL,
	[DienThoai] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Website] [nvarchar](200) NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblBoMonTrungTam] PRIMARY KEY CLUSTERED 
(
	[MaBMTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCanBoGiangVien]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCanBoGiangVien](
	[MaCBGV] [varchar](10) NOT NULL,
	[MaPK] [varchar](10) NULL,
	[MaBMTT] [varchar](10) NULL,
	[MaNgach] [bigint] NULL,
	[MaBac] [bigint] NULL,
	[MaTDHV] [bigint] NULL,
	[MaKTKL] [bigint] NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[Image] [nvarchar](255) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [int] NULL,
	[MatKhau] [ntext] NULL,
	[DienThoai] [ntext] NULL,
	[Email] [ntext] NULL,
	[ChucDanh] [nvarchar](10) NULL,
	[SoTaiKhoan] [text] NULL,
	[Status] [int] NULL,
	[Quyen] [int] NULL,
	[QueQuan] [nvarchar](255) NULL,
	[DanToc] [nvarchar](50) NULL,
	[TonGiao] [nvarchar](50) NULL,
	[TrinhDo] [nvarchar](255) NULL,
	[KinhNghiem] [ntext] NULL,
	[CMND] [varchar](20) NULL,
	[NgayCap] [datetime] NULL,
	[AiCap] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblCanBoGiangVien] PRIMARY KEY CLUSTERED 
(
	[MaCBGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChiTietPhieuThu]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuThu](
	[MaChiTietPhieuThu] [bigint] IDENTITY(1,1) NOT NULL,
	[MaPhieuThu] [int] NULL,
	[MaKhoanNo] [bigint] NULL,
	[SoTien] [numeric](18, 0) NULL,
	[HoaDonDienTu] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblChiTietPhieuThu] PRIMARY KEY CLUSTERED 
(
	[MaChiTietPhieuThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChuongTrinhDaoTao]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChuongTrinhDaoTao](
	[MaCTDT] [varchar](10) NOT NULL,
	[MaNganh] [varchar](10) NULL,
	[MaPK] [varchar](10) NULL,
	[MaBMTT] [varchar](10) NULL,
	[TenCTDT] [ntext] NULL,
	[SoTinChi] [float] NULL,
	[NamTS] [int] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblChuongTrinhDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaCTDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChuongTrinhDaoTaoChiTiet]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChuongTrinhDaoTaoChiTiet](
	[MaCTDT] [varchar](10) NOT NULL,
	[MaHP] [varchar](10) NULL,
	[TinhTrang] [int] NULL,
	[HocKy] [int] NULL,
	[NamHoc] [int] NULL,
	[SoTT] [int] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblChuongTrinhDaoTaoChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaCTDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiemHocPhan]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiemHocPhan](
	[MaDiem] [bigint] IDENTITY(1,1) NOT NULL,
	[MaSV] [varchar](10) NULL,
	[MaHP] [varchar](10) NULL,
	[Diem] [float] NULL,
	[HocKy] [int] NULL,
	[NamHoc] [int] NULL,
	[TinhTrang] [int] NULL,
	[ThuTu] [int] NULL,
	[SoLanHoc] [int] NULL,
	[SoTinChi] [float] NULL,
	[HeSo] [float] NULL,
	[SoThuTu] [int] NULL,
	[TinhTrungBinh] [int] NULL,
	[TotNghiep] [int] NULL,
	[DiemThanhPhan] [ntext] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblDiemHocPhan] PRIMARY KEY CLUSTERED 
(
	[MaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiemHocPhanChiTiet]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiemHocPhanChiTiet](
	[ThuTu] [int] NOT NULL,
	[MaSV] [varchar](10) NOT NULL,
	[MaHP] [varchar](10) NOT NULL,
	[Diem] [float] NULL,
	[HocKy] [int] NULL,
	[NamHoc] [int] NULL,
	[TinhTrang] [int] NULL,
	[KhaoSat] [int] NULL,
	[DiemThanhPhan] [text] NULL,
	[NguoiDay] [varchar](10) NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblDiemHocPhanChiTiet] PRIMARY KEY CLUSTERED 
(
	[ThuTu] ASC,
	[MaSV] ASC,
	[MaHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDinhMucHocPhi]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDinhMucHocPhi](
	[MaDMHP] [bigint] IDENTITY(1,1) NOT NULL,
	[MaLop] [varchar](10) NULL,
	[MoTa] [ntext] NULL,
	[HocPhiThang] [numeric](18, 0) NULL,
	[HocPhiHocKy] [numeric](18, 0) NULL,
	[HocPhiTinChi] [numeric](18, 0) NULL,
	[HocPhiTinChiLT] [numeric](18, 0) NULL,
	[HocPhiTinChiTH] [numeric](18, 0) NULL,
	[HocKy] [int] NULL,
	[NamHoc] [int] NULL,
	[TrangThai] [int] NULL,
	[TinhChat] [int] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[QuyetDinh] [ntext] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
	[MaKhoanThu] [varchar](10) NULL,
 CONSTRAINT [PK_tblDinhMucHocPhi] PRIMARY KEY CLUSTERED 
(
	[MaDMHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDKGiangDay]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDKGiangDay](
	[MaDKGD] [bigint] IDENTITY(1,1) NOT NULL,
	[MaCBGV] [varchar](50) NULL,
	[MaHP] [varchar](10) NULL,
	[NgayDK] [datetime] NULL,
	[GhiChu] [ntext] NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
 CONSTRAINT [PK_tblDKGiangDay] PRIMARY KEY CLUSTERED 
(
	[MaDKGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGiaoVienChuNhiem]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiaoVienChuNhiem](
	[MaGVCN] [bigint] IDENTITY(1,1) NOT NULL,
	[MaLop] [varchar](10) NULL,
	[MaCBGV] [varchar](50) NULL,
	[BatDau] [datetime] NULL,
	[KetThuc] [datetime] NULL,
	[HieuLuc] [int] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblGiaoVienChuNhiem] PRIMARY KEY CLUSTERED 
(
	[MaGVCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHocPhan]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHocPhan](
	[MaHP] [varchar](10) NOT NULL,
	[MaPK] [varchar](10) NULL,
	[MaBMTT] [nvarchar](10) NULL,
	[TenHocPhan] [ntext] NULL,
	[HocKy] [int] NULL,
	[TinhChat] [int] NULL,
	[SoTinChi] [float] NULL,
	[SoTinChiLT] [float] NULL,
	[SoTinChiTH] [float] NULL,
	[HeSo] [float] NULL,
	[SoThuTu] [int] NULL,
	[TinhTrungBinh] [int] NULL,
	[TotNghiep] [int] NULL,
	[DiemThanhPhan] [ntext] NULL,
	[NganhApDung] [ntext] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblHocPhan] PRIMARY KEY CLUSTERED 
(
	[MaHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHopDongLD]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHopDongLD](
	[MaHD] [bigint] IDENTITY(1,1) NOT NULL,
	[MaCBGV] [varchar](50) NULL,
	[LoaiHD] [nvarchar](255) NULL,
	[TuNgay] [datetime] NULL,
	[DenNgay] [datetime] NULL,
	[GhiChu] [ntext] NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
 CONSTRAINT [PK_tblHopDongLD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhenThuongKiLuat]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhenThuongKiLuat](
	[MaKTKL] [bigint] IDENTITY(1,1) NOT NULL,
	[TenKTKL] [nvarchar](255) NULL,
	[LyDo] [ntext] NULL,
	[NgayKT] [datetime] NULL,
	[HinhThuc] [nvarchar](255) NULL,
	[GhiChu] [ntext] NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
 CONSTRAINT [PK_tblKhenThuongKiLuat] PRIMARY KEY CLUSTERED 
(
	[MaKTKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhoanThu]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhoanThu](
	[MaKhoanThu] [varchar](10) NOT NULL,
	[MoTa] [nvarchar](1000) NULL,
	[TinhChat] [int] NULL,
	[HoaDonDienTu] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblKhoanThu] PRIMARY KEY CLUSTERED 
(
	[MaKhoanThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLophoc]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLophoc](
	[MaLop] [varchar](10) NOT NULL,
	[TenLop] [varchar](10) NULL,
	[MaNganhHoc] [varchar](10) NOT NULL,
	[MaKhoaQuanLy] [varchar](10) NULL,
	[NienKhoa] [varchar](10) NULL,
	[TrinhDo] [int] NULL,
	[He] [int] NULL,
	[NgayNhapHoc] [datetime] NULL,
	[SiSo] [int] NULL,
	[TrangThai] [int] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblLophoc] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLuong]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLuong](
	[MaLuong] [bigint] IDENTITY(1,1) NOT NULL,
	[MaBac] [bigint] NULL,
	[MucLuong] [int] NULL,
	[LuongCB] [int] NULL,
	[LuongPC] [int] NULL,
	[NgayNhan] [nvarchar](255) NULL,
	[NgayTang] [datetime] NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
 CONSTRAINT [PK_tblLuong] PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLyLichGV]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLyLichGV](
	[MaLL] [bigint] IDENTITY(1,1) NOT NULL,
	[MaCBGV] [varchar](50) NULL,
	[TenLL] [nvarchar](255) NULL,
	[LoaiLL] [ntext] NULL,
	[LinkBaiBao] [ntext] NULL,
	[Ghichu] [ntext] NULL,
	[Status] [int] NULL,
	[DP1] [text] NULL,
 CONSTRAINT [PK_tblLyLichGV] PRIMARY KEY CLUSTERED 
(
	[MaLL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNgachCongChuc]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNgachCongChuc](
	[MaNgach] [bigint] IDENTITY(1,1) NOT NULL,
	[MaSo] [varchar](100) NULL,
	[TenNgach] [nvarchar](255) NULL,
	[MoTa] [nvarchar](255) NULL,
	[Status] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [text] NULL,
	[DP2] [text] NULL,
	[GhiChu] [ntext] NULL,
 CONSTRAINT [PK_tblNgachCongChuc] PRIMARY KEY CLUSTERED 
(
	[MaNgach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNganHang]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNganHang](
	[MaNganHang] [varchar](10) NOT NULL,
	[Ten] [nvarchar](1000) NULL,
	[DiaChi] [nvarchar](300) NULL,
	[MatKhau] [text] NULL,
	[KichHoat] [int] NULL,
	[GhiChu] [text] NULL,
	[NgayTao] [nvarchar](50) NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblNganHang] PRIMARY KEY CLUSTERED 
(
	[MaNganHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNganhDaoTao]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNganhDaoTao](
	[MaNganh] [varchar](10) NOT NULL,
	[MaPK] [varchar](10) NULL,
	[MaBMTT] [varchar](10) NULL,
	[MaNganhTS] [ntext] NULL,
	[TenNganh] [ntext] NULL,
	[SoTinChi] [float] NULL,
	[TrinhDo] [int] NULL,
	[SoThang] [int] NULL,
	[NamTS] [int] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
	[He] [int] NULL,
 CONSTRAINT [PK_tblNganhDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhieuThu]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuThu](
	[MaPhieuThu] [bigint] IDENTITY(1,1) NOT NULL,
	[SoHieu] [int] NULL,
	[NamTaiKhoa] [int] NULL,
	[MaGiaoDich] [nvarchar](20) NULL,
	[Ngay] [datetime] NULL,
	[MoTa] [ntext] NULL,
	[NguoiThu] [nvarchar](50) NULL,
	[MaNguoiThu] [varchar](10) NOT NULL,
	[TongTien] [numeric](18, 0) NULL,
	[HoaDonDienTu] [int] NULL,
	[GhiChu] [text] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblPhieuThu] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhongKhoa]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhongKhoa](
	[MaPK] [varchar](10) NOT NULL,
	[TenPhongKhoa] [nvarchar](150) NULL,
	[SoLuongNhanSu] [int] NULL,
	[PhanLoai] [int] NULL,
	[DiaChi] [ntext] NULL,
	[DienThoai] [ntext] NULL,
	[Email] [nvarchar](50) NULL,
	[Webiste] [ntext] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblPhongKhoa] PRIMARY KEY CLUSTERED 
(
	[MaPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSinhvien]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhvien](
	[MaSV] [varchar](10) NOT NULL,
	[HoVaTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [tinyint] NULL,
	[DanToc] [nvarchar](50) NULL,
	[SoDinhDanh] [varchar](50) NULL,
	[NoiCap] [nvarchar](50) NULL,
	[NgayCap] [datetime] NULL,
	[DienThoai] [varchar](50) NULL,
	[Email] [ntext] NULL,
	[MatKhau] [text] NOT NULL,
	[Quyen] [int] NULL,
	[TrangThai] [int] NULL,
	[Anh] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [varchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblSinhvien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSinhVienLopHoc]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVienLopHoc](
	[MaSVLH] [bigint] IDENTITY(1,1) NOT NULL,
	[MaSV] [varchar](10) NULL,
	[MaLop] [varchar](10) NULL,
	[HoatDong] [int] NULL,
	[NgayVaoLop] [datetime] NULL,
	[GhiChu] [text] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblSinhVienLopHoc] PRIMARY KEY CLUSTERED 
(
	[MaSVLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSoGhiNoSinhVien]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSoGhiNoSinhVien](
	[MaKhoanNo] [bigint] IDENTITY(1,1) NOT NULL,
	[MaSV] [varchar](10) NOT NULL,
	[MaKhoanThu] [varchar](10) NOT NULL,
	[MaHP] [varchar](10) NULL,
	[SoTienCanThu] [numeric](18, 0) NULL,
	[SoTienDaThu] [numeric](18, 0) NULL,
	[BatDau] [datetime] NULL,
	[KetThuc] [datetime] NULL,
	[NgayThu] [datetime] NULL,
	[NamTaiKhoa] [int] NULL,
	[TinhTrang] [int] NULL,
	[ChonSan] [int] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblSoGhiNoSinhVien] PRIMARY KEY CLUSTERED 
(
	[MaKhoanNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTrinhDoHocVan]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTrinhDoHocVan](
	[MaTDHV] [bigint] IDENTITY(1,1) NOT NULL,
	[TenHocVan] [nvarchar](255) NULL,
	[NamTotNghiêp] [datetime] NULL,
	[ChungChi] [nvarchar](255) NULL,
	[ChuyenNganhDaoTao] [nvarchar](255) NULL,
	[DonViCT] [nvarchar](255) NULL,
	[TDTinHoc] [nvarchar](255) NULL,
	[TDNgoaiNgu] [nvarchar](255) NULL,
	[SoNamDay] [varchar](10) NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
 CONSTRAINT [PK_tblTrinhDoHocVan] PRIMARY KEY CLUSTERED 
(
	[MaTDHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUyNhiemThu]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUyNhiemThu](
	[MaUNT] [bigint] IDENTITY(1,1) NOT NULL,
	[MaKhoanThu] [varchar](10) NULL,
	[MaNganHang] [varchar](10) NULL,
	[BatDau] [datetime] NULL,
	[KetThuc] [datetime] NULL,
	[KichHoat] [int] NULL,
	[GhiChu] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [varchar](50) NULL,
	[DP1] [ntext] NULL,
	[DP2] [ntext] NULL,
	[DP3] [ntext] NULL,
 CONSTRAINT [PK_tblUyNhiemThu] PRIMARY KEY CLUSTERED 
(
	[MaUNT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [varchar](50) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](250) NULL,
	[gioitinh] [nvarchar](30) NULL,
	[email] [varchar](150) NULL,
	[taikhoan] [varchar](30) NULL,
	[matkhau] [varchar](60) NULL,
	[role] [varchar](30) NULL,
	[image_url] [varchar](300) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [nhutero5_utehy].[QuanLyPhienBan]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nhutero5_utehy].[QuanLyPhienBan](
	[PhienBan] [varchar](20) NULL,
	[KichHoat] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [nhutero5_utehy].[tblQuanLyPhienBan]    Script Date: 11/8/2020 8:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nhutero5_utehy].[tblQuanLyPhienBan](
	[PhienBan] [varchar](20) NULL,
	[KichHoat] [int] NULL,
	[NgayPhatHanh] [datetime] NULL,
	[NgayDung] [datetime] NULL,
	[GhiChu] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblBacLuong] ON 

INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (1, N'Bâc 1 ', 6.2, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (2, N'Bậc 2', 6.56, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (3, N'Bâc 3', 6.92, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (4, N'Bậc 4', 7.28, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (5, N'Bậc 5', 7.64, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (6, N'Bậc 6', 8, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (7, N'Bậc 1', 4.4, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (8, N'Bậc 2', 4.74, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (9, N'Bậc 3', 5.08, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (10, N'Bậc 4', 5.42, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (11, N'Bậc 5', 5.76, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (12, N'Bậc 6', 6.1, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (13, N'Bậc 7', 6.44, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (14, N'Bậc 8', 6.78, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (15, N'Bậc 1', 5.75, 1, N'Nhóm 2 (A3.2)', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (16, N'Bậc 2', 6.11, 1, N'Nhóm 2 (A3.2)', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (17, N'Bậc 3', 6.47, 1, N'Nhóm 2 (A3.2)', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (19, N'Bậc 4', 6.83, 1, N'Nhóm 2 (A3.2)', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (20, N'Bậc 5', 7.19, 1, N'Nhóm 2 (A3.2)', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
INSERT [dbo].[tblBacLuong] ([MaBac], [TenBac], [HeSoBacLg], [Status], [NhomBac], [NgayTao], [NguoiTao], [DP1]) VALUES (21, N'Bậc 6', 7.55, 1, N'Nhóm 2 (A3.2)', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL)
SET IDENTITY_INSERT [dbo].[tblBacLuong] OFF
GO
INSERT [dbo].[tblBoMonTrungTam] ([MaBMTT], [TenBMTT], [MaPK], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Website], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'Apteck', N'Hưng Yên Aptech: CNTT và TT', N'CNTT', 10, 4, N'Tầng 1,  Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', N'0945528686', N'fit.utehy@edu.vn.com', NULL, NULL, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblBoMonTrungTam] ([MaBMTT], [TenBMTT], [MaPK], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Website], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'CNMTK', N'Công Nghệ May Và Thời Trang', N'CNM', 20, 7, N'Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', NULL, N'fit.utehy@edu.vn.com', NULL, NULL, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblBoMonTrungTam] ([MaBMTT], [TenBMTT], [MaPK], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Website], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'CNPM', N'Công Nghệ Phần Mềm', N'CNTT', 15, 1, N'Tầng 2,  Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', N'02213689555', N'fit.utehy@edu.vn.com', NULL, NULL, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblBoMonTrungTam] ([MaBMTT], [TenBMTT], [MaPK], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Website], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'HTN', N'Hệ Thống Nhúng', N'CNTT', 10, 3, N'Tầng 2,  Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', N'0962836394', N'fit.utehy@edu.vn.com', NULL, NULL, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblBoMonTrungTam] ([MaBMTT], [TenBMTT], [MaPK], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Website], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'KTKT', N'Kinh Tế - Kế Toán', N'KT', 8, 9, N'Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', NULL, N'fit.utehy@edu.vn.com', NULL, NULL, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblBoMonTrungTam] ([MaBMTT], [TenBMTT], [MaPK], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Website], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'KTQT', N'Kinh Tê - Quản Trị', N'KT', 10, 8, N'Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', NULL, N'fit.utehy@edu.vn.com', NULL, NULL, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblBoMonTrungTam] ([MaBMTT], [TenBMTT], [MaPK], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Website], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'MMT', N'Mạng Máy Tính', N'CNTT', 10, 2, N'Tầng 2,  Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', N'0983081120', N'fit.utehy@edu.vn.com', NULL, NULL, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblBoMonTrungTam] ([MaBMTT], [TenBMTT], [MaPK], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Website], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'NNC', N'Ngôn Ngữ Trung', N'NN', 8, 6, N'Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', NULL, N'fit.utehy@edu.vn.com', NULL, NULL, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblBoMonTrungTam] ([MaBMTT], [TenBMTT], [MaPK], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Website], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'NNE', N'Ngôn Ngữ Anh ', N'NN', 14, 5, N'Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', NULL, N'fit.utehy@edu.vn.com', NULL, NULL, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
GO
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV1', N'CNTT', N'CNPM', 1, 14, 1, 1, N'TS. Nguyễn Văn Hậu ', NULL, NULL, 0, N'123@123', N'0943. 651.135', N'nvhau666@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV10', N'CNTT', N'CNPM', 9, 17, 1, 2, N'NCS. Lê Thị Thu Hương', NULL, NULL, 1, N'123@123', N' 0915.324.041', N'Lehuong7885@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải ĐăngNguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV11', N'CNTT', N'CNPM', 9, 17, 1, 2, N'NCS. Hoàng Quốc Việt ', NULL, NULL, 0, N'123@123', N'0976.124.669', N' viethqtk1@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV12', N'CNTT', N'CNPM', 1, 19, 1, 2, N'NULLThS. Trịnh Thị Nhị ', NULL, NULL, 1, N'123@123', N'0978.606.526', N'Nhicntt@gmail.comdiep82003@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV13', N'CNTT', N'CNPM', 2, 19, 1, 2, N'NULLThS. Nguyễn Hoàng Điệp ', NULL, NULL, 1, N'123@123', N'0923.848.008', N'Tradiep82003@gmail.comngLexus@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV14', N'CNTT', N'CNPM', 1, 19, 1, 2, N'ThS. Đỗ Thị Thu TRang', NULL, NULL, 1, N'123@123', N'0396.911.336', N'TrangLexus@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV15', N'CNTT', N'CNPM', 1, 19, 1, 2, N'ThS. Trần Đỗ Thu Hà ', NULL, NULL, 1, N'123@123', N'0976.289.988', N'tdhapi@gmail.com ', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV16', N'CNTT', N'CNPM', 3, 17, 1, 2, N'NCS. Đào Anh Hiển', NULL, NULL, 0, N'123@123', N'0983.264.436', N'hienda@utehy.edu.vn', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV17', N'CNTT', N'MMT', 9, 14, 2, 2, N'PGC.TS Bùi Thế Hồng', NULL, NULL, 0, N'123@123', N'0904.238.643', N'hong@ioit.ac.vn', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV18', N'CNTT', N'MMT', 9, 19, 2, 2, N'TS. Phạm Minh Chuẩn', NULL, NULL, 0, N'123@123', N'0983.081.120', N'chuanpm@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV19', N'CNTT', N'MMT', 9, 19, 2, 2, N'TS. Nguyễn Duy Tân', NULL, NULL, 0, N'123@123', N'0972.947.808', N'tanndhyvn@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV2', N'CNTT', N'CNPM', 2, 3, 1, 2, N'TS. Nguyễn Minh Quý', NULL, NULL, 0, N'123@123', N'0912.068.582', N'quyutehy@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV20', N'CNTT', N'MMT', 1, 19, 2, 2, N'TS. Vũ Khánh Quý', NULL, NULL, 0, N'123@123', N'0945.528.686', N'quyvk0705@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', NULL, NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV21', N'CNTT', N'MMT', 1, 19, 2, 2, N'ThS. Phạm Quốc Hùng', NULL, NULL, 0, N'123@123', N'0983.360.925', N'quochungvnu@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', NULL, NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV22', N'CNTT', N'MMT', 1, 19, 2, 2, N'ThS. Vi Hoài Nam ', NULL, NULL, 0, N'123@123', N'0375.326.504', N'vihoainam@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV23', N'CNTT', N'MMT', 1, 19, 2, 1, N'ThS. Vũ Xuân Thắng', NULL, NULL, 0, N'123@123', N'0988.169.829', N'xuanthangtk1@gmail.com', NULL, NULL, 1, 1, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV24', N'CNTT', N'MMT', 1, 19, 2, 2, N'ThS. Nguyễn Thị Thanh Huệ ', NULL, NULL, 1, N'123@123', N'0979.851.509', N'huentt1509@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV25', N'CNTT', N'MMT', 1, 19, 2, 2, N'ThS. Đặng Vân Anh ', NULL, NULL, 1, N'123@123', N'0983.702.911', N'vananh271785@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', NULL, NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV26', N'CNTT', N'HTN', 1, 19, 3, 2, N'NCS. Chu Bá Thành ', NULL, NULL, 0, N'123@123', N'0901.582.882', N'nhatthanhhy@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', NULL, NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV27', N'CNTT', N'HTN', 1, 19, 3, 2, N'TS. Phạm Ngọc Hưng', NULL, NULL, 0, N'123@123', N'0982.713.301', N'PhamNgocHung@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV28', N'CNTT', N'HTN', 1, 14, 3, 2, N'TS. Nguyễn Đình Chiến', NULL, NULL, 0, N'123@123', N'0962.836.394', N'chienql@gmail.com
', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV29', N'CNTT', N'HTN', 1, 14, 3, 2, N'CN. Võ Thị Thanh Mai ', NULL, NULL, 1, N'123@123123@123', N'0986.254.415 ', N'vttmai1964@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV3', N'CNTT', N'CNPM', 1, 19, 1, 2, N'TS. Nguyễn Văn Quyết', NULL, NULL, 0, N'123@123', N'0912.188.636', N'quyetict@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV30', N'CNTT', N'HTN', 1, 19, 3, 2, N'ThS. Nguyễn Vinh Quy', NULL, NULL, 0, N'123@123', N'0367.122.505', N'vinhquynguyen@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV31', N'CNTT', N'HTN', 1, 19, 3, 2, N'TS. Vũ Huy Thế', NULL, NULL, 0, N'123@123', N'0978.823.873', N'thevh.bn@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV32', N'CNTT', N'HTN', 1, 19, 3, 2, N'ThS. Trần Thị Phương', NULL, NULL, 1, N'123@123', N'0975.822.600 ', N'phuongutehy2405@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV39', N'NN', N'NNE', 1, 19, 5, 2, N'Trương Thị Hường', NULL, NULL, 1, N'123@123', N' 097510 0568', N'truonghuong@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV4', N'CNTT', N'CNPM', 1, 13, 1, 1, N'TS. Chu Thị Minh Huệ ', NULL, NULL, 1, N'123@123', N'0982.817.392', N'HueCtm@gmail.com', NULL, NULL, 1, 1, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV40', N'NN', N'NNC', 1, 19, 5, 2, N'TS. Trần Thị Mai Duyên', NULL, NULL, 1, N'123@123', N'0334.563.386', N'Tranmaiduyen@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV41', N'KT', N'KTQT', 1, 19, 5, 2, N'TS. Đào Bá Lộc', NULL, NULL, 0, N'123@123', N'0352.348.386', N'lockt@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV5', N'CNTT', N'CNPM', 3, 14, 1, 2, N'PGS.TS Nguyễn Quang Hoan', NULL, NULL, 0, N'123@123', N'0903.438.226', N'quanghoanptit@yahoo.com.vn', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Phó Giáo Sư Tiến Sĩ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV6', N'CNTT', N'CNPM', 9, 19, 4, 1, N'ThS. Nguyễn Hữu Đông', NULL, NULL, 0, N'123@123', N'0983.539.745', N'dongcntt77@gmail.com ', NULL, NULL, 1, 1, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Thạc Sĩ ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV7', N'CNTT', N'CNPM', 9, 19, 1, 1, N'TS. Nguyễn Minh Tiến', NULL, NULL, 0, N'123@123', N'0983.860.318', N'minhtienhy@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV8', N'CNTT', N'CNPM', 9, 19, 1, 2, N'ThS. Ngô Thanh Huyền', NULL, NULL, 1, N'123@123', N'0982.713.518', N'nthuyen@utehy.edu.vn', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblCanBoGiangVien] ([MaCBGV], [MaPK], [MaBMTT], [MaNgach], [MaBac], [MaTDHV], [MaKTKL], [HoVaTen], [Image], [NgaySinh], [GioiTinh], [MatKhau], [DienThoai], [Email], [ChucDanh], [SoTaiKhoan], [Status], [Quyen], [QueQuan], [DanToc], [TonGiao], [TrinhDo], [KinhNghiem], [CMND], [NgayCap], [AiCap], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'GV9', N'CNTT', N'CNPM', 9, 19, 1, 1, N'ThS. Nguyễn Thị Hải Năng', NULL, NULL, 1, N'123@123', N'0912.384.299', N'hainangtk1@gmail.com', NULL, NULL, 1, 0, N'Hưng Yên - Việt Nam', N'Dân Tộc Kinh', NULL, N'Tiến sĩ ', N'Đã có nhiều năm trong nghê, tham ra các hội thảo đi học nghiên cứu sinh ở nước ngoài.....', NULL, NULL, NULL, CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
GO
INSERT [dbo].[tblChuongTrinhDaoTao] ([MaCTDT], [MaNganh], [MaPK], [MaBMTT], [TenCTDT], [SoTinChi], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'CD', N'CNWCD', N'CNTT', N'CNPM', N'Đào Tạo Hệ Cao Đẳng', 100, 2, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblChuongTrinhDaoTao] ([MaCTDT], [MaNganh], [MaPK], [MaBMTT], [TenCTDT], [SoTinChi], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'DH', N'CNW', N'CNTT', N'CNPM', N'Đào tạo Hệ Đại Học', 150, 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblChuongTrinhDaoTao] ([MaCTDT], [MaNganh], [MaPK], [MaBMTT], [TenCTDT], [SoTinChi], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'LT', N'CNWLT', N'CNTT', N'CNPM', N'Hệ Đào Tạo Đại học Liên Thông', 100, 2, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblChuongTrinhDaoTao] ([MaCTDT], [MaNganh], [MaPK], [MaBMTT], [TenCTDT], [SoTinChi], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'TS', N'TSCNTT', N'CNTT', N'CNPM', N'Tiến Sĩ ', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblGiaoVienChuNhiem] ON 

INSERT [dbo].[tblGiaoVienChuNhiem] ([MaGVCN], [MaLop], [MaCBGV], [BatDau], [KetThuc], [HieuLuc], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (1, N'TK15.1', N'GV24', CAST(N'2018-01-26T00:00:00.000' AS DateTime), CAST(N'2021-06-30T00:00:00.000' AS DateTime), 4, NULL, CAST(N'2020-10-08T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblGiaoVienChuNhiem] ([MaGVCN], [MaLop], [MaCBGV], [BatDau], [KetThuc], [HieuLuc], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (2, N'Tk15.5', N'GV9', CAST(N'2018-01-26T00:00:00.000' AS DateTime), CAST(N'2021-06-30T00:00:00.000' AS DateTime), 4, NULL, CAST(N'2020-10-08T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblGiaoVienChuNhiem] OFF
GO
SET IDENTITY_INSERT [dbo].[tblHopDongLD] ON 

INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (1, N'GV1', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (2, N'GV2', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (3, N'GV3', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (4, N'GV4', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (5, N'GV5', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (6, N'GV6', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (7, N'GV7', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (8, N'GV8', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (9, N'GV9', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (10, N'GV10', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (11, N'GV11', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (12, N'GV12', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (13, N'GV13', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (14, N'GV14', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (15, N'GV15', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (16, N'GV16', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (17, N'GV17', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (18, N'GV18', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (19, N'GV19', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (20, N'GV20', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (21, N'GV21', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (22, N'GV22', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (23, N'GV23', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (24, N'GV24', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (25, N'GV25', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (26, N'GV26', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (27, N'GV27', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (28, N'GV28', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (29, N'GV29', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (30, N'GV30', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (31, N'GV31', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
INSERT [dbo].[tblHopDongLD] ([MaHD], [MaCBGV], [LoaiHD], [TuNgay], [DenNgay], [GhiChu], [status], [DP1]) VALUES (32, N'GV32', N'Hợp đồng lao động ', CAST(N'2008-09-12T00:00:00.000' AS DateTime), CAST(N'2030-09-12T00:00:00.000' AS DateTime), N'Hợp đồng lao động đã được hai bên thỏa thuật và làm đúng như hợp đồng đã kí kết, mỗi bên giữ một bản hợp đồng', 1, NULL)
SET IDENTITY_INSERT [dbo].[tblHopDongLD] OFF
GO
SET IDENTITY_INSERT [dbo].[tblKhenThuongKiLuat] ON 

INSERT [dbo].[tblKhenThuongKiLuat] ([MaKTKL], [TenKTKL], [LyDo], [NgayKT], [HinhThuc], [GhiChu], [status], [DP1]) VALUES (1, N'Giảng viên Xuất Xắc', N'Tham gia Giảng dạy và có công trình nghiên cứu khoa học', CAST(N'2020-11-10T00:00:00.000' AS DateTime), N'Khen Thưởng', NULL, 1, NULL)
INSERT [dbo].[tblKhenThuongKiLuat] ([MaKTKL], [TenKTKL], [LyDo], [NgayKT], [HinhThuc], [GhiChu], [status], [DP1]) VALUES (2, N'Chiến sĩ Thi Đua', NULL, CAST(N'2020-12-10T00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[tblKhenThuongKiLuat] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLuong] ON 

INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (5, 1, 9920000, 9238000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (6, 2, 10496000, 9774400, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (7, 3, 11072000, 10310000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (8, 4, 11648000, 10847000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (9, 5, 12224000, 11383000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (10, 6, 12800000, 11920000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (11, 7, 7040000, 6556000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (12, 8, 7584000, 7062000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (13, 9, 8128000, 7569000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (14, 10, 8672000, 8075000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (15, 11, 9216000, 8582000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (16, 12, 9760000, 9089000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (17, 13, 10304000, 9595000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (18, 14, 10848000, 10102000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (19, 15, 9200000, 8567000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[tblLuong] ([MaLuong], [MaBac], [MucLuong], [LuongCB], [LuongPC], [NgayNhan], [NgayTang], [status], [DP1]) VALUES (20, 16, 9776000, 9103000, NULL, N'2020/01/01', NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[tblLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNgachCongChuc] ON 

INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (1, N'V.07.01.01', N'Giảng viên cao cấp (hạng I)', N'Mã ngạch viên chức là giảng viên giảng dạy trong cơ sở giáo dục đại học công lập', 1, NULL, NULL, NULL, NULL, N'Giảng dạy trình độ cao đẳng, đại học trở lên; hướng dẫn và chấm đồ án, khóa luận tốt nghiệp cao đẳng, đại học; hướng dẫn luận văn thạc sĩ, luận án tiến sĩ; chủ trì hoặc tham gia các hội đồng đánh giá luận văn thạc sĩ, luận án tiến sĩ')
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (2, N'V.07.01.02', N'Giảng viên chính (hạng II)', N'Mã ngạch viên chức là giảng viên giảng dạy trong cơ sở giáo dục đại học công lập', 1, NULL, NULL, NULL, NULL, N'Giảng dạy, hướng dẫn và chấm đồ án, khóa luận tốt nghiệp trình độ cao đẳng, đại học,Tham gia giảng dạy chương trình đào tạo trình độ thạc sĩ, tiến sĩ và hướng dẫn, đánh giá luận văn thạc sĩ, luận án tiến sĩ nếu có đủ tiêu chuẩn theo quy định')
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (3, N'V.07.01.03', N'Giảng viên (hạng III)', N'Mã ngạch viên chức là giảng viên giảng dạy trong cơ sở giáo dục đại học công lập', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (4, N'V.09.02.01', N'Giảng viên giáo dục nghề nghiệp cao cấp (hạng I)', N'Mã ngạch viên chức là giảng viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (5, N'V.09.02.02', N'Giảng viên giáo dục nghề nghiệp chính (hạng II)', N'Mã ngạch viên chức là giảng viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (6, N'V.09.02.03', N'Giảng viên giáo dục nghề nghiệp lý thuyết (hạng III)  ', N'Mã ngạch viên chức là giảng viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (7, N'V.09.02.04', N'Giảng viên giáo dục nghề nghiệp thực hành (hạng III)', N'Mã ngạch viên chức là giảng viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (8, N'V.09.02.05', N'Giáo viên giáo dục nghề nghiệp hạng I', N'Mã số chức danh nghề nghiệp giáo viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (9, N'V.09.02.06', N' Giáo viên giáo dục nghề nghiệp hạng II ', N'Mã số chức danh nghề nghiệp giáo viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (10, N'V.09.02.07', N'Giáo viên giáo dục nghề nghiệp mảng lý thuyết hạng III', N'Mã số chức danh nghề nghiệp giáo viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (11, N'V.09.02.08', N'Giáo viên giáo dục nghề nghiệp mảng thực hành hạng III ', N'Mã số chức danh nghề nghiệp giáo viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNgachCongChuc] ([MaNgach], [MaSo], [TenNgach], [MoTa], [Status], [NgayTao], [NguoiTao], [DP1], [DP2], [GhiChu]) VALUES (12, N'V.09.02.09', N'Giáo viên giáo dục nghề nghiệp hạng IV', N'Mã số chức danh nghề nghiệp giáo viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblNgachCongChuc] OFF
GO
INSERT [dbo].[tblNganhDaoTao] ([MaNganh], [MaPK], [MaBMTT], [MaNganhTS], [TenNganh], [SoTinChi], [TrinhDo], [SoThang], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3], [He]) VALUES (N'CMW', N'CNTT', N'CNPM', N'CNTTTS', N'Công Nghệ Web', 150, 1, 48, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNganhDaoTao] ([MaNganh], [MaPK], [MaBMTT], [MaNganhTS], [TenNganh], [SoTinChi], [TrinhDo], [SoThang], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3], [He]) VALUES (N'CMWCD', N'CNTT', N'CNPM', N'CNTTTS', N'Công Nghệ Web Cao Đăng', 100, 2, 30, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNganhDaoTao] ([MaNganh], [MaPK], [MaBMTT], [MaNganhTS], [TenNganh], [SoTinChi], [TrinhDo], [SoThang], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3], [He]) VALUES (N'CNDD', N'CNTT', N'CNPM', N'CNTTTS', N'Công Nghệ Di Động', 150, 1, 48, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNganhDaoTao] ([MaNganh], [MaPK], [MaBMTT], [MaNganhTS], [TenNganh], [SoTinChi], [TrinhDo], [SoThang], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3], [He]) VALUES (N'CNWLT', N'CNTT', N'CNPM', N'CNTTTS', N'Công Nghệ Web Liên Thông', 100, 3, 30, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNganhDaoTao] ([MaNganh], [MaPK], [MaBMTT], [MaNganhTS], [TenNganh], [SoTinChi], [TrinhDo], [SoThang], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3], [He]) VALUES (N'KTPM', N'CNTT', N'CNPM', N'CNTTTS', N'Kiểm Thử Phần Mềm ', 150, 1, 48, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNganhDaoTao] ([MaNganh], [MaPK], [MaBMTT], [MaNganhTS], [TenNganh], [SoTinChi], [TrinhDo], [SoThang], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3], [He]) VALUES (N'MMTTT', N'CNTT', N'MMT', N'CNTTTS', N'Mạng Máy Tính và Truyền Thông', 150, 1, 48, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNganhDaoTao] ([MaNganh], [MaPK], [MaBMTT], [MaNganhTS], [TenNganh], [SoTinChi], [TrinhDo], [SoThang], [NamTS], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3], [He]) VALUES (N'TSCNTT', N'CNTT', N'CNPM', N'CNTTTS', N'Tiến Sĩ Công Nghệ Thông Tin ', 50, 4, 18, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblPhongKhoa] ([MaPK], [TenPhongKhoa], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Webiste], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'CNM', N'Khoa Công Nghệ May', 30, 2, N'Nhân Hòa - Mỹ Hào - Hưng Yên', NULL, NULL, N'http://www.fit.utehy.edu.vn/', NULL, CAST(N'2020-10-16T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblPhongKhoa] ([MaPK], [TenPhongKhoa], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Webiste], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'CNTT', N'Khoa Công Nghệ Thông Tin', 50, 1, N'Nhân Hòa - Mỹ Hào - Hưng Yên', NULL, N'fit.utehy@edu.vn.com', N'http://www.fit.utehy.edu.vn/', NULL, CAST(N'2020-10-16T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblPhongKhoa] ([MaPK], [TenPhongKhoa], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Webiste], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'KT', N'Khoa KInh Tế', 25, 4, N'Nhân Hòa - Mỹ Hào - Hưng Yên', NULL, NULL, N'http://www.fit.utehy.edu.vn/', NULL, CAST(N'2020-10-16T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
INSERT [dbo].[tblPhongKhoa] ([MaPK], [TenPhongKhoa], [SoLuongNhanSu], [PhanLoai], [DiaChi], [DienThoai], [Email], [Webiste], [GhiChu], [NgayTao], [NguoiTao], [DP1], [DP2], [DP3]) VALUES (N'NN', N'Khoa Ngoại Ngữ', 30, 3, N'Nhân Hòa - Mỹ Hào - Hưng Yên', NULL, NULL, N'http://www.fit.utehy.edu.vn/', NULL, CAST(N'2020-10-16T00:00:00.000' AS DateTime), N'Nguyễn Hải Đăng', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblTrinhDoHocVan] ON 

INSERT [dbo].[tblTrinhDoHocVan] ([MaTDHV], [TenHocVan], [NamTotNghiêp], [ChungChi], [ChuyenNganhDaoTao], [DonViCT], [TDTinHoc], [TDNgoaiNgu], [SoNamDay], [status], [DP1]) VALUES (1, N'Tiến Sĩ', CAST(N'2010-09-26T00:00:00.000' AS DateTime), N'Chứng chỉ Sư Pham, Tin học', N'Công Nghệ Phần Mềm', N'ĐH SPKT Hưng Yên', N'Đã được cấp', N'Ielts 7.0', N'Hon 10year', 1, NULL)
INSERT [dbo].[tblTrinhDoHocVan] ([MaTDHV], [TenHocVan], [NamTotNghiêp], [ChungChi], [ChuyenNganhDaoTao], [DonViCT], [TDTinHoc], [TDNgoaiNgu], [SoNamDay], [status], [DP1]) VALUES (2, N'Tiến Sĩ ', CAST(N'2010-09-26T00:00:00.000' AS DateTime), N'Chứng chỉ Sư Pham, Tin học', N'Mạng Máy Tính', N'ĐH SPKT Hưng Yên', N'Đã được cấp', N'Ielts 7.0', N'Hon 10year', 1, NULL)
INSERT [dbo].[tblTrinhDoHocVan] ([MaTDHV], [TenHocVan], [NamTotNghiêp], [ChungChi], [ChuyenNganhDaoTao], [DonViCT], [TDTinHoc], [TDNgoaiNgu], [SoNamDay], [status], [DP1]) VALUES (3, N'Tiến Sĩ', CAST(N'2010-09-26T00:00:00.000' AS DateTime), N'Chứng chỉ Sư Pham, Tin học', N'Hệ Thống Nhúng', N'ĐH SPKT Hưng Yên', N'Đã được cấp', N'Ielts 7.0', N'Hon 10year', 1, NULL)
INSERT [dbo].[tblTrinhDoHocVan] ([MaTDHV], [TenHocVan], [NamTotNghiêp], [ChungChi], [ChuyenNganhDaoTao], [DonViCT], [TDTinHoc], [TDNgoaiNgu], [SoNamDay], [status], [DP1]) VALUES (4, N'Thạc Sĩ', CAST(N'2010-09-26T00:00:00.000' AS DateTime), N'Chứng chỉ Sư Pham, Tin học', N'Công Nghệ Phần Mềm', N'ĐH SPKT Hưng Yên', N'Đã được cấp', N'Ielts 7.0', N'Hon 10year', 1, NULL)
INSERT [dbo].[tblTrinhDoHocVan] ([MaTDHV], [TenHocVan], [NamTotNghiêp], [ChungChi], [ChuyenNganhDaoTao], [DonViCT], [TDTinHoc], [TDNgoaiNgu], [SoNamDay], [status], [DP1]) VALUES (5, N'Tiến Sĩ', CAST(N'2013-09-26T00:00:00.000' AS DateTime), N'Chứng chỉ Sư Pham, Ngoại Ngữ', N'Chuyên Ngành Khác', N'ĐH SPKT Hưng Yên', N'Đã được cấp', N'Ielts 8.0', N'Hon 7year', 1, NULL)
SET IDENTITY_INSERT [dbo].[tblTrinhDoHocVan] OFF
GO
INSERT [dbo].[user] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'14ff5489-9b84-4bd4-801d-55374bdbe15b', N'nguyễn minh khôi', CAST(N'2020-10-12' AS Date), N'hưngyene', N'Nam', N'khoi@gmail.com', N'khoi', N'123@123', N'Admin', N'assets/images/Screenshot (4).png')
INSERT [dbo].[user] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'3d5111a9-6ff0-45c7-89c6-cbc68c7f8744', N'Trần Thị Hoa66668888', CAST(N'2020-10-10' AS Date), N'Hà Nội888', N'Nam', N'hoa@gmail.com', N'hoa', N'hoa@123', N'Admin', NULL)
INSERT [dbo].[user] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'531ecaad-c81d-4407-ae8f-e01efb36d2b5', N'nguyễn thanh huệ', CAST(N'2020-10-13' AS Date), N'hưng yên', N'Nam', N'hue@gmail.com', N'huentt', N'123@123', N'User', NULL)
INSERT [dbo].[user] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'82bd035e-2772-4f96-aab9-3ddb050817eb', N'Nguyễn Hữu Đông', CAST(N'1969-12-30' AS Date), N'Hưng yên', N'Nữ', N'dong@gmail.com', N'dongnh', N'123@123', N'User', N'assets/images/Screenshot (8).png')
INSERT [dbo].[user] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'885f03ad-46dc-442a-be3a-29f264496409', N'Nguyễn Hải Đăng', CAST(N'1999-03-31' AS Date), N'Văn Giang Hưng Yên', N'Nam', N'haidangnguyen3103@gamil.com', N'haidang', N'123@123', N'Admin', NULL)
INSERT [dbo].[user] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'c5799c78-3f78-4e40-b2fc-23ec8073ddfd', N'Nguyễn Thị Mai', CAST(N'2020-10-13' AS Date), N'Hải Phòng', N'Nam', N'mai@gmail.com', N'mai', N'mai@123', N'Admin', N'assets/images/Screenshot (4).png')
INSERT [dbo].[user] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'cc49bfa6-ebde-484b-abad-5ae180a64567', N'Admin', CAST(N'1977-01-08' AS Date), N'Hưng Yên', N'Nam', N'admin@gmail.com', N'admin', N'admin', N'Admin', NULL)
GO
ALTER TABLE [dbo].[tblChiTietPhieuThu] ADD  CONSTRAINT [DF_tblChiTietPhieuThu_HoaDonDienTu]  DEFAULT ((0)) FOR [HoaDonDienTu]
GO
ALTER TABLE [dbo].[tblDiemHocPhan] ADD  CONSTRAINT [DF_tblDiemHocPhan_HeSo]  DEFAULT ((1.0)) FOR [HeSo]
GO
/****** Object:  StoredProcedure [dbo].[sp_canbogiangvien_create]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_canbogiangvien_create]
(@MaCBGV          varchar(10), 
 @MaPK      varchar(10) ,
 @MaBMTT       varchar(10) ,
 @MaNgach		bigint,
 @MaBac		bigint,
 @MaTDHV		bigint,
 @MaKTKL		bigint,
 @HoVaTen    nvarchar(50)  ,
 @Image    nvarchar(255)  ,
 @NgaySinh      datetime ,
 @GioiTinh        int ,
 @MatKhau       ntext ,
 @DienThoai   ntext ,
 @Email       ntext ,
 @ChucDanh nvarchar(10),
 @SoTaiKhoan text,
 @Status int,
 @Quyen int,
 @QueQuan    nvarchar(255)  ,
 @DanToc    nvarchar(50)  ,
 @TonGiao    nvarchar(50)  ,
 @TrinhDo    nvarchar(255)  ,
 @KinhNghiem    ntext  ,
 @CMND    varchar(20)  ,
 @NgayCap    datetime  ,
 @AiCap   nvarchar(255)  ,
 @NgayTao datetime,
 @NguoiTao nvarchar(50)
)
AS
    BEGIN
      INSERT INTO [tblCanBoGiangVien]
                (
				 	 [MaCBGV]               , 
					 MaPK            ,
					 MaBMTT           ,
					 MaNgach			, 
					 MaBac				,
					 MaTDHV				,
					 MaKTKL				,
					 HoVaTen           ,
					 Image				,
					 NgaySinh            ,
					 GioiTinh           ,
					 MatKhau            ,
					 DienThoai			,
					 Email				,
					 ChucDanh			,
					 SoTaiKhoan			,
					 Status		,
					 Quyen		,
					 QueQuan	,
					 DanToc		,
					 TonGiao	,	
					 TrinhDo	,
					 KinhNghiem	,
					 CMND		, 
					 NgayCap	,
					 AiCap		,
					 NgayTao	,
					 NguoiTao 
					
				)
                VALUES
                (
				     @MaCBGV             , 
				     @MaPK            ,
					 @MaBMTT           ,
					 @MaNgach			, 
					 @MaBac				,
					 @MaTDHV				,
					 @MaKTKL				,
					 @HoVaTen           ,
					 @Image				,
					 @NgaySinh            ,
					 @GioiTinh           ,
					 @MatKhau            ,
					 @DienThoai			,
					 @Email				,
					 @ChucDanh			,
					 @SoTaiKhoan			,
					 @Status		,
					 @Quyen		,
					 @QueQuan	,
					 @DanToc		,
					 @TonGiao	,	
					 @TrinhDo	,
					 @KinhNghiem	,
					 @CMND		,
					 @NgayCap	,
					 @AiCap		,
					 @NgayTao	,
					 @NguoiTao 
					
				);
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_canbogiangvien_delete]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_canbogiangvien_delete]
(@MaCBGV              varchar(10) 
)
AS
    BEGIN
		delete from [tblCanBoGiangVien] where MaCBGV = @MaCBGV;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_canbogiangvien_get_by_id]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_canbogiangvien_get_by_id](@MaCBGV VARCHAR(10))
AS
    BEGIN
        SELECT   [MaCBGV]               , 
					 MaPK            ,
					 MaBMTT           ,
					 MaNgach			, 
					 MaBac				,
					 MaTDHV				,
					 MaKTKL				,
					 HoVaTen           ,
					 Image				,
					 NgaySinh            ,
					 GioiTinh           ,
					 MatKhau            ,
					 DienThoai			,
					 Email				,
					 ChucDanh			,
					 SoTaiKhoan			,
					 Status		,
					 Quyen		,
					 QueQuan	,
					 DanToc		,
					 TonGiao	,	
					 TrinhDo	,
					 KinhNghiem	,
					 CMND		,
					 NgayCap	,
					 AiCap		,
					 NgayTao	,
					 NguoiTao 
        FROM [tblCanBoGiangVien]
      where  [MaCBGV] = @MaCBGV;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_canbogiangvien_search]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_canbogiangvien_search] (@page_index  INT, 
                                       @page_size   INT,
									   @HoVaTen nvarchar(50)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY c.HoVaTen ASC)) AS RowNumber, 
                     c.MaCBGV              , 
					 c.MaPK            ,
					 c.MaBMTT           ,
					 c.MaNgach			, 
					 c.MaBac				,
					 c.MaTDHV				,
					 c.MaKTKL				,
					 c.HoVaTen           ,
					 c.Image				,
					 c.NgaySinh            ,
					 c.GioiTinh           ,
					 c.MatKhau            ,
					 c.DienThoai			,
					 c.Email				,
					 c.ChucDanh			,
					 c.SoTaiKhoan			,
					 c.Status		,
					 c.Quyen		,
					 c.QueQuan	,
					 c.DanToc		,
					 c.TonGiao	,	
					 c.TrinhDo	,
					 c.KinhNghiem	,
					 c.CMND			,
					 c.NgayCap		,
					 c.AiCap		,
					 c.NgayTao		,
					 c.NguoiTao 
                        INTO #Results1
                        FROM [tblCanBoGiangVien] AS c
						WHERE  ((@HoVaTen = '') OR (c.HoVaTen LIKE '%' + @HoVaTen + '%'));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                         SELECT(ROW_NUMBER() OVER(
                              ORDER BY c.HoVaTen ASC)) AS RowNumber, 
                     c.MaCBGV              , 
					 c.MaPK            ,
					 c.MaBMTT           ,
					 c.MaNgach			, 
					 c.MaBac				,
					 c.MaTDHV				,
					 c.MaKTKL				,
					 c.HoVaTen           ,
					 c.Image				,
					 c.NgaySinh            ,
					 c.GioiTinh           ,
					 c.MatKhau            ,
					 c.DienThoai			,
					 c.Email				,
					 c.ChucDanh			,
					 c.SoTaiKhoan			,
					 c.Status		,
					 c.Quyen		,
					 c.QueQuan	,
					 c.DanToc		,
					 c.TonGiao	,	
					 c.TrinhDo	,
					 c.KinhNghiem	,
					 c.CMND			,
					 c.NgayCap	,
					 c.AiCap		,
					 c.NgayTao	,
					 c.NguoiTao  
                        INTO #Results2
                        FROM [tblCanBoGiangVien] AS c
						WHERE  ((@HoVaTen = '') OR (c.HoVaTen LIKE '%' + @HoVaTen + '%'));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;
                        DROP TABLE #Results2;
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_canbogiangvien_update]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_canbogiangvien_update]
(@MaCBGV          varchar(10), 
 @MaPK      varchar(10) ,
 @MaBMTT       varchar(10) ,
 @MaNgach		bigint,
 @MaBac		bigint,
 @MaTDHV		bigint,
 @MaKTKL		bigint,
 @HoVaTen    nvarchar(50)  ,
 @Image    nvarchar(255)  ,
 @NgaySinh      datetime ,
 @GioiTinh        int ,
 @MatKhau       ntext ,
 @DienThoai   ntext ,
 @Email       ntext ,
 @ChucDanh nvarchar(10),
 @SoTaiKhoan text,
 @Status int,
 @Quyen int,
 @QueQuan    nvarchar(255)  ,
 @DanToc    nvarchar(50)  ,
 @TonGiao    nvarchar(50)  ,
 @TrinhDo    nvarchar(255)  ,
 @KinhNghiem    ntext  ,
 @CMND    varchar(20)  ,
 @NgayCap    datetime  ,
 @AiCap   nvarchar(255)  ,
 @NgayTao datetime,
 @NguoiTao nvarchar(50)
)
AS
    BEGIN
   update [tblCanBoGiangVien] set 
					 MaPK=@MaPK           ,
					 MaBMTT=@MaBMTT           ,
					 MaNgach= @MaNgach			, 
					 MaBac	= @MaBac			,
					 MaTDHV	= @MaTDHV			,
					 MaKTKL	= @MaKTKL			,
					 HoVaTen=@HoVaTen           ,
					 Image = @Image				,
					 NgaySinh=@NgaySinh           ,
					 GioiTinh=@GioiTinh           ,
					 MatKhau=@MatKhau            ,
					 DienThoai=@DienThoai    ,
					 Email=@Email,
					 ChucDanh=@ChucDanh,
					 SoTaiKhoan=@SoTaiKhoan,
					 Status	 = @Status	,
					 Quyen	= @Quyen	,
					 QueQuan = @QueQuan	,
					 DanToc	= @DanToc	,
					 TonGiao = @TonGiao	,	
					 TrinhDo	= @TrinhDo,
					 KinhNghiem = @KinhNghiem	,
					 CMND = @CMND		,
					 NgayCap= @NgayCap	,
					 AiCap	= @AiCap	,
					 NgayTao=@NgayTao,
					 NguoiTao=@NguoiTao
				where MaCBGV = @MaCBGV;
			 
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_khoanthu_create]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_khoanthu_create]
(@MaKhoanThu         varchar(10), 
 @MoTa     nvarchar(1000) ,
 @TinhChat      int ,
 @HoaDonDienTu    int  ,
 @NgayTao     datetime ,
 @NguoiTao        nvarchar(50)
)
AS
    BEGIN
      INSERT INTO [tblKhoanThu]
                (
				 	 [MaKhoanThu]               , 
					 MoTa             ,
					 TinhChat            ,
					 HoaDonDienTu           ,
					 NgayTao,
					 NguoiTao 
				)
                VALUES
                (
				     @MaKhoanThu               , 
					 @MoTa             ,
					 @TinhChat            ,
					 @HoaDonDienTu ,
					 @NgayTao,
					 @NguoiTao
					
				);
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_khoanthu_delete]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_khoanthu_delete]
(@MaKhoanThu              varchar(10) 
)
AS
    BEGIN
		delete from [tblKhoanThu] where MaKhoanThu = @MaKhoanThu;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_khoanthu_get_by_id]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_khoanthu_get_by_id](@MaKhoanThu VARCHAR(10))
AS
    BEGIN
        SELECT    [MaKhoanThu]               , 
					 MoTa             ,
					 TinhChat            ,
					 HoaDonDienTu           ,
					 NgayTao,
					 NguoiTao 
        FROM [tblKhoanThu]
      where  [MaKhoanThu] = @MaKhoanThu;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_khoanthu_search]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_khoanthu_search] (@page_index  INT, 
                                       @page_size   INT,
									   @MoTa  nvarchar(1000)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY k.MoTa ASC)) AS RowNumber, 
                     k.MaKhoanThu              , 
					 k.MoTa             ,
					 k.TinhChat            ,
					 k.HoaDonDienTu           ,
					 k.NgayTao,
					 k.NguoiTao 
                        INTO #Results1
                        FROM [tblKhoanThu] AS k
						WHERE (@MoTa='' OR  (k.MoTa LIKE '%' + @MoTa + '%'));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                          SELECT(ROW_NUMBER() OVER(
                              ORDER BY k.MoTa ASC)) AS RowNumber, 
                     k.MaKhoanThu              , 
					 k.MoTa             ,
					 k.TinhChat            ,
					 k.HoaDonDienTu           ,
					 k.NgayTao,
					 k.NguoiTao 
                        INTO #Results2
                        FROM [tblKhoanThu] AS k
						WHERE  (@MoTa='' OR (k.MoTa LIKE '%' + @MoTa + '%'));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;
                        DROP TABLE #Results2;
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_khoanthu_update]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_khoanthu_update]
(@MaKhoanThu         varchar(10), 
 @MoTa     nvarchar(1000) ,
 @TinhChat      int ,
 @HoaDonDienTu    int  ,
 @NgayTao     datetime ,
 @NguoiTao        nvarchar(50)
)
AS
    BEGIN
   update [tblKhoanThu] set 
                     MoTa=@MoTa             ,
					 TinhChat=@TinhChat            ,
					 HoaDonDienTu=@HoaDonDienTu           ,
					 NgayTao=@NgayTao,
					 NguoiTao=@NguoiTao 
				where MaKhoanThu = @MaKhoanThu;
			 
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_lophoc_create]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_lophoc_create]
(@MaLop              varchar(10), 
 @TenLop         varchar(10) ,
 @MaNganhHoc         varchar(10)  ,
 @MaKhoaQuanLy        varchar(10)  ,
 @NienKhoa        varchar(10)  ,
 @TrinhDo         int ,
 @He         int ,
 @NgayNhapHoc       datetime ,
 @SiSo        int ,
 @TrangThai int,
 @GhiChu ntext,
 @NgayTao datetime,
 @NguoiTao nvarchar(50),
 @DP1 ntext,
 @DP2 ntext,
 @DP3 ntext
)
AS
    BEGIN
      INSERT INTO [tblLophoc]
                (
				 	 [MaLop]               , 
					 TenLop            ,
					 MaNganhHoc           ,
					 MaKhoaQuanLy           ,
					 NienKhoa            ,
					 TrinhDo           ,
					 He            ,
					 NgayNhapHoc    ,
					 SiSo,
					 TrangThai,
					 GhiChu,
					 NgayTao,
					 NguoiTao ,
					 DP1,
					 DP2,
					 DP3
				)
                VALUES
                (
				 @MaLop               , 
				 @TenLop           ,
				 @MaNganhHoc          ,
				 @MaKhoaQuanLy           ,
				 @NienKhoa           ,
				 @TrinhDo           ,
				 @He         ,
				 @NgayNhapHoc           ,
				 @SiSo ,
				 @TrangThai,
				 @GhiChu,
				 @NgayTao,
				 @NguoiTao,
				 @DP1,
				 @DP2,
				 @DP3
				);
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_lophoc_delete]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_lophoc_delete]
(@MaLop              varchar(10) 
)
AS
    BEGIN
		delete from [tblLophoc] where MaLop = @MaLop;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_lophoc_get_by_id]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_lophoc_get_by_id](@MaLop VARCHAR(10))
AS
    BEGIN
        SELECT  [MaLop]               , 
					 TenLop            ,
					 MaNganhHoc           ,
					 MaKhoaQuanLy           ,
					 NienKhoa            ,
					 TrinhDo           ,
					 He            ,
					 NgayNhapHoc    ,
					 SiSo,
					 TrangThai,
					 GhiChu,
					 NgayTao,
					 NguoiTao 
        FROM [tblLophoc]
      where  [MaLop] = @MaLop;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_lophoc_search]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_lophoc_search] (@page_index  INT, 
                                       @page_size   INT,
									   @TenLop varchar(10),
									    @MaNganhHoc varchar(10)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY l.TenLop ASC)) AS RowNumber, 
                             l.MaLop              , 
							 l.TenLop           ,
							 l.MaNganhHoc          ,
							 l.MaKhoaQuanLy           ,
							 l.NienKhoa           ,
							 l.TrinhDo           ,
							 l.He         ,
							 l.NgayNhapHoc           ,
							 l.SiSo  ,
							 l.TrangThai,
							 l.GhiChu,
							 l.NgayTao,
							 l.NguoiTao
                        INTO #Results1
                        FROM [tblLophoc] AS l
						WHERE  ((@TenLop = '') OR (l.TenLop LIKE '%' + @TenLop + '%')) and  ((@MaNganhHoc = '') OR (l.MaNganhHoc = @MaNganhHoc));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                         SELECT(ROW_NUMBER() OVER(
                              ORDER BY l.TenLop ASC)) AS RowNumber, 
                             l.MaLop              , 
							 l.TenLop           ,
							 l.MaNganhHoc          ,
							 l.MaKhoaQuanLy           ,
							 l.NienKhoa           ,
							 l.TrinhDo           ,
							 l.He         ,
							 l.NgayNhapHoc           ,
							 l.SiSo  ,
							 l.TrangThai,
							 l.GhiChu,
							 l.NgayTao,
							 l.NguoiTao
                        INTO #Results2
                        FROM [tblLophoc] AS l
						WHERE  ((@TenLop = '') OR (l.TenLop LIKE '%' + @TenLop + '%')) and  ((@MaNganhHoc = '') OR (l.MaNganhHoc = @MaNganhHoc));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;
                        DROP TABLE #Results2;
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_lophoc_update]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_lophoc_update]
(@MaLop              varchar(10), 
 @TenLop         varchar(10) ,
 @NienKhoa        varchar(10)  ,
 @TrinhDo         int ,
 @He         int ,
 @NgayNhapHoc       datetime ,
 @SiSo        int ,
 @TrangThai int,
 @NgayTao datetime,
 @NguoiTao nvarchar(50)
)
AS
    BEGIN
   update [tblLophoc] set 
				TenLop= @TenLop          ,
				NienKhoa= @NienKhoa           ,
				TrinhDo= @TrinhDo           ,
				He= @He           ,
				NgayNhapHoc = @NgayNhapHoc           ,
				SiSo= @SiSo ,
				TrangThai = @TrangThai,
				NgayTao=@NgayTao,
				NguoiTao=@NguoiTao
				where MaLop = @MaLop;
			 
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_nganhang_create]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_nganhang_create]
(@MaNganHang       varchar(10), 
 @Ten   nvarchar(1000) ,
 @DiaChi      text ,
 @MatKhau    text  ,
 @KichHoat     int ,
 @GhiChu        text,
 @NgayTao datetime,
 @NguoiTao nvarchar(50)
)
AS
    BEGIN
      INSERT INTO [tblNganHang]
                (
				 	 [MaNganHang]               , 
					 Ten             ,
					 DiaChi            ,
					 MatKhau           ,
					 KichHoat,
					 GhiChu ,
					 NgayTao,
					 NguoiTao 
					 
				)
                VALUES
                (
				     @MaNganHang              , 
					 @Ten             ,
					 @DiaChi            ,
					 @MatKhau           ,
					 @KichHoat,
					 @GhiChu ,
					 @NgayTao,
					 @NguoiTao
					
				);
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_nganhang_delete]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_nganhang_delete]
(@MaNganHang              varchar(10) 
)
AS
    BEGIN
		delete from [tblNganHang] where MaNganHang = @MaNganHang;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_nganhang_get_by_id]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_nganhang_get_by_id](@MaNganHang VARCHAR(10))
AS
    BEGIN
        SELECT    [MaNganHang]               , 
					 Ten             ,
					 DiaChi            ,
					 MatKhau           ,
					 KichHoat,
					 GhiChu ,
					 NgayTao,
					 NguoiTao 
        FROM [tblNganHang]
      where  [MaNganHang] = @MaNganHang;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_nganhang_search]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_nganhang_search] (@page_index  INT, 
                                       @page_size   INT,
									   @Ten  nvarchar(1000)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY n.Ten ASC)) AS RowNumber, 
                     n.MaNganHang              , 
					 n.Ten             ,
					 n.DiaChi            ,
					 n.MatKhau           ,
					 n.KichHoat,
					 n.GhiChu ,
					 n.NgayTao,
					 n.NguoiTao 
                        INTO #Results1
                        FROM [tblNganHang] AS n
						WHERE (@Ten='' OR  (n.Ten LIKE '%' + @Ten + '%'));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                            SELECT(ROW_NUMBER() OVER(
                              ORDER BY n.Ten ASC)) AS RowNumber, 
                     n.MaNganHang              , 
					 n.Ten             ,
					 n.DiaChi            ,
					 n.MatKhau           ,
					 n.KichHoat,
					 n.GhiChu ,
					 n.NgayTao,
					 n.NguoiTao 
                        INTO #Results2
                         FROM [tblNganHang] AS n
						WHERE (@Ten='' OR  (n.Ten LIKE '%' + @Ten + '%'));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;
                        DROP TABLE #Results2;
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_nganhang_update]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_nganhang_update]
(@MaNganHang       varchar(10), 
 @Ten   nvarchar(1000) ,
 @DiaChi      text ,
 @MatKhau    text  ,
 @KichHoat     int ,
 @GhiChu text,
 @NgayTao datetime,
 @NguoiTao nvarchar(50)
)
AS
    BEGIN
   update [tblNganHang] set 
                     Ten=@Ten             ,
					 DiaChi=@DiaChi            ,
					 MatKhau=@MatKhau           ,
					 KichHoat=@KichHoat,
					 GhiChu=@GhiChu,
					 NgayTao=@NgayTao,
					 NguoiTao=@NguoiTao 
				where MaNganHang = @MaNganHang;
			 
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_phieuthu_create]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_phieuthu_create]
(@MaPhieuThu           varchar(50), 
 @SoHieu          int ,
 @NamTaiKhoa         int  ,
 @MaGiaoDich          varchar(50)  ,
 @Ngay       date  ,
 @MoTa          text ,
 @NguoiThu        nvarchar(50) ,
 @MaNguoiThu       varchar(50)  ,
 @TongTien        money ,
 @HoaDonDienTu int,
 @GhiChu text
)
AS
    BEGIN
      INSERT INTO [tblPhieuThu]
                (
				 	 [MaPhieuThu]               , 
					 SoHieu           ,
					 NamTaiKhoa          ,
					 MaGiaoDich           ,
					 Ngay           ,
					 MoTa           ,
					 NguoiThu         ,
					 MaNguoiThu           ,
					 TongTien    ,
					 HoaDonDienTu,
					 GhiChu
				)
                VALUES
                (
				    @MaPhieuThu              , 
					@SoHieu           ,
					@NamTaiKhoa          ,
					@MaGiaoDich           ,
					@Ngay           ,
					@MoTa           ,
					@NguoiThu         ,
					@MaNguoiThu           ,
					@TongTien    ,
					@HoaDonDienTu,
					@GhiChu
				);
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_phieuthu_get_by_id]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_phieuthu_get_by_id](@MaPhieuThu VARCHAR(50))
AS
    BEGIN
        SELECT   [MaPhieuThu]               , 
					 SoHieu           ,
					 NamTaiKhoa          ,
					 MaGiaoDich           ,
					 Ngay           ,
					 MoTa           ,
					 NguoiThu         ,
					 MaNguoiThu           ,
					 TongTien    ,
					 HoaDonDienTu,
					 GhiChu
        FROM [tblPhieuThu]
      where  [MaPhieuThu] = @MaPhieuThu;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_phieuthu_search]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_phieuthu_search] (@page_index  INT, 
                                       @page_size   INT,
									   @MaGiaoDich varchar(50)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY p.Ngay ASC)) AS RowNumber, 
                             p.MaPhieuThu             , 
							 p.SoHieu           ,
							 p.NamTaiKhoa          ,
							 p.MaGiaoDich           ,
							 p.Ngay           ,
							 p.MoTa           ,
							 p.NguoiThu         ,
							 p.MaNguoiThu           ,
							 p.TongTien  ,
							 p.HoaDonDienTu,
							 p.GhiChu
                        INTO #Results1
                        FROM [tblPhieuThu] AS p
						WHERE ((@MaGiaoDich = '') OR (p.MaGiaoDich LIKE '%' + @MaGiaoDich + '%'));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                           SELECT(ROW_NUMBER() OVER(
                              ORDER BY p.Ngay ASC)) AS RowNumber, 
                             p.MaPhieuThu             , 
							 p.SoHieu           ,
							 p.NamTaiKhoa          ,
							 p.MaGiaoDich           ,
							 p.Ngay           ,
							 p.MoTa           ,
							 p.NguoiThu         ,
							 p.MaNguoiThu           ,
							 p.TongTien  ,
							 p.HoaDonDienTu,
							 p.GhiChu
                        INTO #Results2
                        FROM [tblPhieuThu] AS p
                       	WHERE ((@MaGiaoDich = '') OR (p.MaGiaoDich LIKE '%' + @MaGiaoDich + '%'));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;
                        DROP TABLE #Results2;
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sinhvien_create]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sinhvien_create]
(@MaSV              varchar(10), 
 @HoVaTen       nvarchar(50) ,
 @NgaySinh        datetime ,
 @GioiTinh      tinyint  ,
 @DanToc        nvarchar(50) ,
 @SoDinhDanh        varchar(50) ,
 @NoiCap        nvarchar(50) ,
 @NgayCap    datetime ,
 @DienThoai       varchar(50) ,
 @Email ntext,
 @MatKhau text,
 @Quyen int,
 @TrangThai int,
 @Anh ntext,
 @NgayTao datetime,
 @NguoiTao nvarchar(50)
)
AS
    BEGIN
      INSERT INTO [tblSinhvien]
                (
				 	 [MaSV]               , 
					 HoVaTen            ,
					 NgaySinh           ,
					 GioiTinh           ,
					 DanToc            ,
					 SoDinhDanh           ,
					 NoiCap            ,
					 NgayCap    ,
					 DienThoai,
					 Email,
					 MatKhau,
					 Quyen,
					 TrangThai,
					 Anh,
					 NgayTao,
					 NguoiTao 
					
				)
                VALUES
                (
				 @MaSV              , 
				 @HoVaTen            ,
				 @NgaySinh           ,
				 @GioiTinh           ,
				 @DanToc            ,
				 @SoDinhDanh           ,
				 @NoiCap            ,
				 @NgayCap    ,
				 @DienThoai,
				 @Email,
				 @MatKhau,
				 @Quyen,
				 @TrangThai,
				 @Anh,
				 @NgayTao,
				 @NguoiTao
				 
				);
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sinhvien_delete]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_sinhvien_delete]
(@MaSV              varchar(10) 
)
AS
    BEGIN
		delete from [tblSinhvien] where MaSV = @MaSV;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sinhvien_get_by_id]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_sinhvien_get_by_id](@MaSV VARCHAR(10))
AS
    BEGIN
        SELECT   [MaSV]               , 
					 HoVaTen            ,
					 NgaySinh           ,
					 GioiTinh           ,
					 DanToc            ,
					 SoDinhDanh           ,
					 NoiCap            ,
					 NgayCap    ,
					 DienThoai,
					 Email,
					 MatKhau,
					 Quyen,
					 TrangThai,
					 Anh,
					 NgayTao,
					 NguoiTao 
        FROM [tblSinhvien]
      where  [MaSV] = @MaSV;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sinhvien_search]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_sinhvien_search] (@page_index  INT, 
                                       @page_size   INT,
									   @HoVaTen nvarchar(50)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.HoVaTen ASC)) AS RowNumber, 
                     s.MaSV               , 
					 s.HoVaTen            ,
					 s.NgaySinh           ,
					 s.GioiTinh           ,
					 s.DanToc            ,
					 s.SoDinhDanh           ,
					 s.NoiCap            ,
					 s.NgayCap    ,
					 s.DienThoai,
					 s.Email,
					 s.MatKhau,
					 s.Quyen,
					 s.TrangThai,
					 s.Anh,
					 s.NgayTao,
					 s.NguoiTao 
                        INTO #Results1
                        FROM [tblSinhvien] AS s
						WHERE  ((@HoVaTen = '') OR (s.HoVaTen LIKE '%' + @HoVaTen + '%'));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                         SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.HoVaTen ASC)) AS RowNumber, 
                     s.MaSV               , 
					 s.HoVaTen            ,
					 s.NgaySinh           ,
					 s.GioiTinh           ,
					 s.DanToc            ,
					 s.SoDinhDanh           ,
					 s.NoiCap            ,
					 s.NgayCap    ,
					 s.DienThoai,
					 s.Email,
					 s.MatKhau,
					 s.Quyen,
					 s.TrangThai,
					 s.Anh,
					 s.NgayTao,
					 s.NguoiTao 
                        INTO #Results2
                        FROM [tblSinhvien] AS s
						WHERE  ((@HoVaTen = '') OR (s.HoVaTen LIKE '%' + @HoVaTen + '%'));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;
                        DROP TABLE #Results2;
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sinhvien_update]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sinhvien_update]
(@MaSV              varchar(10), 
 @HoVaTen       nvarchar(50) ,
 @NgaySinh        datetime ,
 @GioiTinh      tinyint  ,
 @DanToc        nvarchar(50) ,
 @SoDinhDanh        varchar(50) ,
 @NoiCap        nvarchar(50) ,
 @NgayCap    datetime ,
 @DienThoai       varchar(50) ,
 @Email ntext,
 @MatKhau text,
 @Quyen int,
 @TrangThai int,
 @Anh ntext,
 @NgayTao datetime,
 @NguoiTao nvarchar(50)
)
AS
    BEGIN
   update [tblSinhvien] set 
				HoVaTen= @HoVaTen          ,
				NgaySinh= @NgaySinh           ,
				GioiTinh= @GioiTinh           ,
				DanToc = @DanToc           ,
				SoDinhDanh= @SoDinhDanh ,
				NoiCap = @NoiCap,
				NgayCap=@NgayCap,
				DienThoai=@DienThoai,
				Email=@Email,
				MatKhau=@MatKhau,
				Quyen=@Quyen,
				TrangThai=@TrangThai,
				Anh=@Anh,
				NgayTao=@NgayTao,
				NguoiTao=@NguoiTao
				where MaSV = @MaSV;
			 
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_user_create]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_user_create]
(@user_id              varchar(50), 
 @hoten          nvarchar(150) ,
 @ngaysinh         date  ,
 @diachi          nvarchar(250)  ,
 @gioitinh         nvarchar(30)  ,
 @email          varchar(150) ,
 @taikhoan         varchar(30) ,
 @matkhau         varchar(60)  ,
 @role          varchar(30) ,
 @image_url varchar(300) 
)
AS
    BEGIN
      INSERT INTO [user]
                (
				 	 [user_id]               , 
					 hoten           ,
					 ngaysinh          ,
					 diachi           ,
					 gioitinh           ,
					 email           ,
					 taikhoan         ,
					 matkhau           ,
					 role    ,
					 image_url
				)
                VALUES
                (
				 @user_id               , 
				 @hoten           ,
				 @ngaysinh          ,
				 @diachi           ,
				 @gioitinh           ,
				 @email           ,
				 @taikhoan         ,
				 @matkhau           ,
				 @role ,
				 @image_url
				);
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_user_delete]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_user_delete]
(@user_id              varchar(50) 
)
AS
    BEGIN
		delete from [user] where user_id = @user_id;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_user_get_by_id]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_user_get_by_id](@user_id VARCHAR(50))
AS
    BEGIN
        SELECT  [user_id]               , 
					 hoten           ,
					 ngaysinh          ,
					 diachi           ,
					 gioitinh           ,
					 email           ,
					 taikhoan         ,
					 matkhau           ,
					 role      ,
					 image_url  
        FROM [user]
      where  [user_id] = @user_id;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_user_get_by_username_password]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_user_get_by_username_password](@taikhoan varchar(30), @matkhau varchar(60))
AS
    BEGIN
        SELECT  [user_id]               , 
					 hoten           ,
					 ngaysinh          ,
					 diachi           ,
					 gioitinh           ,
					 email           ,
					 taikhoan         ,
					 role      ,
					 image_url  
        FROM [user]
      where  taikhoan = @taikhoan and matkhau = @matkhau ;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_user_search]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_user_search] (@page_index  INT, 
                                       @page_size   INT,
									   @hoten nvarchar(150),
									    @taikhoan varchar(30)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY u.hoten ASC)) AS RowNumber, 
                             u.user_id              , 
							 u.hoten           ,
							 u.ngaysinh          ,
							 u.diachi           ,
							 u.gioitinh           ,
							 u.email           ,
							 u.taikhoan         ,
							 u.matkhau           ,
							 u.role  ,
							 u.image_url  
                        INTO #Results1
                        FROM [user] AS u
						WHERE (u.taikhoan <> 'Admin') and ((@hoten = '') OR (u.hoten LIKE '%' + @hoten + '%')) and  ((@taikhoan = '') OR (u.taikhoan = @taikhoan));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                         SELECT(ROW_NUMBER() OVER(
                              ORDER BY u.hoten ASC)) AS RowNumber, 
                             u.user_id              , 
							 u.hoten           ,
							 u.ngaysinh          ,
							 u.diachi           ,
							 u.gioitinh           ,
							 u.email           ,
							 u.taikhoan         ,
							 u.matkhau           ,
							 u.role     ,
							 u.image_url  
                        INTO #Results2
                        FROM [user] AS u
						WHERE (u.taikhoan <> 'Admin') and ((@hoten = '') OR (u.hoten LIKE '%' + @hoten + '%')) and  ((@taikhoan = '') OR (u.taikhoan = @taikhoan));
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;
                        DROP TABLE #Results2;
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_user_update]    Script Date: 11/8/2020 8:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_user_update]
(@user_id              varchar(50), 
 @hoten          nvarchar(150) ,
 @ngaysinh         date  ,
 @diachi          nvarchar(250)  ,
 @gioitinh         nvarchar(30)  ,
 @email          varchar(150) ,
 @taikhoan         varchar(30) ,
 @matkhau         varchar(60)  ,
 @role          varchar(30),
 @image_url         varchar(300)
)
AS
    BEGIN
   update [user] set 
				hoten= @hoten           ,
				ngaysinh= @ngaysinh          ,
				diachi= @diachi           ,
				gioitinh= @gioitinh           ,
				email= @email           ,
				matkhau = @matkhau           ,
				role= @role ,
				image_url = @image_url 
				where user_id = @user_id;
			 
        SELECT '';
    END;
GO
