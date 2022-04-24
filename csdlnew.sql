USE [QuanLyThueXe]
GO
/****** Object:  Table [dbo].[rental]    Script Date: 4/24/2022 3:04:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rental](
	[rental_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[vehicle_id] [int] NOT NULL,
	[voucher_id] [int] NULL,
	[date_rental] [varchar](255) NULL,
	[number_day] [int] NULL,
	[amount] [int] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[rental_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 4/24/2022 3:04:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/24/2022 3:04:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[fullname] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[phonenumber] [varchar](255) NULL,
	[password] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehicle]    Script Date: 4/24/2022 3:04:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicle](
	[vehicle_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[image] [nvarchar](500) NULL,
	[type_vehicle] [nvarchar](255) NULL,
	[price] [int] NULL,
	[description] [nvarchar](max) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[vehicle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 4/24/2022 3:04:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[voucher_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[discount] [int] NULL,
	[status] [int] NULL,
	[quantity] [int] NULL,
	[date_expire] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[rental] ON 

INSERT [dbo].[rental] ([rental_id], [user_id], [vehicle_id], [voucher_id], [date_rental], [number_day], [amount], [status]) VALUES (3, 2, 6, NULL, N'2022-04-25', 1, 100000000, 2)
INSERT [dbo].[rental] ([rental_id], [user_id], [vehicle_id], [voucher_id], [date_rental], [number_day], [amount], [status]) VALUES (4, 2, 6, NULL, N'2022-04-30', 12, 100000000, 2)
INSERT [dbo].[rental] ([rental_id], [user_id], [vehicle_id], [voucher_id], [date_rental], [number_day], [amount], [status]) VALUES (5, 2, 6, 1, N'2022-04-25', 2, 180000000, 2)
SET IDENTITY_INSERT [dbo].[rental] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([role_id], [name]) VALUES (1, N'Admin')
INSERT [dbo].[role] ([role_id], [name]) VALUES (2, N'Customer')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [role_id], [fullname], [email], [phonenumber], [password]) VALUES (2, 2, N'Minh Nha', N'minhnha2308@gmail.com', N'01223415449', N'25f9e794323b453885f5181f1b624db')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET IDENTITY_INSERT [dbo].[vehicle] ON 

INSERT [dbo].[vehicle] ([vehicle_id], [name], [image], [type_vehicle], [price], [description], [quantity]) VALUES (1, N'Exceter', N'anh1.jpg', N'Xe máy', 3000000, N'đẹp', 10)
INSERT [dbo].[vehicle] ([vehicle_id], [name], [image], [type_vehicle], [price], [description], [quantity]) VALUES (2, N'Vinfat', N'oto.jpg', N'Xe ô tô', 100000000, N'Đẹp', 10)
INSERT [dbo].[vehicle] ([vehicle_id], [name], [image], [type_vehicle], [price], [description], [quantity]) VALUES (3, N'Exceter', N'anh1.jpg', N'Xe máy', 3000000, N'đẹp', 11)
INSERT [dbo].[vehicle] ([vehicle_id], [name], [image], [type_vehicle], [price], [description], [quantity]) VALUES (4, N'Vinfat', N'oto.jpg', N'Xe ô tô', 100000000, N'Đẹp', 12)
INSERT [dbo].[vehicle] ([vehicle_id], [name], [image], [type_vehicle], [price], [description], [quantity]) VALUES (5, N'Exceter', N'anh1.jpg', N'Xe máy', 3000000, N'đẹp', 12)
INSERT [dbo].[vehicle] ([vehicle_id], [name], [image], [type_vehicle], [price], [description], [quantity]) VALUES (6, N'Vinfat1', N'oto.jpg', N'Xe ô tô', 100000000, N'Đẹp', 12)
INSERT [dbo].[vehicle] ([vehicle_id], [name], [image], [type_vehicle], [price], [description], [quantity]) VALUES (7, N'Vinfat', N'oto.jpg', N'Xe ô tô', 100000000, N'Đẹp', 13)
INSERT [dbo].[vehicle] ([vehicle_id], [name], [image], [type_vehicle], [price], [description], [quantity]) VALUES (8, N'Vinfat', N'oto.jpg', N'Xe ô tô', 100000000, N'Đẹp', 14)
INSERT [dbo].[vehicle] ([vehicle_id], [name], [image], [type_vehicle], [price], [description], [quantity]) VALUES (9, N'Exceter', N'anh1.jpg', N'Xe máy', 3000000, N'đẹp', 13)
INSERT [dbo].[vehicle] ([vehicle_id], [name], [image], [type_vehicle], [price], [description], [quantity]) VALUES (10, N'Exceter', N'anh1.jpg', N'Xe máy', 3000000, N'đẹp', 14)
SET IDENTITY_INSERT [dbo].[vehicle] OFF
GO
SET IDENTITY_INSERT [dbo].[voucher] ON 

INSERT [dbo].[voucher] ([voucher_id], [name], [discount], [status], [quantity], [date_expire]) VALUES (1, N'D101', 10, 1, 9, N'2022-04-25')
SET IDENTITY_INSERT [dbo].[voucher] OFF
GO
ALTER TABLE [dbo].[rental]  WITH CHECK ADD  CONSTRAINT [fk_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[rental] CHECK CONSTRAINT [fk_user]
GO
ALTER TABLE [dbo].[rental]  WITH CHECK ADD  CONSTRAINT [fk_vehicle] FOREIGN KEY([vehicle_id])
REFERENCES [dbo].[vehicle] ([vehicle_id])
GO
ALTER TABLE [dbo].[rental] CHECK CONSTRAINT [fk_vehicle]
GO
ALTER TABLE [dbo].[rental]  WITH CHECK ADD  CONSTRAINT [fk_voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[voucher] ([voucher_id])
GO
ALTER TABLE [dbo].[rental] CHECK CONSTRAINT [fk_voucher]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [fk_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [fk_role]
GO
