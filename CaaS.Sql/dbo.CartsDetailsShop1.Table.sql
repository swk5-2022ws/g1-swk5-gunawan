USE [DbCaaS00Testing]
GO
/****** Object:  Table [dbo].[CartsDetailsShop1]    Script Date: 20.11.2022 23:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartsDetailsShop1](
	[cart_details_id] [varchar](40) NOT NULL,
	[cart_id] [varchar](40) NOT NULL,
	[product_id] [varchar](40) NOT NULL,
	[qty] [float] NULL,
 CONSTRAINT [PK_CartsDetailsShop1] PRIMARY KEY CLUSTERED 
(
	[cart_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CartsDetailsShop1]  WITH CHECK ADD  CONSTRAINT [FK_CartsDetailsShop1_CartsShop1] FOREIGN KEY([cart_id])
REFERENCES [dbo].[CartsShop1] ([cart_id])
GO
ALTER TABLE [dbo].[CartsDetailsShop1] CHECK CONSTRAINT [FK_CartsDetailsShop1_CartsShop1]
GO
ALTER TABLE [dbo].[CartsDetailsShop1]  WITH CHECK ADD  CONSTRAINT [FK_CartsDetailsShop1_ProductShop1] FOREIGN KEY([product_id])
REFERENCES [dbo].[ProductShop1] ([product_id])
GO
ALTER TABLE [dbo].[CartsDetailsShop1] CHECK CONSTRAINT [FK_CartsDetailsShop1_ProductShop1]
GO
