USE [master]
GO
/****** Object:  Database [QL_ThiTracNghiem]    Script Date: 6/9/2022 11:06:16 PM ******/
CREATE DATABASE [QL_ThiTracNghiem]
 
USE [QL_ThiTracNghiem]
GO
/****** Object:  Table [dbo].[BaiThi]    Script Date: 6/9/2022 11:06:16 PM ******/

GO
CREATE TABLE [dbo].[BaiThi](
	[MaBaiThi] [int] IDENTITY(1,1) NOT NULL,
	[CauTraLoi] [ntext] NULL,
	[TrangThai] [nchar](10) NULL,
	[MaSVLT] [int] NULL,
	[CauHoi] [int] NULL,
 CONSTRAINT [PK_BaiThi] PRIMARY KEY   
(
	[MaBaiThi] ASC))
GO
CREATE TABLE [dbo].[ChiTietDeThi](
	[MaChiTietDeThi] [int] IDENTITY(1,1) NOT NULL,
	[MaCauHoi] [int] NULL,
	[MaDe] [nchar](10) NULL,
 CONSTRAINT [PK_ChiTietDeThi] PRIMARY KEY   
(
	[MaChiTietDeThi] ASC))
GO
CREATE TABLE [dbo].[Chuong](
	[MaChuong] [int] IDENTITY(1,1) NOT NULL,
	[TenChuong] [nvarchar](150) NULL,
	[MaMonHoc] [nchar](10) NULL,
 CONSTRAINT [PK_Chuong] PRIMARY KEY   
(
	[MaChuong] ASC))
GO
CREATE TABLE [dbo].[DeThi](
	[MaDe] [nchar](10) NOT NULL,
	[MaPhieuTaoDe] [nchar](10) NULL,
 CONSTRAINT [PK_DeThi] PRIMARY KEY   
(
	[MaDe] ASC))
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGiaoVien] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](150) NULL,
	[MaKhoa] [nchar](10) NULL,
	[MatKhau] [varchar](100) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY   
(
	[MaGiaoVien] ASC))
GO
CREATE TABLE [dbo].[KetQuaBaiThi](
	[MaKQ] [int] IDENTITY(1,1) NOT NULL,
	[Diem] [float] NULL,
	[HocKy] [char](10) NULL,
	[NienKhoa] [nchar](10) NULL,
	[MaSVMH] [int] NULL,
 CONSTRAINT [PK_KetQuaBaiThi] PRIMARY KEY   
(
	[MaKQ] ASC))
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [nchar](10) NOT NULL,
	[TenKhoa] [nvarchar](150) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY   
(
	[MaKhoa] ASC))
GO
CREATE TABLE [dbo].[LichThi](
	[MaLichThi] [int] IDENTITY(1,1) NOT NULL,
	[NgayThi] [date] NULL,
	[PhongThi] [nchar](10) NULL,
	[ThoiGianBD] [time](7) NULL,
	[ThoiGianKT] [time](7) NULL,
	[MaMonHoc] [nchar](10) NULL,
 CONSTRAINT [PK_LichThi] PRIMARY KEY   
(
	[MaLichThi] ASC))
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [nchar](10) NOT NULL,
	[TenLop] [nchar](10) NULL,
	[MaKhoa] [nchar](10) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY   
(
	[MaLop] ASC))
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [nchar](10) NOT NULL,
	[TenMonHoc] [nvarchar](100) NULL,
	[SoTC] [int] NULL,
	[SoChuong] [int] NULL,
	[MaKhoa] [nchar](10) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY   
(
	[MaMonHoc] ASC))
GO
CREATE TABLE [dbo].[MucDo](
	[MaPTD_C] [int] NOT NULL,
	[MucDo] [nchar](10) NULL,
	[SoCau] [int] NULL,
	[MaMucDo] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_MucDo_1] PRIMARY KEY   
(
	[MaMucDo] ASC))
GO
CREATE TABLE [dbo].[NganHangCauHoi](
	[MaCauHoi] [int] IDENTITY(1,1) NOT NULL,
	[CauHoi] [ntext] NULL,
	[DapAnA] [ntext] NULL,
	[DapAnB] [ntext] NULL,
	[DapAnC] [ntext] NULL,
	[DapAnD] [ntext] NULL,
	[DapAnDung] [ntext] NULL,
	[MucDo] [nchar](10) NULL,
	[MaMonHoc] [nchar](10) NULL,
	[MaChuong] [int] NULL,
	[MaGiaoVien] [nchar](10) NULL,
 CONSTRAINT [PK_NganHangCauHoi] PRIMARY KEY   
(
	[MaCauHoi] ASC))
GO
CREATE TABLE [dbo].[PhieuTaoDe](
	[MaPhieuTaoDe] [nchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[SoLuongDe] [int] NULL,
	[SoCauHoi] [int] NULL,
	[ThoiGianLamBai] [int] NULL,
	[MaMonHoc] [nchar](10) NULL,
	[MaGiaoVien] [nchar](10) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuTaoDe] PRIMARY KEY   
(
	[MaPhieuTaoDe] ASC))
GO
CREATE TABLE [dbo].[PhieuTaoDe_Chuong](
	[MaPhieuTaoDe] [nchar](10) NOT NULL,
	[MaChuong] [int] NULL,
	[MaPTD_C] [int] IDENTITY(1,1) NOT NULL,
	[SoLuongCau] [int] NULL,
 CONSTRAINT [PK_PhieuTaoDe_Chuong_1] PRIMARY KEY   
(
	[MaPTD_C] ASC))
GO
CREATE TABLE [dbo].[SinhVien](
	[Mssv] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[CMND_CCCD] [nchar](20) NULL,
	[GioiTinh] [nchar](5) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](150) NULL,
	[Sdt] [nchar](10) NULL,
	[Email] [nchar](100) NULL,
	[MatKhau] [nchar](50) NULL,
	[MaLop] [nchar](10) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY   
(
	[Mssv] ASC))
GO
CREATE TABLE [dbo].[SinhVien_LichThi](
	[Mssv] [nchar](10) NOT NULL,
	[MaLichThi] [int] NOT NULL,
	[MaSVLT] [int] IDENTITY(1,1) NOT NULL,
	[MaDe] [nchar](10) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_SinhVien_LichThi_1] PRIMARY KEY   
(
	[MaSVLT] ASC))
GO
CREATE TABLE [dbo].[SinhVien_MonHoc](
	[Mssv] [nchar](10) NULL,
	[MaMonHoc] [nchar](10) NULL,
	[MaSVMH] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SinhVien_MonHoc] PRIMARY KEY   
(
	[MaSVMH] ASC))
	

	


GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K01', N'Công nghệ thông tin')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K02', N'Toán Tin')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K03', N'Công nghệ sinh học')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K04', N'Môi trường')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K05', N'Khoa học và công nghệ vật liệu')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K06', N'Công nghệ và chế biến thủy sản')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K07', N'Quản trị kinh doanh')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K08', N'Luật kinh tế')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K09', N'An toàn thông tin')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K10', N'Ngôn ngữ anh')

GO
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [HoTen], [MaKhoa], [MatKhau]) VALUES (N'GV01', N'Nguyễn Thị Thanh Thủy', N'K01 ', N'123')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [HoTen], [MaKhoa], [MatKhau]) VALUES (N'GV02', N'Hoàng Trần Anh Nhu', N'K10 ', N'123')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [HoTen], [MaKhoa], [MatKhau]) VALUES (N'GV03', N'Nguyễn Thị Định', N'K01 ', N'123')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [HoTen], [MaKhoa], [MatKhau]) VALUES (N'GV04', N'Vũ Đức Thịnh', N'K01 ', N'123')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [HoTen], [MaKhoa], [MatKhau]) VALUES (N'GV05', N'Trần Anh Dũng', N'K01 ', N'123')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [HoTen], [MaKhoa], [MatKhau]) VALUES (N'GV06', N'Phù Phước Huy', N'K01 ', N'123')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [HoTen], [MaKhoa], [MatKhau]) VALUES (N'GV07', N'Đinh Thị Mận', N'K01 ', N'123')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [HoTen], [MaKhoa], [MatKhau]) VALUES (N'GV08', N'Nguyễn Văn Thịnh', N'K10 ', N'123')

