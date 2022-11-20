USE [DbCaaS00Testing]
GO
/****** Object:  Table [dbo].[AddressesShops]    Script Date: 20.11.2022 23:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressesShops](
	[address_id] [varchar](40) NOT NULL,
	[street] [varchar](40) NULL,
	[floor] [varchar](40) NULL,
	[postal_code] [float] NULL,
	[city] [varchar](40) NULL,
	[province] [varchar](40) NULL,
	[country] [varchar](40) NULL,
 CONSTRAINT [PK_AddressesShops] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
