USE [DbCaaS00Testing]
GO
/****** Object:  Table [dbo].[OrdersDetailsShop2]    Script Date: 20.11.2022 23:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetailsShop2](
	[order_details_id] [varchar](40) NOT NULL,
	[order_id] [varchar](40) NOT NULL,
	[product_id] [varchar](40) NOT NULL,
	[unit_price] [float] NOT NULL,
	[qty] [float] NOT NULL,
	[discount] [float] NULL,
 CONSTRAINT [PK_OrdersDetailsShop2] PRIMARY KEY CLUSTERED 
(
	[order_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrdersDetailsShop2] ADD  DEFAULT ((0)) FOR [product_id]
GO
ALTER TABLE [dbo].[OrdersDetailsShop2]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetailsShop2_OrdersShop2] FOREIGN KEY([order_id])
REFERENCES [dbo].[OrdersShop2] ([order_id])
GO
ALTER TABLE [dbo].[OrdersDetailsShop2] CHECK CONSTRAINT [FK_OrdersDetailsShop2_OrdersShop2]
GO
ALTER TABLE [dbo].[OrdersDetailsShop2]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetailsShop2_ProductShop2] FOREIGN KEY([product_id])
REFERENCES [dbo].[ProductShop2] ([product_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdersDetailsShop2] CHECK CONSTRAINT [FK_OrdersDetailsShop2_ProductShop2]
GO
