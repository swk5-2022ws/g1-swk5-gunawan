USE [DbCaaS00Testing]
GO
/****** Object:  Table [dbo].[CustomersShop1]    Script Date: 20.11.2022 23:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomersShop1](
	[person_id] [varchar](40) NOT NULL,
	[first_name] [varchar](40) NOT NULL,
	[last_name] [varchar](40) NOT NULL,
	[dob] [datetime] NOT NULL,
	[email] [varchar](60) NOT NULL,
	[address] [varchar](40) NOT NULL,
	[status] [varchar](16) NULL,
 CONSTRAINT [PK_CustomersShop1] PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomersShop1]  WITH CHECK ADD  CONSTRAINT [FK_CustomersShop1_AddressesCustomersShop1] FOREIGN KEY([address])
REFERENCES [dbo].[AddressesCustomersShop1] ([address_id])
GO
ALTER TABLE [dbo].[CustomersShop1] CHECK CONSTRAINT [FK_CustomersShop1_AddressesCustomersShop1]
GO
