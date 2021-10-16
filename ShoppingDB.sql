create database ShoppingDB
Go
USE [ShoppingDB]
GO
/****** Object:  Table [dbo].[Account] 15:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO


/****** Accounts table ******/
CREATE TABLE [dbo].[Account](
	[user_mail] [varchar](100) NOT NULL,
	[password] [varchar](64) NOT NULL,
	[account_role] [int] NOT NULL,
	[user_name] [varchar](50) NOT NULL,
	[user_address] [varchar](255) NULL,
	[user_phone] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_mail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



GO
SET ANSI_PADDING OFF
GO



/****** Object:  Table [dbo].[Products]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO


/****** Products table ******/
CREATE TABLE [dbo].[Products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](100) NOT NULL,
	[product_des] [varchar](255) NULL,
	[product_price] [float] NOT NULL,
	[product_img_source] [varchar](255) NULL,
	[product_type] [varchar](100) NULL,
	[product_brand] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO


/****** Orders table ******/
CREATE TABLE [dbo].[Orders](
	[user_mail] [varchar](100) NULL,
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_status] [int] NULL,
	[order_date] [date] NOT NULL,
	[order_discount_code] [varchar](8) NULL,
	[order_address] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]




GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetProductsType]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetProductsType]
@u int,
@v int,
@b varchar(50)
as
begin
 SELECT p.product_id ,p.product_name, p.product_des, p.product_price, p.product_img_source, p.product_type, p.product_brand FROM ( 
  SELECT *, ROW_NUMBER() OVER (ORDER BY product_id) as row 
  FROM Products p where p.product_type = @b
 ) p WHERE p.row >= @u and p.row <= @v
end

GO
/****** Object:  StoredProcedure [dbo].[GetProducts]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetProducts]
@u int,
@v int
as
begin
 SELECT p.product_id ,p.product_name, p.product_des, p.product_price, p.product_img_source, p.product_type, p.product_brand FROM ( 
  SELECT *, ROW_NUMBER() OVER (ORDER BY product_id) as row 
  FROM Products p
 ) p WHERE p.row >= @u and p.row <= @v
end
GO
/****** Object:  Table [dbo].[Orders_detail]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Orders_details table ******/
CREATE TABLE [dbo].[Orders_detail](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[amount_product] [int] NULL,
	[price_product] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF__Orders__order_da__1273C1CD]    ******/
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [order_date]
GO
/****** Object:  ForeignKey [FK__Orders_de__order__182C9B23]    ******/
ALTER TABLE [dbo].[Orders_detail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
/****** Object:  ForeignKey [FK__Orders_de__produ__1920BF5C]  ******/
ALTER TABLE [dbo].[Orders_detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO




--adding data to product table
insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('IPhone 13 Pro Silver','Display: 6.5", Super Retina XDR 
HDH: iOS 15 
CPU: Apple A15 Bionic 8 
RAM: 4 GB, ROM: 512 GB 
Camera: 3 camera 12 MP, Selfie: 12 MP',1390,'phone1-1.jpg','Cellphone',
'Apple')

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('IPhone 13 Pro Blue','Display: 6.5", Super Retina XDR 
HDH: iOS 15 
CPU: Apple A13 Bionic 6 
RAM: 4 GB, ROM: 512 GB 
Camera: 3 camera 12 MP, Selfie: 12 MP',1690,'phone1-2.jpg','Cellphone',
'Apple')

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('IPhone 13 Pro Gold','Display: 6.5", Super Retina 
HDH: iOS 15 
CPU: Apple A12 Bionic 6 
RAM: 4 GB, ROM: 256 GB 
Camera: 3 camera 12 MP, Selfie: 7 MP',1690,'phone1-3.jpg','Cellphone',
'Apple')

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('IPhone 13 Pro Graphite','Display: 5.8", Super Retina 
HDH: iOS 15 
CPU: Apple A11 Bionic 6 
RAM: 3 GB, ROM: 256 GB 
Camera: 3 camera 12 MP, Selfie: 7 MP',1500,'phone1-4.jpg','Cellphone',
'Apple')

--samsung
insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Samsung Galaxy Z-Fold','Display: 5.8", Super Amoled 
HDH: Android 10 
CPU: Snapdragon 880 
RAM: 4 GB, ROM: 64 GB 
Camera: 12 MP, Selfie: 7 MP',2000,'phone2-1.jpg','Cellphone',
'Samsung')


insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Samsung Galaxy Z-Flip 3','Display: 6.1", Liquid Retina 
HDH: Android 10 
CPU: Snapdragon 880 
RAM: 4 GB, ROM: 64 GB 
Camera: 12 MP, Selfie: 7 MP',1900,'phone2-2.jpg','Cellphone',
'Samsung')

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Iphone 11 Red','Display: 6.1", Liquid Retina 
HDH: iOS 13 
CPU: Apple A12 Bionic 6 
RAM: 3 GB, ROM: 128 GB 
Camera: 12 MP, Selfie: 7 MP',519,'phone2-3.jpg','Cellphone',
'Apple')

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Samsung Galaxy Note','Display: 5.5", Retina HD 
HDH: Android 10 
CPU: Snapdragon 780 
RAM: 3 GB, ROM: 64 GB 
Camera: 12 MP, Selfie: 7 MP',819,'phone2-4.jpg','Cellphone',
'Samsung')

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Samsung Galaxy A52','Display: 5.5", Retina HD 
HDH: Android 10 
CPU: Snapdragon 680 
RAM: 3 GB, ROM: 32 GB 
Camera: 12 MP, Selfie: 7 MP',480,'phone3-1.jpg','Cellphone',
'Samsung')

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Realme 8 Pro','Display: 4.7", Retina HD 
HDH: Android 9 
CPU: Snapdragon 680 
RAM: 2 GB, ROM: 32 GB 
Camera: 12 MP, Selfie: 7 MP',449,'phone3-2.jpg','Cellphone',
'Xiaomi')

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Samsung Galaxy Z-Fold','Display: 6.7", Retina HD 
HDH: Android 9 
CPU: Snapdragon 880 
RAM: 6 GB, ROM: 320 GB 
Camera: 12 MP, Selfie: 7 MP',2000,'phone3-3.jpg','Cellphone',
'Samsung')

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Samsung Galaxy Mint','Display: 4.7", Retina HD 
HDH: Android 9 
CPU: Snapdragon 660 
RAM: 3 GB, ROM: 320 GB 
Camera: 12 MP, Selfie: 7 MP',549,'phone3-4.jpg','Cellphone',
'Samsung')

--admin
INSERT [dbo].[Account] ([user_mail], [password], [account_role], [user_name], [user_address], [user_phone]) 
VALUES ('admin@gmail.com', '12345', 1, 'Nguyen Van Quyet', 'UET', '0765870407')
INSERT [dbo].[Account] ([user_mail], [password], [account_role], [user_name], [user_address], [user_phone]) 
VALUES ('quyetnv_58@vnu.edu.vn', '12345', 1, 'Nguyen Van Quyet', 'UET', '1234567')