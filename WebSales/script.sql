USE [shoppingWeb]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/14/2020 5:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [nvarchar](50) NOT NULL,
	[CustomerID] [nvarchar](50) NULL,
	[ProductID] [nvarchar](50) NULL,
	[DATE] [date] NULL,
	[TotalPrice] [nvarchar](50) NULL,
 CONSTRAINT [khoachinh3] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/14/2020 5:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[Price] [nvarchar](50) NULL,
	[ProducerID] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [khoachinh2] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taikhoan]    Script Date: 11/14/2020 5:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taikhoan](
	[Tentaikhoan] [nvarchar](50) NOT NULL,
	[Matkhau] [nvarchar](50) NULL,
	[Tenkhachhang] [nvarchar](50) NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[Sodienthoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Ngaysinh] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Soluotmua] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Taikhoan] PRIMARY KEY CLUSTERED 
(
	[Tentaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [DATE], [TotalPrice]) VALUES (N'DH113', N'huyhue', N'111', CAST(N'2020-01-26' AS Date), N'369000')
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [DATE], [TotalPrice]) VALUES (N'DH154', N'huyhue', N'Hyundai, Ford, ', CAST(N'2020-10-16' AS Date), N'464300')
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [DATE], [TotalPrice]) VALUES (N'DH224', N'vunguyen', N'kem tron', CAST(N'2020-01-05' AS Date), N'365')
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [DATE], [TotalPrice]) VALUES (N'DH232', N'ducanh', N'Hyundai, iphone 15, Ford, ', CAST(N'2020-10-16' AS Date), N'1964300')
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [DATE], [TotalPrice]) VALUES (N'DH263', N'huyhue', N'Ford, Audi, ', CAST(N'2020-10-21' AS Date), N'918600')
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [DATE], [TotalPrice]) VALUES (N'DH332', N'myngoc', N'xach tay', CAST(N'2020-10-16' AS Date), N'95000')
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [DATE], [TotalPrice]) VALUES (N'DH369', N'huyhue', N'xa phong', CAST(N'2021-01-05' AS Date), N'357')
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [DATE], [TotalPrice]) VALUES (N'DH974', N'huyhue', N'hang hieu', CAST(N'2020-10-16' AS Date), N'300000')
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [DATE], [TotalPrice]) VALUES (N'DH999', N'ducanh', N'myham', CAST(N'2020-03-15' AS Date), N'9200')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [ProducerID], [Image]) VALUES (N'Product1994', N'Mỹ phẩm', N'232000', N'ducanh', N'images/gi2.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [ProducerID], [Image]) VALUES (N'Product4008', N'Giày thể thao', N'350000', N'vunguyen', N'images/sh5.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [ProducerID], [Image]) VALUES (N'Product4718', N'Áo phông đẹp', N'200000', N'vunguyen', N'images/sh2.png')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [ProducerID], [Image]) VALUES (N'Product8397', N'Điện thoại', N'60000', N'vunguyen', N'images/gi4.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [ProducerID], [Image]) VALUES (N'Product8720', N'Túi sách', N'1500000', N'vunguyen', N'images/gi5.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [ProducerID], [Image]) VALUES (N'Product8925', N'Áo khoác ấm', N'1200000', N'vunguyen', N'images/sh1.png')
INSERT [dbo].[Taikhoan] ([Tentaikhoan], [Matkhau], [Tenkhachhang], [Gioitinh], [Sodienthoai], [Email], [Ngaysinh], [Diachi], [Soluotmua], [Role]) VALUES (N'admin', N'123', N'ADMIN', N'KO', N'0987456321', N'', N'', N'', N'', N'admin')
INSERT [dbo].[Taikhoan] ([Tentaikhoan], [Matkhau], [Tenkhachhang], [Gioitinh], [Sodienthoai], [Email], [Ngaysinh], [Diachi], [Soluotmua], [Role]) VALUES (N'anhtuan', N'123', N'Anh Tuấn', N'nam', N'0136589257', N'anhtuan@gmail.com', N'2020-10-30', N'Quang Tri', NULL, N'user')
INSERT [dbo].[Taikhoan] ([Tentaikhoan], [Matkhau], [Tenkhachhang], [Gioitinh], [Sodienthoai], [Email], [Ngaysinh], [Diachi], [Soluotmua], [Role]) VALUES (N'ducanh', N'123', N'Đức Anh Lê', N'nam', N'0369852147', N'ducanh@gmail.com', N'2020-10-13', N'DA NANG', NULL, N'owner')
INSERT [dbo].[Taikhoan] ([Tentaikhoan], [Matkhau], [Tenkhachhang], [Gioitinh], [Sodienthoai], [Email], [Ngaysinh], [Diachi], [Soluotmua], [Role]) VALUES (N'huyhue', N'123', N'Gia Huy', N'nam', N'0362529468', N'tpgiahuy5@gmail.com', N'2000-07-01', N'61 Lê Minh', NULL, N'user')
INSERT [dbo].[Taikhoan] ([Tentaikhoan], [Matkhau], [Tenkhachhang], [Gioitinh], [Sodienthoai], [Email], [Ngaysinh], [Diachi], [Soluotmua], [Role]) VALUES (N'lengoc', N'123', N'Mỹ Ngọc', N'nu', N'0123456789', N'lengoc@gmail.com', N'01/07/2000', NULL, NULL, N'owner')
INSERT [dbo].[Taikhoan] ([Tentaikhoan], [Matkhau], [Tenkhachhang], [Gioitinh], [Sodienthoai], [Email], [Ngaysinh], [Diachi], [Soluotmua], [Role]) VALUES (N'longsan', N'123', N'Văn Long', N'nu', N'0125874963', N'longsan@gmail.com', N'2020-10-24', N'DA NANG', NULL, N'owner')
INSERT [dbo].[Taikhoan] ([Tentaikhoan], [Matkhau], [Tenkhachhang], [Gioitinh], [Sodienthoai], [Email], [Ngaysinh], [Diachi], [Soluotmua], [Role]) VALUES (N'myngoc', N'123', N'Mai Ngọc', N'nu', N'01663578965', N'myngoc@gmail.com', N'2020-10-08', N'hue', NULL, N'user')
INSERT [dbo].[Taikhoan] ([Tentaikhoan], [Matkhau], [Tenkhachhang], [Gioitinh], [Sodienthoai], [Email], [Ngaysinh], [Diachi], [Soluotmua], [Role]) VALUES (N'vunguyen', N'123', N'Nguyễn Vũ', N'nam', N'0123698574', N'vunguyen', N'2020-10-22', N'hue', NULL, N'owner')
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Taikhoan] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Taikhoan] ([Tentaikhoan])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Taikhoan]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Taikhoan] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Taikhoan] ([Tentaikhoan])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Taikhoan]
GO