GO
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'10DHTH1   ', N'tin học 1 ', N'K01')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'10DHTH2   ', N'tin học 2 ', N'K01')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'10DHTH3   ', N'tin học 3 ', N'K01')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'10DHTH4   ', N'tin học 4 ', N'K01')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'10DHTH5   ', N'tin học 5 ', N'K01')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'10DHTH6   ', N'tin học 6 ', N'K01')
GO
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoTC], [SoChuong], [MaKhoa]) VALUES (N'MH01', N'Phân tích thiết kế hệ thống thông tin', 3, 8, N'K01')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoTC], [SoChuong], [MaKhoa]) VALUES (N'MH02', N'Công nghệ phần mềm', 1, 7, N'K01')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoTC], [SoChuong], [MaKhoa]) VALUES (N'MH03', N'Hệ điều hành', 3, 7, N'K01')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoTC], [SoChuong], [MaKhoa]) VALUES (N'MH04', N'Nhập môn lập trình', 2, 7, N'K01')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoTC], [SoChuong], [MaKhoa]) VALUES (N'MH05', N'Cơ sở dữ liệu nâng cao', 2, 6, N'K01')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoTC], [SoChuong], [MaKhoa]) VALUES (N'MH06', N'Thiết kế cơ sở dữ liệu', 2, 6, N'K01')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoTC], [SoChuong], [MaKhoa]) VALUES (N'MH07', N'Thực hành mạng máy tính', 1, 4, N'K01')
GO
SET IDENTITY_INSERT [dbo].[Chuong] ON 
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (1, N'Chương 1 tổng quan về hệ thống thông tin', N'MH01')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (2, N'Chương 2 phương pháp phân tích thiết kế hệ thống thông tin', N'MH01')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (3, N'Chương 3 khởi tạo và lập kế hoạch hệ thống', N'MH01')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (4, N'Chương 4 xác định yêu cầu hệ thống', N'MH01')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (5, N'Chương 5 mô hình hóa nghiệp vụ', N'MH01')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (6, N'Chương 6 mô hình hóa chức năng', N'MH01')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (7, N'Chương 7 mô hình hóa cấu trúc', N'MH01')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (8, N'Chương 8 thiết kế lớp', N'MH01')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (9, N'Chương 9 thiết kế chức năng hệ thống', N'MH01')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (10, N'Chương 10 thiết kế kiến trúc triển khai', N'MH01')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (11, N'Chương 1Tổng quan về công nghệ phần mềm', N'MH02')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (12, N'Chuong 2 Khảo sát hiện trạng và xác định yêu cầu.', N'MH02')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (13, N'Chương 3 Phân tích phần mềm', N'MH02')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (14, N'Chương 4 Thiết kế phần mềm', N'MH02')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (15, N'Chương 5 Cài đặt phần mềm', N'MH02')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (16, N'Chương 6 Kiểm chứng phần mềm', N'MH02')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (17, N'Chương 7 Triển khai và bảo trì', N'MH02')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (18, N'Chương 1 Tổng quan về lập trình', N'MH03')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (19, N'Chương 2 Các thành phần cơ bản của ngôn ngữ lập trình C/C++', N'MH03')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (20, N'Chương 3 Các cấu trúc điều khiển chương trình', N'MH03')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (21, N'Chương 4 Hàm', N'MH03')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (22, N'Chương 5 Dữ liệu dạng mảng, chuỗi và con trỏ', N'MH03')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (23, N'Chương 6 Lập trình với tập tin văn bản', N'MH03')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (24, N'Chương 7 Dữ liệu cấu trúc', N'MH03')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (25, N'Chương 1 Các khái niệm cơ bản về HĐH', N'MH04')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (26, N'Chương 2 Các thành phần và kiến trúc HĐH ', N'MH04')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (27, N'Chương 3 Các yêu cầu và nguyên tắc xây dựng HĐH ', N'MH04')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (29, N'Chương 5 Lập lịch CPU ', N'MH04')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (30, N'Chương 6 Quản lí các dịch vụ', N'MH04')
INSERT [dbo].[Chuong] ([MaChuong], [TenChuong], [MaMonHoc]) VALUES (38, N'Chương 4 Quản lí vào ra vào', N'MH04')
SET IDENTITY_INSERT [dbo].[Chuong] OFF

GO
SET IDENTITY_INSERT [dbo].[NganHangCauHoi] ON 

INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (14, N'Chữ kí của hệ điều hành Windows là', N'11BB', N'AB54', N'14AD', N'55AA', N'A', N'De        ', N'MH01      ', 3, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (15, N'Kích thước Cluster có thể thay đổi:', N'Sai', N'Đúng', NULL, NULL, N'B', N'De        ', N'MH01      ', 4, N'GV02      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (16, N'Kích thước của một phần tử Root là:', N'32B', N'64B', N'48B', N'16B', N'C', N'De        ', N'MH01      ', 3, N'GV03      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (17, N'Sự khác nhau giữa FAT12, FAT16, FAT32 là:', N'Kích thước của phần tử FAT', N'Kích thước của đĩa d', N'Kích thước lớn nhất có thể quản lí.', N'Kích thước của cluster.', N'D', N'De        ', N'MH02      ', 5, N'GV04      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (18, N'Kích thước để quản lí một phân vùng chính trong Master Boot là:', N'16B', N'32B', N'128B', N'64B', N'A', N'De        ', N'MH02      ', 6, N'GV05      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (19, N'Theo chuẩn IDE, trên track thường có bao nhiêu sector', N'127', N'63', N'15', N'31', N'B', N'De        ', N'MH02      ', 1, N'GV06      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (20, N'Lưu trữ thông tin về danh sách các cluster của file là:', N' Cluster Table', N'Root', N'Data area', N'FAT', N'C', N'De        ', N'MH02      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (21, N'Hệ điều hành là chương trình hoạt động giữa người sử dụng với :', N'Phần mềm của máy tính', N'Phần cứng của máy tính ', N'Các chương trình ứng dụng', N'CPU và bộ nhớ Đáp ', N'B', N'De        ', N'MH02      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (22, N'Trong việc phân loại mô hình hệ điều hành, loại có nhiều bộ xử lí cùng chia sẽ hệ thống đường truyền, dữ liệu, đồng hồ, bộ nhớ, các thiết bị ngoại vi thuộc dạng :', N'Hệ thống xử lí đa chương ', N'Hệ thống xử lí đa nhiệm ', N'Hệ thống xử lí song song', N'Hệ thống xử lí thời gian thực', N'D', N'De        ', N'MH02      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (23, N'Máy tính có thể lưu trữ thông tin trong nhiều dạng thiết bị vật lí khác nhau như băng từ, đĩa từ,.. Để thống nhất cách truy xuất hệ thống lưu trữ trong máy tính, hệ điều hành định nghĩa một đơn vị lưu trữ là :', N'Thư mục', N'Partition', N'FAT', N'Tập tin', N'D', N'De        ', N'MH02      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (24, N'Ở hệ điều hành có cấu trúc phân lớp, tập hợp các lời gọi hệ thống được tạo ra bởi :', N'Lớp phần cứng', N'Lớp giao tiếp với người sử dụng ', N'Lớp ứng dụng ', N'Lớp kế lớp phần cứng - hạt nhân', N'D', N'De        ', N'MH02      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (25, N'Lời gọi hệ thống là lệnh do hệ điều hành cung cấp dùng để giao tiếp giữa hệ điều hành và:', N'Tiến trình ', N'Chương trình ứng dụng', N'Phần cứng máy tính ', N'Người sử dụng', N'A', N'De        ', N'MH02      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (26, N'Trong các cấu trúc của hệ điều hành sau đây cấu trúc nào tương thích dễ dàng với mô hình hệ thống phân tán', N'Cấu trúc đơn giản ', N'Cấu trúc theo lớp', N'Cấu trúc máy ảo ', N'Cấu trúc Servicer-client', N'D', N'De        ', N'MH02      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (27, N'Câu nào sau đây là không chính xác :', N'Tiến trình là một chương trình đang ở trong bộ nhớ', N'Tiến trình là một chương trình đang xử lí, sở hữu một không gian địa chỉ, mộtcon trỏ lệnh, một tập các thanh ghi và stack ', N'Tiến trình tự quyết định thời điểm cần dừng hoạt động đang xử lí để phục vụ tiến
trình khác.', N'/ Các tiến trình có thể liên lạc với nhau không thông qua hệ điều hành.', N'C', N'De        ', N'MH02      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (28, N'Nơi dùng để lưu trữ các chương trình, mã lệnh trước khi CPU tính toán, xử lý gọi là gì? ', N'Phần mềm ', N'ROM  ', N'HDD ', N'RAM ', N'A', N'De        ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (29, N'Bộ nhớ truy cập ngẫu nhiên RAM được viết tắt từ cụm từ nào dưới đây? ', N'Random ', N'Read  Ace Memory ', N'Re-Active ', N'Raw  Ace ', N'B', N'De        ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (30, N'Một Byte bằng? ', N'24 bit ', N'48 bit  ', N'12 bit  ', N'8 bit ', N'A', N'De        ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (31, N'Thiết bị nào sau đây sẽ mất hết dữ liệu khi mất điện? ', N'RAM  ', N'ROM  ', N'HDD  ', N'SSD ', N'A', N'De        ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (32, N'Đơn vị đo lượng tin là gì? ', N'Byte ', N'Hz ', N'MHz ', N'GHz ', N'C', N'De        ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (33, N'1 Gigabyte (GB) bằng: ', N'1024 MB ', N'1000 MB  ', N'1024 KB  ', N'1024 B ', N'C', N'De        ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (34, N'Các chữ viết tắt MB, GB, TB thường gặp trong các tài liệu về máy tính có nghĩa là gì? ', N'Đơn vị đo khả năng ', N'Đơn vị đo độ phân giải màn ', N'Đơn vị đo tốc độ xử lý của CPU  ', N'Đơn vị đo cường độ ', N'C', N'De        ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (35, N'Tất cả máy tính muốn sử dụng được, trước tiên phải làm gì? ', N'Có phần mềm hệ thống ', N'Có phần mềm ứng ', N'Có phần mềm tiện ', N'Không cần phần mềm vẫn hoạt ', N'D', N'De        ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (36, N' ', N'được cài đặt ổn ', N'dụng ', N'ích ', N'động ', N'D', N'De        ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (37, N'GUI là viết tắt của nội dung nào sau đây? ', N'Graphical ', N'Great User ', N'Good User ', N'Graphical User Int ', N'B', N'De        ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (38, N'Nếu máy tính không khởi động như bình thường bạn nên làm gì để thử và xác định nguyên nhân của vấn đề? ', N'Chạy phần mềm chống virus ', N'Cài đặt một bản sao lưu  ', N'Chạy Check Disk ', N'Cố gắng khởi động vào chế độ Safe Mode ', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (39, N'Khi máy tính bị treo, để khởi động lại máy tính từ bàn phím Anh/Chị nhấn tổ hợp phím nào? ', N'CTRL + ALT + ', N'CTRL  + ', N'RESET ', N'CTRL  + ', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (40, N'Để thực hiện việc khởi động lại máy tính trong trạng thái máy tính đang hoạt động hoặc bị treo máy (khởi động nóng), chúng Anh/Chị nên thực hiện theo thao tác nào? ', N'Bấm  nút Reset ', N'Rút điện ra khỏi máy tính và cắm ', N'Bấm  nút Power ', N'Bấm tổ hợp phím Ctrl+Alt+Sh', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (41, N'Để đảm bảo tính an toàn khi tạm thời rời khỏi máy tính mà không đóng bất kỳ chương trình nào đang chạy, tùy chọn nào dưới đây là đúng nhất? ', N'Hibernate ', N'Sleep ', N'Log off ', N'Lock ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (42, N'Trong hệ điều hành Windows, để khởi động chương trình Windows Explore, Anh/Chị dùng tổ hợp phím nào dưới đây? ', N'Nhấn tổ hợp phím Windows ', N'Nhấn tổ hợp phím ', N'Nhấp vào biểu tượng chữ E trên màn hình ', N'Không thể dùng phím ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (43, N'Khi kích hoạt một cửa sổ Windows, tổ hợp phím nào dưới đây có chức năng thoát khỏi cửa sổ? ', N'Alt + F4 ', N'Ctrl + Esc  ', N'Ctrl + N  ', N'Ctrl + O ', N'A', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (44, N'Khi  đang  sử  dụng ', N'Print Screen ', N'Ctrl+C  ', N'Ctrl+Ins  ', N'ESC ', N'A', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (45, N'Để mở một cửa sổ mới Anh/Chị sử dụng tổ hợp phím nào dưới đây? ', N'Ctrl + O  ', N'Ctrl + N  ', N'Ctrl + F  ', N'Alt + N ', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (46, N'Trong  hệ  điều  hành ', N'Ctrl + Esc  ', N'Alt + F4 ', N'Ctrl + N  ', N'Ctrl + O ', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (47, N'Trong hệ điều hành Windows 10, để chuyển đổi cửa sổ hiện hành ', N'Chọn biểu tượng ', N'Nhấn giữ phím Alt và gõ phím ', N'Click vào một vị trí bất kỳ trên cửa sổ ', N'Các ý  đều đúng. ', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (48, N'Anh/Chị phải làm gì? ', N'chương ', N'Tab  cho đến  khi chọn được cửa  sổ chương trình. ', N'chương trình muốn kích hoạt. ', NULL, N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (49, N'Trong Control panel, chương trình nào cho phép lựa chọn các quy định đối với khu vực và ngôn ngữ hiển thị? ', N'Display ', N'System ', N'Date/Time ', N'Region and Language ', N'A', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (50, N'Tính năng nào của Control Panel dùng để thay đổi chủ đề giao diện (Theme) trên màn hình Windows? ', N'Default ', N'Display ', N'User ', N'Personalizat ion ', N'A', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (51, N'Trên màn hình Desktop, khu vực nào Anh/Chị sẽ click để thay đổi ngày giờ hiện tại? ', N'Start Button ', N'Nền ', N'Task ', N'Control Panel ', N'A', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (52, N'Thuật ngữ nào sau đây chỉ dung lượng của ổ đĩa? ', N'Capacity ', N'Type ', N'Free Size ', N'File System ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (53, N'Có mấy loại shortcut? ', N'1 loại ', N'3 loại ', N'2 loại ', N'4 loại ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (54, N'Thanh nào sẽ hiển thị vị trí hiện tại của thư mục? ', N'Address bar ', N'Title bar ', N'Command ', N'Menu bar ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (55, N'Chức năng nào dưới đây dùng để tạm thời thu nhỏ thành biểu tượng trên thanh Anh/Chịskbar ứng dụng hiện tại? ', N'Close ', N'Restore ', N'Maximize ', N'Minimize ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (56, N'Nút điều khiển việc phóng to, thu nhỏ, đóng cửa sổ gọi là gì? ', N'Dialog box ', N'List box ', N'Control Buttons ', N'Text box ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (57, N'Muốn lưu nhanh tệp tài liệu với tên khác (Save As) Anh/Chị cần nhấn phím chức năng dưới đây? ', N'F1 ', N'F12 ', N'F2 ', N'F10 ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (58, N'Trong  Microsoft  Word 2016, để thực hiện tìm kiếm và thay thế (Find and Replace) Anh/Chị dùng tổ hợp phím nào dưới đây? ', N'Ctrl + H ', N'Ctrl + A ', N'Ctrl + F ', N'Cả B và C ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (59, N'Trong  Microsoft  Word 2016, công dụng của tổ hợp phím Ctrl + H để kích hoạt gì? ', N'Tạo  tệp mới ', N'Chức năng thay thế ', N'Tạo chữ hoa ', N'Lưu văn bản ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (60, N'Muốn di chuyển một cửa sổ trong Windows, Anh/Chị cần thực hiện các bước nào dưới đây? ', N'Tại thanh tiêu đề của cửa sổ, nhấn dữ phím trái chuột và  di chuột để di chuyển cửa sổ ', N'Nhấp chuột vào nút close', N'Nhấp chuột ngay cửa sổ rồi dùng các phím mũi tên', N'Nhập chuột vào thanh tiêu đề', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (61, N'Di chuyển nhanh con trỏ màn hình về vị trí đầu của văn bản Anh/Chị ấn tổ hợp phím nào dưới đây? ', N'Ctrl  + Home ', N'Home ', N'Shift + H ', N'Ctrl + H ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (62, N'Trong Microsoft Word, nhóm font nào theo chuẩn Unicode? ', N'Arial, Tahoma, ', N'Times New ,Arial, Tahoma ', N'Times New ', N'.VnTimeH, ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (63, N'Trong  Microsoft  Word 2016, muốn thay đổi chế độ zoom nhìn cửa sổ Anh/Chị thực hiện bằng cách nào? ', N'Chọn  tab View  và sau  đó chọn nút Zoom ', N'Chọn Layout và sau đó chọn nút Zoom ', N'Chọn Review  và sau đó chọn nút Zoom ', N'Chọn Zoom-out và Zoom-in ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (64, N'Trong  Microsoft  Word 2016, làm cách nào để chọn một đoạn văn bản? ', N'Kích đúp chuột tại lề trái của dòng văn bản ', N'Kích  trái chuột giữa văn bản ', N'Kích  phải chuột  giữa văn bản ', N'Kích chuột giữa ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (65, N'Trong  Microsoft  Word 2016, chọn cách nào để mở một trang văn bản mới? ', N'Nhấn tổ hợp phím Ctrl + N ', N'Nhấn tổ hợp phím Ctrl + Shift +N', N'Nhấn tổ hợp phím Ctrl + O ', N'Nhấn tổ hợp phím Alt+ N ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (66, N'Để thoát khỏi chương trình Microsoft Word, chọn cách nào? ', N'Nhấn tổ hợp phím Ctrl + F4 ', N'Nhấn tổ hợp phím Ctrl  + Alt +C', N'Nhấn tổ hợp phím Alt + C', N'Nhấn tổ hợp phím Alt + F4', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (67, N'Trong  Microsoft  Word 2016, để biết thông tin về tệp tin văn bản đang làm việc, Anh/Chị chọn cách nào? ', N'Chọn File\ Info ', N'Chọn File\Options ', N'Chọn File\Options\ Info ', N'Chọn View\ One Page ', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (122, N'dqwdqwd', N'dqwdqưdwq', N'qưdqwd', N'ưqdqwdưqdqw', N'dqwdqwdqwd', N'A', N'Trung binh', N'MH01      ', 3, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (123, N'casc', N'các', N'ấc', N'casc', N'âcsc', N'A', N'Trung binh', N'MH01      ', 3, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (124, N'dưqdqwdqwdqwdqwd', N'ưqdqwd', N'đwd', N'đwd', N'qwdqwd', N'A', N'Kho       ', N'MH01      ', 1, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (125, N'ư', N'ư', N'ư', N'ư', N'ư', N'A', N'Kho       ', N'MH01      ', 4, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (126, N'ădqwdwqdwqđưqd', N'dư', N'đư', N'đư', N'đư', N'C', N'Trung binh', N'MH01      ', 1, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (127, N'dqwdqw', N'qwdqwdqưd', N'qưdqw', N'dqwdqw', N'dqwdwqd', N'A', N'Trung binh', N'MH01      ', 6, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (128, N'fwef', N'wf', N'ưefwef', N'ưefwe', N'fwef', N'B', N'Trung binh', N'MH01      ', 1, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (129, N'Câu hỏi mới', N'dưdqwdqwd', N'dưdq', N'dưdqw', N'qwd', N'A', N'Trung binh', N'MH01      ', 1, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (130, N'Chữ kí của hệ điều hành Windows là', N'11BB', N'AB54', N'14AD', N'55AA', N'D', N'Trung binh', N'MH03      ', 3, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (131, N'Kích thước Cluster có thể thay đổi:', N'Sai', N'Đúng', N'', N'', N'D', N'Trung binh', N'MH03      ', 4, N'GV02      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (132, N'Kích thước của một phần tử Root là:', N'32B', N'64B', N'48B', N'16B', N'D', N'Trung binh', N'MH03      ', 3, N'GV03      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (133, N'Sự khác nhau giữa FAT12, FAT16, FAT32 là:', N'Kích thước của phần tử FAT', N'Kích thước của đĩa d', N'Kích thước lớn nhất có thể quản lí.', N'Kích thước của cluster.', N'D', N'Trung binh', N'MH03      ', 5, N'GV04      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (134, N'Kích thước để quản lí một phân vùng chính trong Master Boot là:', N'16B', N'32B', N'128B', N'64B', N'D', N'Trung binh', N'MH03      ', 6, N'GV05      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (135, N'Theo chuẩn IDE, trên track thường có bao nhiêu sector', N'127', N'63', N'15', N'31', N'D', N'Trung binh', N'MH03      ', 1, N'GV06      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (136, N'Lưu trữ thông tin về danh sách các cluster của file là:', N' Cluster Table', N'Root', N'Data area', N'FAT', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (137, N'Hệ điều hành là chương trình hoạt động giữa người sử dụng với :', N'Phần mềm của máy tính', N'Phần cứng của máy tính', N'Các chương trình ứng dụng', N'CPU và bộ nhớ Đáp', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (138, N'Trong việc phân loại mô hình hệ điều hành, loại có nhiều bộ xử lí cùng chia sẽ hệ thống đường truyền, dữ liệu, đồng hồ, bộ nhớ, các thiết bị ngoại vi thuộc dạng :', N'Hệ thống xử lí đa chương', N'Hệ thống xử lí đa nhiệm', N'Hệ thống xử lí song song', N'Hệ thống xử lí thời gian thực', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (139, N'Máy tính có thể lưu trữ thông tin trong nhiều dạng thiết bị vật lí khác nhau như băng từ, đĩa từ,.. Để thống nhất cách truy xuất hệ thống lưu trữ trong máy tính, hệ điều hành định nghĩa một đơn vị lưu trữ là :', N'Thư mục', N'Partition', N'FAT', N'Tập tin', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (140, N'Ở hệ điều hành có cấu trúc phân lớp, tập hợp các lời gọi hệ thống được tạo ra bởi :', N'Lớp phần cứng', N'Lớp giao tiếp với người sử dụng', N'Lớp ứng dụng', N'Lớp kế lớp phần cứng - hạt nhân', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (141, N'Lời gọi hệ thống là lệnh do hệ điều hành cung cấp dùng để giao tiếp giữa hệ điều hành và:', N'Tiến trình', N'Chương trình ứng dụng', N'Phần cứng máy tính', N'Người sử dụng', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (142, N'Trong các cấu trúc của hệ điều hành sau đây cấu trúc nào tương thích dễ dàng với mô hình hệ thống phân tán', N'Cấu trúc đơn giản', N'Cấu trúc theo lớp', N'Cấu trúc máy ảo', N'Cấu trúc Servicer-client', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (143, N'Câu nào sau đây là không chính xác :', N'Tiến trình là một chương trình đang ở trong bộ nhớ', N'Tiến trình là một chương trình đang xử lí, sở hữu một không gian địa chỉ, mộtcon trỏ lệnh, một tập các thanh ghi và stack', N'Tiến trình tự quyết định thời điểm cần dừng hoạt động đang xử lí để phục vụ tiến
trình khác.', N'/ Các tiến trình có thể liên lạc với nhau không thông qua hệ điều hành.', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (144, N'Nơi dùng để lưu trữ các chương trình, mã lệnh trước khi CPU tính toán, xử lý gọi là gì?', N'Phần mềm', N'ROM', N'HDD', N'RAM', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (145, N'Bộ nhớ truy cập ngẫu nhiên RAM được viết tắt từ cụm từ nào dưới đây?', N'Random', N'Read  Ace Memory', N'Re-Active', N'Raw  Ace', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (146, N'Một Byte bằng?', N'24 bit', N'48 bit', N'12 bit', N'8 bit', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (147, N'Thiết bị nào sau đây sẽ mất hết dữ liệu khi mất điện?', N'RAM', N'ROM', N'HDD', N'SSD', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (148, N'Đơn vị đo lượng tin là gì?', N'Byte', N'Hz', N'MHz', N'GHz', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (149, N'1 Gigabyte (GB) bằng:', N'1024 MB', N'1000 MB', N'1024 KB', N'1024 B', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (150, N'Các chữ viết tắt MB, GB, TB thường gặp trong các tài liệu về máy tính có nghĩa là gì?', N'Đơn vị đo khả năng', N'Đơn vị đo độ phân giải màn', N'Đơn vị đo tốc độ xử lý của CPU', N'Đơn vị đo cường độ', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (151, N'Tất cả máy tính muốn sử dụng được, trước tiên phải làm gì?', N'lưu trữ', N'hình', N'', N'âm thanh', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (152, N'GUI là viết tắt của nội dung nào sau đây?', N'Graphical', N'Great User', N'Good User', N'Graphical User Int', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (153, N'Nếu máy tính không khởi động như bình thường bạn nên làm gì để thử và xác định nguyên nhân của vấn đề?', N'Chạy phần mềm chống virus', N'Cài đặt một bản sao lưu', N'Chạy Check Disk', N'Cố gắng khởi động vào chế độ Safe Mode', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (154, N'Khi máy tính bị treo, để khởi động lại máy tính từ bàn phím Anh/Chị nhấn tổ hợp phím nào?', N'CTRL + ALT +', N'CTRL  +', N'RESET', N'CTRL  +', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (155, N'Để thực hiện việc khởi động lại máy tính trong trạng thái máy tính đang hoạt động hoặc bị treo máy (khởi động nóng), chúng Anh/Chị nên thực hiện theo thao tác nào?', N'Bấm  nút Reset', N'Rút điện ra khỏi máy tính và cắm', N'Bấm  nút Power', N'Bấm tổ hợp phím Ctrl+Alt+Sh', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (156, N'Để đảm bảo tính an toàn khi tạm thời rời khỏi máy tính mà không đóng bất kỳ chương trình nào đang chạy, tùy chọn nào dưới đây là đúng nhất?', N'Hibernate', N'Sleep', N'Log off', N'Lock', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (157, N'Trong hệ điều hành Windows, để khởi động chương trình Windows Explore, Anh/Chị dùng tổ hợp phím nào dưới đây?', N'Nhấn tổ hợp phím Windows', N'Nhấn tổ hợp phím', N'Nhấp vào biểu tượng chữ E trên màn hình', N'Không thể dùng phím', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (158, N'Khi kích hoạt một cửa sổ Windows, tổ hợp phím nào dưới đây có chức năng thoát khỏi cửa sổ?', N'Alt + F4', N'Ctrl + Esc', N'Ctrl + N', N'Ctrl + O', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (159, N'Khi  đang  sử  dụng', N'Print Screen', N'Ctrl+C', N'Ctrl+Ins', N'ESC', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (160, N'Windows, để lưu nội dung màn hình vào bộ nhớ Clipboard Anh/Chị sử dụng các phím nào?', N'', N'', N'', N'', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (161, N'Để mở một cửa sổ mới Anh/Chị sử dụng tổ hợp phím nào dưới đây?', N'Ctrl + O', N'Ctrl + N', N'Ctrl + F', N'Alt + N', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (162, N'Trong  hệ  điều  hành', N'Ctrl + Esc', N'Alt + F4', N'Ctrl + N', N'Ctrl + O', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (163, N'Windows, tổ hợp phím nào dưới đây dùng để đóng cửa sổ hiện thời?', N'', N'', N'', N'', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (164, N'Trong hệ điều hành Windows 10, để chuyển đổi cửa sổ hiện hànhAnh/Chị phải làm gì?', N'Chọn biểu tượng', N'Nhấn giữ phím Alt và gõ phím', N'Click vào một vị trí bất kỳ trên cửa sổ', N'Các ý  đều đúng.', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (165, N'Trong Control panel, chương trình nào cho phép lựa chọn các quy định đối với khu vực và ngôn ngữ hiển thị?', N'Display', N'System', N'Date/Time', N'Region and Language', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (166, N'Tính năng nào của Control Panel dùng để thay đổi chủ đề giao diện (Theme) trên màn hình Windows?', N'Default', N'Display', N'User', N'Personalizat ion', N'B', N'Trung binh', N'MH03      ', 1, N'GV07      ')
GO
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (167, N'Trên màn hình Desktop, khu vực nào Anh/Chị sẽ click để thay đổi ngày giờ hiện tại?', N'Start Button', N'Nền', N'Task', N'Control Panel', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (168, N'Thuật ngữ nào sau đây chỉ dung lượng của ổ đĩa?', N'Capacity', N'Type', N'Free Size', N'File System', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (169, N'Có mấy loại shortcut?', N'1 loại', N'3 loại', N'2 loại', N'4 loại', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (170, N'Thanh nào sẽ hiển thị vị trí hiện tại của thư mục?', N'Address bar', N'Title bar', N'Command', N'Menu bar', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (171, N'Chức năng nào dưới đây dùng để tạm thời thu nhỏ thành biểu tượng trên thanh Anh/Chịskbar ứng dụng hiện tại?', N'Close', N'Restore', N'Maximize', N'Minimize', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (172, N'Nút điều khiển việc phóng to, thu nhỏ, đóng cửa sổ gọi là gì?', N'Dialog box', N'List box', N'Control Buttons', N'Text box', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (173, N'Muốn di chuyển một cửa sổ trong Windows, Anh/Chị cần thực hiện các bước nào dưới đây?', N'Tại thanh tiêu đề của cửa sổ, nhấn dữ phím trái chuột và  di chuột để di chuyển cửa sổ', N'Nhấp chuột vào nút close', N'Nhấp chuột ngay cửa sổ rồi dùng các phím mũi tên', N'Nhập chuột vào thanh tiêu đề', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (174, N'Di chuyển nhanh con trỏ màn hình về vị trí đầu của văn bản Anh/Chị ấn tổ hợp phím nào dưới đây?', N'Ctrl  + Home', N'Home', N'Shift + H', N'Ctrl + H', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (175, N'Trong Microsoft Word, nhóm font nào theo chuẩn Unicode?', N'Arial, Tahoma,', N'Times New ,Arial, Tahoma', N'Times New', N'.VnTimeH,', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (176, N'Trong  Microsoft  Word 2016, muốn thay đổi chế độ zoom nhìn cửa sổ Anh/Chị thực hiện bằng cách nào?', N'Chọn  tab View  và sau  đó chọn nút Zoom', N'Chọn Layout và sau đó chọn nút Zoom', N'Chọn Review  và sau đó chọn nút Zoom', N'Chọn Zoom-out và Zoom-in', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (177, N'Trong  Microsoft  Word 2016, làm cách nào để chọn một đoạn văn bản?', N'Kích đúp chuột tại lề trái của dòng văn bản', N'Kích  trái chuột giữa văn bản', N'Kích  phải chuột  giữa văn bản', N'Kích chuột giữa', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (178, N'Trong  Microsoft  Word 2016, chọn cách nào để mở một trang văn bản mới?', N'Nhấn tổ hợp phím Ctrl + N', N'Nhấn tổ hợp phím Ctrl + Shift +N', N'Nhấn tổ hợp phím Ctrl + O', N'Nhấn tổ hợp phím Alt+ N', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (179, N'Để thoát khỏi chương trình Microsoft Word, chọn cách nào?', N'Nhấn tổ hợp phím Ctrl + F4', N'Nhấn tổ hợp phím Ctrl  + Alt +C', N'Nhấn tổ hợp phím Alt + C', N'Nhấn tổ hợp phím Alt + F4', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (180, N'Trong  Microsoft  Word 2016, để biết thông tin về tệp tin văn bản đang làm việc, Anh/Chị chọn cách nào?', N'Chọn File\ Info', N'Chọn File\Options', N'Chọn File\Options\ Info', N'Chọn View\ One Page', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (181, N'Muốn lưu nhanh tệp tài liệu với tên khác (Save As) Anh/Chị cần nhấn phím chức năng dưới đây?', N'F1', N'F12', N'F2', N'F10', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (182, N'Trong  Microsoft  Word 2016, để thực hiện tìm kiếm và thay thế (Find and Replace) Anh/Chị dùng tổ hợp phím nào dưới đây?', N'Ctrl + H', N'Ctrl + A', N'Ctrl + F', N'Cả B và C', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (183, N'Trong  Microsoft  Word 2016, công dụng của tổ hợp phím Ctrl + H để kích hoạt gì?', N'Tạo  tệp mới', N'Chức năng thay thế', N'Tạo chữ hoa', N'Lưu văn bản', N'A', N'Kho       ', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (184, N'xẫ', N'casc', N'ácác', N'ác', N'âcscsac', N'A', N'Trung binh', N'MH01      ', 1, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (185, N'Chữ kí của hệ điều hành Windows là', N'11BB', N'AB54', N'14AD', N'55AA', N'D', N'Trung binh', N'MH03      ', 3, N'GV01      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (186, N'Kích thước Cluster có thể thay đổi:', N'Sai', N'Đúng', N'', N'', N'D', N'Trung binh', N'MH03      ', 4, N'GV02      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (187, N'Kích thước của một phần tử Root là:', N'32B', N'64B', N'48B', N'16B', N'D', N'Trung binh', N'MH03      ', 3, N'GV03      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (188, N'Sự khác nhau giữa FAT12, FAT16, FAT32 là:', N'Kích thước của phần tử FAT', N'Kích thước của đĩa d', N'Kích thước lớn nhất có thể quản lí.', N'Kích thước của cluster.', N'D', N'Trung binh', N'MH03      ', 5, N'GV04      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (189, N'Kích thước để quản lí một phân vùng chính trong Master Boot là:', N'16B', N'32B', N'128B', N'64B', N'D', N'Trung binh', N'MH03      ', 6, N'GV05      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (190, N'Theo chuẩn IDE, trên track thường có bao nhiêu sector', N'127', N'63', N'15', N'31', N'D', N'Trung binh', N'MH03      ', 1, N'GV06      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (191, N'Lưu trữ thông tin về danh sách các cluster của file là:', N' Cluster Table', N'Root', N'Data area', N'FAT', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (192, N'Hệ điều hành là chương trình hoạt động giữa người sử dụng với :', N'Phần mềm của máy tính', N'Phần cứng của máy tính', N'Các chương trình ứng dụng', N'CPU và bộ nhớ Đáp', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (193, N'Trong việc phân loại mô hình hệ điều hành, loại có nhiều bộ xử lí cùng chia sẽ hệ thống đường truyền, dữ liệu, đồng hồ, bộ nhớ, các thiết bị ngoại vi thuộc dạng :', N'Hệ thống xử lí đa chương', N'Hệ thống xử lí đa nhiệm', N'Hệ thống xử lí song song', N'Hệ thống xử lí thời gian thực', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (194, N'Máy tính có thể lưu trữ thông tin trong nhiều dạng thiết bị vật lí khác nhau như băng từ, đĩa từ,.. Để thống nhất cách truy xuất hệ thống lưu trữ trong máy tính, hệ điều hành định nghĩa một đơn vị lưu trữ là :', N'Thư mục', N'Partition', N'FAT', N'Tập tin', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (195, N'Ở hệ điều hành có cấu trúc phân lớp, tập hợp các lời gọi hệ thống được tạo ra bởi :', N'Lớp phần cứng', N'Lớp giao tiếp với người sử dụng', N'Lớp ứng dụng', N'Lớp kế lớp phần cứng - hạt nhân', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (196, N'Lời gọi hệ thống là lệnh do hệ điều hành cung cấp dùng để giao tiếp giữa hệ điều hành và:', N'Tiến trình', N'Chương trình ứng dụng', N'Phần cứng máy tính', N'Người sử dụng', N'D', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (197, N'Trong các cấu trúc của hệ điều hành sau đây cấu trúc nào tương thích dễ dàng với mô hình hệ thống phân tán', N'Cấu trúc đơn giản', N'Cấu trúc theo lớp', N'Cấu trúc máy ảo', N'Cấu trúc Servicer-client', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (198, N'Câu nào sau đây là không chính xác :', N'Tiến trình là một chương trình đang ở trong bộ nhớ', N'Tiến trình là một chương trình đang xử lí, sở hữu một không gian địa chỉ, mộtcon trỏ lệnh, một tập các thanh ghi và stack', N'Tiến trình tự quyết định thời điểm cần dừng hoạt động đang xử lí để phục vụ tiến
trình khác.', N'/ Các tiến trình có thể liên lạc với nhau không thông qua hệ điều hành.', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (199, N'Nơi dùng để lưu trữ các chương trình, mã lệnh trước khi CPU tính toán, xử lý gọi là gì?', N'Phần mềm', N'ROM', N'HDD', N'RAM', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
INSERT [dbo].[NganHangCauHoi] ([MaCauHoi], [CauHoi], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [MucDo], [MaMonHoc], [MaChuong], [MaGiaoVien]) VALUES (200, N'Bộ nhớ truy cập ngẫu nhiên RAM được viết tắt từ cụm từ nào dưới đây?', N'Random', N'Read  Ace Memory', N'Re-Active', N'Raw  Ace', N'C', N'Trung binh', N'MH03      ', 1, N'GV07      ')
SET IDENTITY_INSERT [dbo].[NganHangCauHoi] OFF

GO
SET IDENTITY_INSERT [dbo].[LichThi] ON 

INSERT [dbo].[LichThi] ([MaLichThi], [NgayThi], [PhongThi], [ThoiGianBD], [ThoiGianKT], [MaMonHoc]) VALUES (1, CAST(N'2021-05-10' AS Date), N'A101', CAST(N'07:00:00' AS Time), CAST(N'08:00:00' AS Time), N'MH01')
INSERT [dbo].[LichThi] ([MaLichThi], [NgayThi], [PhongThi], [ThoiGianBD], [ThoiGianKT], [MaMonHoc]) VALUES (2, CAST(N'2022-06-04' AS Date), N'A102', CAST(N'07:00:00' AS Time), CAST(N'08:00:00' AS Time), N'MH03')
INSERT [dbo].[LichThi] ([MaLichThi], [NgayThi], [PhongThi], [ThoiGianBD], [ThoiGianKT], [MaMonHoc]) VALUES (3, CAST(N'2022-06-09' AS Date), N'A103', CAST(N'07:30:00' AS Time), CAST(N'09:30:00' AS Time), N'MH04')
INSERT [dbo].[LichThi] ([MaLichThi], [NgayThi], [PhongThi], [ThoiGianBD], [ThoiGianKT], [MaMonHoc]) VALUES (4, CAST(N'2022-06-05' AS Date), N'A104', CAST(N'07:00:00' AS Time), CAST(N'08:00:00' AS Time), N'MH07')
INSERT [dbo].[LichThi] ([MaLichThi], [NgayThi], [PhongThi], [ThoiGianBD], [ThoiGianKT], [MaMonHoc]) VALUES (5, CAST(N'2022-06-08' AS Date), N'A105', CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time), N'MH06')
INSERT [dbo].[LichThi] ([MaLichThi], [NgayThi], [PhongThi], [ThoiGianBD], [ThoiGianKT], [MaMonHoc]) VALUES (6, CAST(N'2022-05-24' AS Date), N'A102', CAST(N'07:00:00' AS Time), CAST(N'08:00:00' AS Time), N'MH02')
INSERT [dbo].[LichThi] ([MaLichThi], [NgayThi], [PhongThi], [ThoiGianBD], [ThoiGianKT], [MaMonHoc]) VALUES (7, CAST(N'2022-05-24' AS Date), N'A106', CAST(N'07:00:00' AS Time), CAST(N'08:00:00' AS Time), N'MH05')
SET IDENTITY_INSERT [dbo].[LichThi] OFF
GO
INSERT [dbo].[SinhVien] ([Mssv], [HoTen], [CMND_CCCD], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [MatKhau], [MaLop]) VALUES (N'2001190416', N'Lê Xuân Bắc', N'026716819742        ', N'nam  ', CAST(N'2001-07-16' AS Date), N'A', N'0913487816', N'lexuanbac@gmail.com                                                                                 ', N'16072001                                          ', N'10DHTH3   ')
INSERT [dbo].[SinhVien] ([Mssv], [HoTen], [CMND_CCCD], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [MatKhau], [MaLop]) VALUES (N'2001190421', N'Nguyễn Lê Gia Bảo', N'026714275168        ', N'nam  ', CAST(N'2001-06-04' AS Date), N'B', N'0913468514', N'nguyenlegiabao@gmail.com                                                                            ', N'04062001                                          ', N'10DHTH5   ')
INSERT [dbo].[SinhVien] ([Mssv], [HoTen], [CMND_CCCD], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [MatKhau], [MaLop]) VALUES (N'2001190424', N'Phạm Gia Bảo', N'156816819742        ', N'nam  ', CAST(N'2001-10-12' AS Date), N'C', N'0901190424', N'phamgiabao@gmail.com                                                                                ', N'12102001                                          ', N'10DHTH5   ')
INSERT [dbo].[SinhVien] ([Mssv], [HoTen], [CMND_CCCD], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [MatKhau], [MaLop]) VALUES (N'2001190432', N'Phan Xuân Chánh', N'943574694357        ', N'nam  ', CAST(N'2001-03-07' AS Date), N'D', N'0901190432', N'phanxuanchanh@gmail.com                                                                             ', N'07032001                                          ', N'10DHTH6   ')
INSERT [dbo].[SinhVien] ([Mssv], [HoTen], [CMND_CCCD], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [MatKhau], [MaLop]) VALUES (N'2001190448', N'Lê Hải Đăng', N'8135497503165       ', N'nam  ', CAST(N'2001-01-13' AS Date), N'E', N'0901190448', N'lehaidang@gmail.com                                                                                 ', N'13012001                                          ', N'10DHTH4   ')
INSERT [dbo].[SinhVien] ([Mssv], [HoTen], [CMND_CCCD], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [MatKhau], [MaLop]) VALUES (N'2001190451', N'Trần Hữu Danh', N'1658469852167       ', N'nam  ', CAST(N'2001-02-14' AS Date), N'F', N'0901190451', N'tranhuudanh@gmail.com                                                                               ', N'14022001                                          ', N'10DHTH1   ')
INSERT [dbo].[SinhVien] ([Mssv], [HoTen], [CMND_CCCD], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [MatKhau], [MaLop]) VALUES (N'2001190490', N'Nguyễn Thị Thùy Dương', N'12032154224         ', N'nữ   ', CAST(N'2001-01-18' AS Date), N'G', N'0901190490', N'smiling@gmail.com                                                                                   ', N'18012001                                          ', N'10DHTH2   ')
INSERT [dbo].[SinhVien] ([Mssv], [HoTen], [CMND_CCCD], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [MatKhau], [MaLop]) VALUES (N'2001190555', N'Trần Công Hùng', N'159887545621        ', N'nam  ', CAST(N'2001-10-24' AS Date), N'TP HCM', N'0901190555', N'hungtran@gmail.com                                                                                  ', N'123                                               ', N'10DHTH1   ')
INSERT [dbo].[SinhVien] ([Mssv], [HoTen], [CMND_CCCD], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [MatKhau], [MaLop]) VALUES (N'2001190718', N'Dương Thị Huỳnh Như', N'021564875864        ', N'nữ   ', CAST(N'2001-03-14' AS Date), N'I', N'0901190718', N'duongnhu@gmail.com                                                                                  ', N'14032001                                          ', N'10DHTH1   ')
INSERT [dbo].[SinhVien] ([Mssv], [HoTen], [CMND_CCCD], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [MatKhau], [MaLop]) VALUES (N'2001190791', N'Từ Huệ Sơn', N'032165464684        ', N'nam  ', CAST(N'2001-11-24' AS Date), N'J', N'0901190791', N'soncute@gmail.com                                                                                   ', N'31112001                                          ', N'10DHTH1   ')

GO
SET IDENTITY_INSERT [dbo].[SinhVien_MonHoc] ON 

INSERT [dbo].[SinhVien_MonHoc] ([Mssv], [MaMonHoc], [MaSVMH]) VALUES (N'2001190448', N'MH01      ', 1)
INSERT [dbo].[SinhVien_MonHoc] ([Mssv], [MaMonHoc], [MaSVMH]) VALUES (N'2001190555', N'MH04      ', 2)
INSERT [dbo].[SinhVien_MonHoc] ([Mssv], [MaMonHoc], [MaSVMH]) VALUES (N'2001190416', N'MH01      ', 3)
INSERT [dbo].[SinhVien_MonHoc] ([Mssv], [MaMonHoc], [MaSVMH]) VALUES (N'2001190421', N'MH01      ', 4)
INSERT [dbo].[SinhVien_MonHoc] ([Mssv], [MaMonHoc], [MaSVMH]) VALUES (N'2001190424', N'MH01      ', 5)
INSERT [dbo].[SinhVien_MonHoc] ([Mssv], [MaMonHoc], [MaSVMH]) VALUES (N'2001190718', N'MH01      ', 6)
INSERT [dbo].[SinhVien_MonHoc] ([Mssv], [MaMonHoc], [MaSVMH]) VALUES (N'2001190791', N'MH01      ', 7)
INSERT [dbo].[SinhVien_MonHoc] ([Mssv], [MaMonHoc], [MaSVMH]) VALUES (N'2001190555', N'MH06      ', 8)
SET IDENTITY_INSERT [dbo].[SinhVien_MonHoc] OFF
GO

GO
INSERT [dbo].[PhieuTaoDe] ([MaPhieuTaoDe], [NgayLap], [SoLuongDe], [SoCauHoi], [ThoiGianLamBai], [MaMonHoc], [MaGiaoVien], [TrangThai]) VALUES (N'PH01      ', CAST(N'2022-05-20' AS Date), 5, 40, 45, N'MH03      ', N'GV01      ', NULL)
INSERT [dbo].[PhieuTaoDe] ([MaPhieuTaoDe], [NgayLap], [SoLuongDe], [SoCauHoi], [ThoiGianLamBai], [MaMonHoc], [MaGiaoVien], [TrangThai]) VALUES (N'PH02      ', CAST(N'2022-05-20' AS Date), 3, 40, 45, N'MH02      ', N'GV01      ', NULL)
INSERT [dbo].[PhieuTaoDe] ([MaPhieuTaoDe], [NgayLap], [SoLuongDe], [SoCauHoi], [ThoiGianLamBai], [MaMonHoc], [MaGiaoVien], [TrangThai]) VALUES (N'PH03      ', CAST(N'2022-05-20' AS Date), 3, 40, 45, N'MH03      ', N'GV02      ', NULL)
INSERT [dbo].[PhieuTaoDe] ([MaPhieuTaoDe], [NgayLap], [SoLuongDe], [SoCauHoi], [ThoiGianLamBai], [MaMonHoc], [MaGiaoVien], [TrangThai]) VALUES (N'PH04      ', CAST(N'2022-06-08' AS Date), 2, 12, 12, N'MH02      ', N'GV01      ', N'')
INSERT [dbo].[PhieuTaoDe] ([MaPhieuTaoDe], [NgayLap], [SoLuongDe], [SoCauHoi], [ThoiGianLamBai], [MaMonHoc], [MaGiaoVien], [TrangThai]) VALUES (N'PH05      ', CAST(N'2022-06-08' AS Date), 3, 15, 45, N'MH01      ', N'GV01      ', N'')
INSERT [dbo].[PhieuTaoDe] ([MaPhieuTaoDe], [NgayLap], [SoLuongDe], [SoCauHoi], [ThoiGianLamBai], [MaMonHoc], [MaGiaoVien], [TrangThai]) VALUES (N'PH06      ', CAST(N'2022-06-09' AS Date), 4, 5, 24, N'MH01      ', N'GV01      ', N'Đã xác nhận')

GO
SET IDENTITY_INSERT [dbo].[PhieuTaoDe_Chuong] ON 

INSERT [dbo].[PhieuTaoDe_Chuong] ([MaPhieuTaoDe], [MaChuong], [MaPTD_C], [SoLuongCau]) VALUES (N'PH05      ', 2, 2, 1)
INSERT [dbo].[PhieuTaoDe_Chuong] ([MaPhieuTaoDe], [MaChuong], [MaPTD_C], [SoLuongCau]) VALUES (N'PH05      ', 1, 3, 3)
INSERT [dbo].[PhieuTaoDe_Chuong] ([MaPhieuTaoDe], [MaChuong], [MaPTD_C], [SoLuongCau]) VALUES (N'PH06      ', 1, 4, 5)
INSERT [dbo].[PhieuTaoDe_Chuong] ([MaPhieuTaoDe], [MaChuong], [MaPTD_C], [SoLuongCau]) VALUES (N'PH01      ', 18, 5, 4)
SET IDENTITY_INSERT [dbo].[PhieuTaoDe_Chuong] OFF
GO
SET IDENTITY_INSERT [dbo].[MucDo] ON 

INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (2, N'De        ', 0, 4)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (2, N'Trung binh', 0, 5)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (2, N'Kho       ', 1, 6)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (3, N'De        ', 1, 7)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (3, N'Trung binh', 1, 8)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (3, N'Kho       ', 1, 9)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (4, N'De        ', 2, 10)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (4, N'Trung binh', 1, 11)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (4, N'Kho       ', 2, 12)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (5, N'De        ', 2, 13)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (5, N'Trung binh', 1, 14)
INSERT [dbo].[MucDo] ([MaPTD_C], [MucDo], [SoCau], [MaMucDo]) VALUES (5, N'Kho       ', 1, 15)
SET IDENTITY_INSERT [dbo].[MucDo] OFF
GO
INSERT [dbo].[DeThi] ([MaDe], [MaPhieuTaoDe]) VALUES (N'DT01', N'PH01')
INSERT [dbo].[DeThi] ([MaDe], [MaPhieuTaoDe]) VALUES (N'DT02', N'PH02')
INSERT [dbo].[DeThi] ([MaDe], [MaPhieuTaoDe]) VALUES (N'DT03', N'PH01')
INSERT [dbo].[DeThi] ([MaDe], [MaPhieuTaoDe]) VALUES (N'DT04', N'PH02')
INSERT [dbo].[DeThi] ([MaDe], [MaPhieuTaoDe]) VALUES (N'DT05', N'PH01')
INSERT [dbo].[DeThi] ([MaDe], [MaPhieuTaoDe]) VALUES (N'DT06', N'PH01')
INSERT [dbo].[DeThi] ([MaDe], [MaPhieuTaoDe]) VALUES (N'DT07', N'PH06')
INSERT [dbo].[DeThi] ([MaDe], [MaPhieuTaoDe]) VALUES (N'DT08', N'PH06')
INSERT [dbo].[DeThi] ([MaDe], [MaPhieuTaoDe]) VALUES (N'DT09', N'PH06')
INSERT [dbo].[DeThi] ([MaDe], [MaPhieuTaoDe]) VALUES (N'DT10', N'PH06')

GO
SET IDENTITY_INSERT [dbo].[ChiTietDeThi] ON 

INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (13, 28, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (14, 29, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (15, 30, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (16, 31, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (17, 32, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (18, 33, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (19, 34, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (20, 35, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (21, 36, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (22, 37, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (23, 38, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (24, 39, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (25, 40, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (26, 41, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (27, 42, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (28, 43, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (29, 44, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (30, 45, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (31, 46, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (32, 47, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (33, 48, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (34, 49, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (35, 50, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (36, 51, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (37, 52, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (38, 53, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (39, 54, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (40, 55, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (41, 56, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (42, 57, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (43, 58, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (44, 59, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (45, 60, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (46, 61, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (47, 62, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (48, 63, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (49, 64, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (50, 65, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (51, 66, N'DT05')
INSERT [dbo].[ChiTietDeThi] ([MaChiTietDeThi], [MaCauHoi], [MaDe]) VALUES (52, 67, N'DT05')
SET IDENTITY_INSERT [dbo].[ChiTietDeThi] OFF

SET IDENTITY_INSERT [dbo].[SinhVien_LichThi] ON 

INSERT [dbo].[SinhVien_LichThi] ([Mssv], [MaLichThi], [MaSVLT], [MaDe], [TrangThai]) VALUES (N'2001190448', 1, 1, N'DT01      ', 0)
INSERT [dbo].[SinhVien_LichThi] ([Mssv], [MaLichThi], [MaSVLT], [MaDe], [TrangThai]) VALUES (N'2001190555', 2, 2, N'DT05      ', 0)
INSERT [dbo].[SinhVien_LichThi] ([Mssv], [MaLichThi], [MaSVLT], [MaDe], [TrangThai]) VALUES (N'2001190416', 1, 3, N'DT05      ', 0)
INSERT [dbo].[SinhVien_LichThi] ([Mssv], [MaLichThi], [MaSVLT], [MaDe], [TrangThai]) VALUES (N'2001190421', 1, 4, N'DT05      ', 0)
INSERT [dbo].[SinhVien_LichThi] ([Mssv], [MaLichThi], [MaSVLT], [MaDe], [TrangThai]) VALUES (N'2001190424', 1, 5, N'DT05      ', 0)
INSERT [dbo].[SinhVien_LichThi] ([Mssv], [MaLichThi], [MaSVLT], [MaDe], [TrangThai]) VALUES (N'2001190718', 1, 6, N'DT05      ', 0)
INSERT [dbo].[SinhVien_LichThi] ([Mssv], [MaLichThi], [MaSVLT], [MaDe], [TrangThai]) VALUES (N'2001190555', 3, 7, N'DT05      ', 0)
INSERT [dbo].[SinhVien_LichThi] ([Mssv], [MaLichThi], [MaSVLT], [MaDe], [TrangThai]) VALUES (N'2001190555', 4, 9, N'DT05      ', 0)
INSERT [dbo].[SinhVien_LichThi] ([Mssv], [MaLichThi], [MaSVLT], [MaDe], [TrangThai]) VALUES (N'2001190555', 5, 10, N'DT05      ', 1)
INSERT [dbo].[SinhVien_LichThi] ([Mssv], [MaLichThi], [MaSVLT], [MaDe], [TrangThai]) VALUES (N'2001190555', 7, 11, N'DT05      ', 0)
SET IDENTITY_INSERT [dbo].[SinhVien_LichThi] OFF

GO
SET IDENTITY_INSERT [dbo].[BaiThi] On
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1866, N'C', N'Sai', 10, 29)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1867, N'C', N'Sai', 10, 30)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1868, N'B', N'Sai', 10, 31)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1869, N'A', N'Sai', 10, 32)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1870, N'C', N'Đúng', 10, 33)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1871, N'A', N'Sai', 10, 34)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1872, N'C', N'Sai', 10, 35)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1873, N'A', N'Sai', 10, 36)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1874, N'C', N'Sai', 10, 37)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1875, N'A', N'Sai', 10, 38)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1876, N'C', N'Đúng', 10, 39)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1877, N'A', N'Sai', 10, 40)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1878, N'D', N'Đúng', 10, 41)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1879, N'B', N'Sai', 10, 42)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1880, N'C', N'Sai', 10, 43)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1881, N'A', N'Đúng', 10, 44)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1882, N'B', N'Đúng', 10, 45)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1883, N'C', N'Sai', 10, 46)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1884, N'A', N'Sai', 10, 47)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1885, N'D', N'Sai', 10, 48)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1886, N'B', N'Sai', 10, 49)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1887, N'C', N'Sai', 10, 50)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1888, N'A', N'Đúng', 10, 51)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1889, N'D', N'Đúng', 10, 52)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1890, N'B', N'Sai', 10, 53)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1891, N'B', N'Sai', 10, 54)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1892, N'C', N'Sai', 10, 55)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1893, N'A', N'Sai', 10, 56)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1894, N'C', N'Sai', 10, 57)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1895, N'A', N'Sai', 10, 58)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1896, N'C', N'Sai', 10, 59)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1897, N'A', N'Sai', 10, 60)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1898, N'B', N'Sai', 10, 61)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1899, N'C', N'Sai', 10, 62)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1900, N'A', N'Sai', 10, 63)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1901, N'C', N'Sai', 10, 64)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1902, N'A', N'Sai', 10, 65)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1903, N'B', N'Sai', 10, 66)
INSERT [dbo].[BaiThi] ([MaBaiThi], [CauTraLoi], [TrangThai], [MaSVLT], [CauHoi]) VALUES (1904, N'A', N'Sai', 10, 67)
SET IDENTITY_INSERT [dbo].[BaiThi] OFF


GO
SET IDENTITY_INSERT [dbo].[KetQuaBaiThi] ON 

INSERT [dbo].[KetQuaBaiThi] ([MaKQ], [Diem], [HocKy], [NienKhoa], [MaSVMH]) VALUES (1, 0.25, N'Hoc Ky 4  ', N'2021-2022 ', 2)
INSERT [dbo].[KetQuaBaiThi] ([MaKQ], [Diem], [HocKy], [NienKhoa], [MaSVMH]) VALUES (2, 0, N'Hoc Ky 4  ', N'2021-2022 ', 2)
INSERT [dbo].[KetQuaBaiThi] ([MaKQ], [Diem], [HocKy], [NienKhoa], [MaSVMH]) VALUES (3, 1.0833333730697632, N'Hoc Ky 4  ', N'2021-2022 ', 2)
INSERT [dbo].[KetQuaBaiThi] ([MaKQ], [Diem], [HocKy], [NienKhoa], [MaSVMH]) VALUES (4, 0, N'Hoc Ky 4  ', N'2021-2022 ', 8)
INSERT [dbo].[KetQuaBaiThi] ([MaKQ], [Diem], [HocKy], [NienKhoa], [MaSVMH]) VALUES (1004, 1.75, N'Hoc Ky 4  ', N'2021-2022 ', 8)
SET IDENTITY_INSERT [dbo].[KetQuaBaiThi] OFF



GO
ALTER TABLE [dbo].[BaiThi]  WITH CHECK ADD  CONSTRAINT [FK_BaiThi_NganHangCauHoi] FOREIGN KEY([CauHoi])
REFERENCES [dbo].[NganHangCauHoi] ([MaCauHoi])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BaiThi_NganHangCauHoi]
GO
ALTER TABLE [dbo].[BaiThi]  WITH CHECK ADD  CONSTRAINT [FK_BaiThi_SinhVien_LichThi] FOREIGN KEY([MaSVLT])
REFERENCES [dbo].[SinhVien_LichThi] ([MaSVLT])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BaiThi_SinhVien_LichThi]
GO
ALTER TABLE [dbo].[ChiTietDeThi]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDeThi_DeThi] FOREIGN KEY([MaDe])
REFERENCES [dbo].[DeThi] ([MaDe])
GO
ALTER TABLE [dbo].[ChiTietDeThi] CHECK CONSTRAINT [FK_ChiTietDeThi_DeThi]
GO
ALTER TABLE [dbo].[ChiTietDeThi]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDeThi_NganHangCauHoi] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[NganHangCauHoi] ([MaCauHoi])
GO
ALTER TABLE [dbo].[ChiTietDeThi] CHECK CONSTRAINT [FK_ChiTietDeThi_NganHangCauHoi]
GO
ALTER TABLE [dbo].[Chuong]  WITH CHECK ADD  CONSTRAINT [FK_Chuong_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[Chuong] CHECK CONSTRAINT [FK_Chuong_MonHoc]
GO
ALTER TABLE [dbo].[DeThi]  WITH CHECK ADD  CONSTRAINT [FK_DeThi_PhieuTaoDe] FOREIGN KEY([MaPhieuTaoDe])
REFERENCES [dbo].[PhieuTaoDe] ([MaPhieuTaoDe])
GO
ALTER TABLE [dbo].[DeThi] CHECK CONSTRAINT [FK_DeThi_PhieuTaoDe]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_Khoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_Khoa]
GO
ALTER TABLE [dbo].[KetQuaBaiThi]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaBaiThi_KetQuaBaiThi] FOREIGN KEY([MaSVMH])
REFERENCES [dbo].[SinhVien_MonHoc] ([MaSVMH])
GO
ALTER TABLE [dbo].[KetQuaBaiThi] CHECK CONSTRAINT [FK_KetQuaBaiThi_KetQuaBaiThi]
GO
ALTER TABLE [dbo].[LichThi]  WITH CHECK ADD  CONSTRAINT [FK_LichThi_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[LichThi] CHECK CONSTRAINT [FK_LichThi_MonHoc]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Khoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Khoa]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_Khoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_Khoa]
GO
ALTER TABLE [dbo].[MucDo]  WITH CHECK ADD  CONSTRAINT [FK_MucDo_PhieuTaoDe_Chuong] FOREIGN KEY([MaPTD_C])
REFERENCES [dbo].[PhieuTaoDe_Chuong] ([MaPTD_C])
GO
ALTER TABLE [dbo].[MucDo] CHECK CONSTRAINT [FK_MucDo_PhieuTaoDe_Chuong]
GO
ALTER TABLE [dbo].[NganHangCauHoi]  WITH CHECK ADD  CONSTRAINT [FK_NganHangCauHoi_Chuong] FOREIGN KEY([MaChuong])
REFERENCES [dbo].[Chuong] ([MaChuong])
GO
ALTER TABLE [dbo].[NganHangCauHoi] CHECK CONSTRAINT [FK_NganHangCauHoi_Chuong]
GO
ALTER TABLE [dbo].[NganHangCauHoi]  WITH CHECK ADD  CONSTRAINT [FK_NganHangCauHoi_GiaoVien] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[NganHangCauHoi] CHECK CONSTRAINT [FK_NganHangCauHoi_GiaoVien]
GO
ALTER TABLE [dbo].[NganHangCauHoi]  WITH CHECK ADD  CONSTRAINT [FK_NganHangCauHoi_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[NganHangCauHoi] CHECK CONSTRAINT [FK_NganHangCauHoi_MonHoc]
GO
ALTER TABLE [dbo].[PhieuTaoDe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTaoDe_GiaoVien] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[PhieuTaoDe] CHECK CONSTRAINT [FK_PhieuTaoDe_GiaoVien]
GO
ALTER TABLE [dbo].[PhieuTaoDe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTaoDe_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[PhieuTaoDe] CHECK CONSTRAINT [FK_PhieuTaoDe_MonHoc]
GO
ALTER TABLE [dbo].[PhieuTaoDe_Chuong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTaoDe_Chuong_Chuong] FOREIGN KEY([MaChuong])
REFERENCES [dbo].[Chuong] ([MaChuong])
GO
ALTER TABLE [dbo].[PhieuTaoDe_Chuong] CHECK CONSTRAINT [FK_PhieuTaoDe_Chuong_Chuong]
GO
ALTER TABLE [dbo].[PhieuTaoDe_Chuong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTaoDe_Chuong_PhieuTaoDe] FOREIGN KEY([MaPhieuTaoDe])
REFERENCES [dbo].[PhieuTaoDe] ([MaPhieuTaoDe])
GO
ALTER TABLE [dbo].[PhieuTaoDe_Chuong] CHECK CONSTRAINT [FK_PhieuTaoDe_Chuong_PhieuTaoDe]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Lop]
GO
ALTER TABLE [dbo].[SinhVien_LichThi]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_LichThi_DeThi] FOREIGN KEY([MaDe])
REFERENCES [dbo].[DeThi] ([MaDe])
GO
ALTER TABLE [dbo].[SinhVien_LichThi] CHECK CONSTRAINT [FK_SinhVien_LichThi_DeThi]
GO
ALTER TABLE [dbo].[SinhVien_LichThi]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_LichThi_SinhVien] FOREIGN KEY([Mssv])
REFERENCES [dbo].[SinhVien] ([Mssv])
GO
ALTER TABLE [dbo].[SinhVien_LichThi] CHECK CONSTRAINT [FK_SinhVien_LichThi_SinhVien]
GO
ALTER TABLE [dbo].[SinhVien_LichThi]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_LichThi_SinhVien_LichThi] FOREIGN KEY([MaLichThi])
REFERENCES [dbo].[LichThi] ([MaLichThi])
GO
ALTER TABLE [dbo].[SinhVien_LichThi] CHECK CONSTRAINT [FK_SinhVien_LichThi_SinhVien_LichThi]
GO
ALTER TABLE [dbo].[SinhVien_MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_MonHoc_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[SinhVien_MonHoc] CHECK CONSTRAINT [FK_SinhVien_MonHoc_MonHoc]
GO
ALTER TABLE [dbo].[SinhVien_MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_MonHoc_SinhVien] FOREIGN KEY([Mssv])
REFERENCES [dbo].[SinhVien] ([Mssv])
GO
ALTER TABLE [dbo].[SinhVien_MonHoc] CHECK CONSTRAINT [FK_SinhVien_MonHoc_SinhVien]

