USE [DbCaaS00Testing]
GO
/****** Object:  Table [dbo].[OrdersDetailsShop1]    Script Date: 20.11.2022 23:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetailsShop1](
	[order_details_id] [varchar](40) NOT NULL,
	[order_id] [varchar](40) NOT NULL,
	[product_id] [varchar](40) NOT NULL,
	[unit_price] [float] NOT NULL,
	[qty] [float] NOT NULL,
	[discount] [float] NULL,
 CONSTRAINT [PK_OrdersDetailsShop1] PRIMARY KEY CLUSTERED 
(
	[order_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrdersDetailsShop1] ADD  DEFAULT ('x') FOR [order_id]
GO
ALTER TABLE [dbo].[OrdersDetailsShop1] ADD  DEFAULT ((0)) FOR [product_id]
GO
ALTER TABLE [dbo].[OrdersDetailsShop1]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetailsShop1_OrdersShop1] FOREIGN KEY([order_id])
REFERENCES [dbo].[OrdersShop1] ([order_id])
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[OrdersDetailsShop1] CHECK CONSTRAINT [FK_OrdersDetailsShop1_OrdersShop1]
GO
ALTER TABLE [dbo].[OrdersDetailsShop1]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetailsShop1_ProductShop1] FOREIGN KEY([product_id])
REFERENCES [dbo].[ProductShop1] ([product_id])
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[OrdersDetailsShop1] CHECK CONSTRAINT [FK_OrdersDetailsShop1_ProductShop1]
GO
