USE [DbCaaS00Testing]
GO
/****** Object:  Table [dbo].[CartsShop2]    Script Date: 20.11.2022 23:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartsShop2](
	[cart_id] [varchar](40) NOT NULL,
	[cust_id] [varchar](40) NOT NULL,
	[status] [varchar](40) NULL,
 CONSTRAINT [PK_CartsShop2] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CartsShop2]  WITH CHECK ADD  CONSTRAINT [FK_CartsShop1_CustomersShop2] FOREIGN KEY([cust_id])
REFERENCES [dbo].[CustomersShop2] ([person_id])
GO
ALTER TABLE [dbo].[CartsShop2] CHECK CONSTRAINT [FK_CartsShop1_CustomersShop2]
GO
