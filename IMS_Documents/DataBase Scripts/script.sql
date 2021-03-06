USE [SN]
GO
/****** Object:  Table [dbo].[User]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[User_id] [int] IDENTITY(1,1) NOT NULL,
	[User_name] [varchar](100) NOT NULL,
	[password] [varchar](25) NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Created_By] [varchar](100) NOT NULL,
	[Modified_By] [varchar](100) NOT NULL,
	[Modification_Date] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status](
	[Status_Code] [int] IDENTITY(1,1) NOT NULL,
	[Status_Description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Status_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Session]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Session](
	[Session_Id] [int] IDENTITY(1,1) NOT NULL,
	[Session_Code] [varchar](100) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[Session_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendor](
	[Vendor_ID] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_Name] [varchar](100) NOT NULL,
	[Contact_No] [varchar](25) NULL,
	[Address] [varchar](500) NULL,
	[Created_By] [varchar](100) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Modified_By] [varchar](100) NOT NULL,
	[Modification_Date] [datetime] NOT NULL,
	[Session_id] [int] NOT NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[Vendor_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Name] [varchar](100) NOT NULL,
	[Contact_No] [varchar](25) NULL,
	[Address] [varchar](500) NULL,
	[Created_By] [varchar](100) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Modified_By] [varchar](100) NOT NULL,
	[Modification_Date] [datetime] NOT NULL,
	[Session_id] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[Item_Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Name] [varchar](100) NOT NULL,
	[Created_By] [varchar](100) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Modified_By] [varchar](100) NOT NULL,
	[Modification_Date] [datetime] NOT NULL,
	[Session_id] [int] NOT NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[Item_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item_Company]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_Company](
	[Item_Company_ID] [int] IDENTITY(1,1) NOT NULL,
	[Item_Company_Name] [varchar](100) NOT NULL,
	[Item_ID] [int] NOT NULL,
	[Description] [varchar](500) NULL,
	[Created_By] [varchar](100) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Modified_By] [varchar](100) NOT NULL,
	[Modification_Date] [datetime] NOT NULL,
	[Session_id] [int] NOT NULL,
 CONSTRAINT [PK_Item_Company] PRIMARY KEY CLUSTERED 
(
	[Item_Company_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item_Category]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_Category](
	[Item_Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Item_Category_Name] [varchar](100) NOT NULL,
	[Item_ID] [int] NOT NULL,
	[Description] [varchar](500) NULL,
	[Created_By] [varchar](100) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Modified_By] [varchar](100) NOT NULL,
	[Modification_Date] [datetime] NOT NULL,
	[Session_id] [int] NOT NULL,
 CONSTRAINT [PK_Item_Category] PRIMARY KEY CLUSTERED 
(
	[Item_Category_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice_Main]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice_Main](
	[Invoice_Id] [int] IDENTITY(1,1) NOT NULL,
	[Invoice_Ref_No] [varchar](100) NOT NULL,
	[Invoice_Amount] [dbo].[Amount] NOT NULL,
	[Invoice_Status 
FROM decimal(19,4) NOT NULL ;
Invoice_Status]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]] [varchar](5) NOT NULL,
	[Invoice_Generation_Date] [datetime] NOT NULL,
	[Created_By] [varchar](100) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Modified_By] [varchar](100) NOT NULL,
	[Modification_Date] [datetime] NOT NULL,
	[Session_id] [int] NOT NULL,
	[Invoice_Settlement_Date] [datetime] NOT NULL,
	[Settled_Amount] [dbo].[Amount] NULL,
	[Customer_ID] [int] NOT NULL,
	[Customer_Name] [varchar](100) NULL,
	[Remarks] [varchar](500) NULL,
 CONSTRAINT [PK_Invoice_Main] PRIMARY KEY CLUSTERED 
(
	[Invoice_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item_Model]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_Model](
	[Item_Model_ID] [int] IDENTITY(1,1) NOT NULL,
	[Item_Model_Name] [varchar](100) NOT NULL,
	[Description] [varchar](500) NULL,
	[Created_By] [varchar](100) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Modified_By] [varchar](100) NOT NULL,
	[Modification_Date] [datetime] NOT NULL,
	[Session_id] [int] NOT NULL,
	[Item_ID] [int] NOT NULL,
	[Item_Category_ID] [int] NOT NULL,
	[Item_Company_ID] [int] NOT NULL,
 CONSTRAINT [PK_Item_Model] PRIMARY KEY CLUSTERED 
(
	[Item_Model_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item_Stock_Level]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_Stock_Level](
	[Item_Stock_Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Id] [int] NOT NULL,
	[Item_Category_ID] [int] NOT NULL,
	[Item_Company_ID] [int] NOT NULL,
	[Item_Model_ID] [int] NOT NULL,
	[Item_Quantity_InStock] [int] NOT NULL,
	[Created_By] [varchar](100) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Modified_By] [varchar](100) NOT NULL,
	[Modification_Date] [datetime] NOT NULL,
	[Session_id] [int] NOT NULL,
 CONSTRAINT [PK_Item_Stock_Level] PRIMARY KEY CLUSTERED 
(
	[Item_Stock_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item_Reorder]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_Reorder](
	[Item_reorder_id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Id] [int] NOT NULL,
	[Item_Category_ID] [int] NOT NULL,
	[Item_Company_ID] [int] NOT NULL,
	[Item_Model_ID] [int] NOT NULL,
	[Receiving_date] [datetime] NOT NULL,
	[Item_Quantity] [int] NOT NULL,
	[Vendor_ID] [int] NOT NULL,
	[Unit_Price] [varchar](25) NOT NULL,
	[Created_By] [varchar](100) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Modified_By] [varchar](100) NOT NULL,
	[Modification_Date] [datetime] NOT NULL,
	[Session_id] [int] NOT NULL,
 CONSTRAINT [PK_Item_Reorder] PRIMARY KEY CLUSTERED 
(
	[Item_reorder_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice_Line_Item]    Script Date: 08/24/2014 02:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice_Line_Item](
	[Invoice_Line_Item_Id] [int] IDENTITY(1,1) NOT NULL,
	[Invoice_Id] [int] NOT NULL,
	[Item_Id] [int] NOT NULL,
	[Item_Category_ID] [int] NOT NULL,
	[Item_Company_ID] [int] NOT NULL,
	[Item_Model_ID] [int] NOT NULL,
	[Item_quantity] [int] NOT NULL,
	[Item_Unit_Price] [dbo].[Amount] NOT NULL,
	[Line_Item_Amount] [dbo].[Amount] NOT NULL,
 CONSTRAINT [PK_Invoice_Line_Item] PRIMARY KEY CLUSTERED 
(
	[Invoice_Line_Item_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Customer_Session]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Session] FOREIGN KEY([Session_id])
REFERENCES [dbo].[Session] ([Session_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Session]
GO
/****** Object:  ForeignKey [FK_Invoice_Line_Item_Invoice_Main]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Invoice_Line_Item]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Line_Item_Invoice_Main] FOREIGN KEY([Invoice_Id])
REFERENCES [dbo].[Invoice_Main] ([Invoice_Id])
GO
ALTER TABLE [dbo].[Invoice_Line_Item] CHECK CONSTRAINT [FK_Invoice_Line_Item_Invoice_Main]
GO
/****** Object:  ForeignKey [FK_Invoice_Line_Item_Item]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Invoice_Line_Item]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Line_Item_Item] FOREIGN KEY([Item_Id])
REFERENCES [dbo].[Item] ([Item_Id])
GO
ALTER TABLE [dbo].[Invoice_Line_Item] CHECK CONSTRAINT [FK_Invoice_Line_Item_Item]
GO
/****** Object:  ForeignKey [FK_Invoice_Line_Item_Item_Category]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Invoice_Line_Item]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Line_Item_Item_Category] FOREIGN KEY([Item_Category_ID])
REFERENCES [dbo].[Item_Category] ([Item_Category_ID])
GO
ALTER TABLE [dbo].[Invoice_Line_Item] CHECK CONSTRAINT [FK_Invoice_Line_Item_Item_Category]
GO
/****** Object:  ForeignKey [FK_Invoice_Line_Item_Item_Company]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Invoice_Line_Item]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Line_Item_Item_Company] FOREIGN KEY([Item_Company_ID])
REFERENCES [dbo].[Item_Company] ([Item_Company_ID])
GO
ALTER TABLE [dbo].[Invoice_Line_Item] CHECK CONSTRAINT [FK_Invoice_Line_Item_Item_Company]
GO
/****** Object:  ForeignKey [FK_Invoice_Line_Item_Item_Model]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Invoice_Line_Item]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Line_Item_Item_Model] FOREIGN KEY([Item_Model_ID])
REFERENCES [dbo].[Item_Model] ([Item_Model_ID])
GO
ALTER TABLE [dbo].[Invoice_Line_Item] CHECK CONSTRAINT [FK_Invoice_Line_Item_Item_Model]
GO
/****** Object:  ForeignKey [FK_Invoice_Main_Customer]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Invoice_Main]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Main_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoice_Main] CHECK CONSTRAINT [FK_Invoice_Main_Customer]
GO
/****** Object:  ForeignKey [FK_Invoice_Main_Session]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Invoice_Main]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Main_Session] FOREIGN KEY([Session_id])
REFERENCES [dbo].[Session] ([Session_Id])
GO
ALTER TABLE [dbo].[Invoice_Main] CHECK CONSTRAINT [FK_Invoice_Main_Session]
GO
/****** Object:  ForeignKey [FK_Item_Session]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Session] FOREIGN KEY([Session_id])
REFERENCES [dbo].[Session] ([Session_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Session]
GO
/****** Object:  ForeignKey [FK_Item_Category_Item]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Category]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category_Item] FOREIGN KEY([Item_ID])
REFERENCES [dbo].[Item] ([Item_Id])
GO
ALTER TABLE [dbo].[Item_Category] CHECK CONSTRAINT [FK_Item_Category_Item]
GO
/****** Object:  ForeignKey [FK_Item_Category_Session]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Category]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category_Session] FOREIGN KEY([Session_id])
REFERENCES [dbo].[Session] ([Session_Id])
GO
ALTER TABLE [dbo].[Item_Category] CHECK CONSTRAINT [FK_Item_Category_Session]
GO
/****** Object:  ForeignKey [FK_Item_Company_Item]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Company]  WITH CHECK ADD  CONSTRAINT [FK_Item_Company_Item] FOREIGN KEY([Item_ID])
REFERENCES [dbo].[Item] ([Item_Id])
GO
ALTER TABLE [dbo].[Item_Company] CHECK CONSTRAINT [FK_Item_Company_Item]
GO
/****** Object:  ForeignKey [FK_Item_Company_Session]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Company]  WITH CHECK ADD  CONSTRAINT [FK_Item_Company_Session] FOREIGN KEY([Session_id])
REFERENCES [dbo].[Session] ([Session_Id])
GO
ALTER TABLE [dbo].[Item_Company] CHECK CONSTRAINT [FK_Item_Company_Session]
GO
/****** Object:  ForeignKey [FK_Item_Model_Item]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Model]  WITH CHECK ADD  CONSTRAINT [FK_Item_Model_Item] FOREIGN KEY([Item_ID])
REFERENCES [dbo].[Item] ([Item_Id])
GO
ALTER TABLE [dbo].[Item_Model] CHECK CONSTRAINT [FK_Item_Model_Item]
GO
/****** Object:  ForeignKey [FK_Item_Model_Item_Category]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Model]  WITH CHECK ADD  CONSTRAINT [FK_Item_Model_Item_Category] FOREIGN KEY([Item_Category_ID])
REFERENCES [dbo].[Item_Category] ([Item_Category_ID])
GO
ALTER TABLE [dbo].[Item_Model] CHECK CONSTRAINT [FK_Item_Model_Item_Category]
GO
/****** Object:  ForeignKey [FK_Item_Model_Item_Company]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Model]  WITH CHECK ADD  CONSTRAINT [FK_Item_Model_Item_Company] FOREIGN KEY([Item_Company_ID])
REFERENCES [dbo].[Item_Company] ([Item_Company_ID])
GO
ALTER TABLE [dbo].[Item_Model] CHECK CONSTRAINT [FK_Item_Model_Item_Company]
GO
/****** Object:  ForeignKey [FK_Item_Model_Session]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Model]  WITH CHECK ADD  CONSTRAINT [FK_Item_Model_Session] FOREIGN KEY([Session_id])
REFERENCES [dbo].[Session] ([Session_Id])
GO
ALTER TABLE [dbo].[Item_Model] CHECK CONSTRAINT [FK_Item_Model_Session]
GO
/****** Object:  ForeignKey [FK_Item_Reorder_Item]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Reorder]  WITH CHECK ADD  CONSTRAINT [FK_Item_Reorder_Item] FOREIGN KEY([Item_Id])
REFERENCES [dbo].[Item] ([Item_Id])
GO
ALTER TABLE [dbo].[Item_Reorder] CHECK CONSTRAINT [FK_Item_Reorder_Item]
GO
/****** Object:  ForeignKey [FK_Item_Reorder_Item_Category]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Reorder]  WITH CHECK ADD  CONSTRAINT [FK_Item_Reorder_Item_Category] FOREIGN KEY([Item_Category_ID])
REFERENCES [dbo].[Item_Category] ([Item_Category_ID])
GO
ALTER TABLE [dbo].[Item_Reorder] CHECK CONSTRAINT [FK_Item_Reorder_Item_Category]
GO
/****** Object:  ForeignKey [FK_Item_Reorder_Item_Company]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Reorder]  WITH CHECK ADD  CONSTRAINT [FK_Item_Reorder_Item_Company] FOREIGN KEY([Item_Company_ID])
REFERENCES [dbo].[Item_Company] ([Item_Company_ID])
GO
ALTER TABLE [dbo].[Item_Reorder] CHECK CONSTRAINT [FK_Item_Reorder_Item_Company]
GO
/****** Object:  ForeignKey [FK_Item_Reorder_Item_Model]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Reorder]  WITH CHECK ADD  CONSTRAINT [FK_Item_Reorder_Item_Model] FOREIGN KEY([Item_Model_ID])
REFERENCES [dbo].[Item_Model] ([Item_Model_ID])
GO
ALTER TABLE [dbo].[Item_Reorder] CHECK CONSTRAINT [FK_Item_Reorder_Item_Model]
GO
/****** Object:  ForeignKey [FK_Item_Reorder_Session]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Reorder]  WITH CHECK ADD  CONSTRAINT [FK_Item_Reorder_Session] FOREIGN KEY([Session_id])
REFERENCES [dbo].[Session] ([Session_Id])
GO
ALTER TABLE [dbo].[Item_Reorder] CHECK CONSTRAINT [FK_Item_Reorder_Session]
GO
/****** Object:  ForeignKey [FK_Item_Reorder_Vendor]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Reorder]  WITH CHECK ADD  CONSTRAINT [FK_Item_Reorder_Vendor] FOREIGN KEY([Vendor_ID])
REFERENCES [dbo].[Vendor] ([Vendor_ID])
GO
ALTER TABLE [dbo].[Item_Reorder] CHECK CONSTRAINT [FK_Item_Reorder_Vendor]
GO
/****** Object:  ForeignKey [FK_Item_Stock_Level_Item]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Stock_Level]  WITH CHECK ADD  CONSTRAINT [FK_Item_Stock_Level_Item] FOREIGN KEY([Item_Id])
REFERENCES [dbo].[Item] ([Item_Id])
GO
ALTER TABLE [dbo].[Item_Stock_Level] CHECK CONSTRAINT [FK_Item_Stock_Level_Item]
GO
/****** Object:  ForeignKey [FK_Item_Stock_Level_Item_Category]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Stock_Level]  WITH CHECK ADD  CONSTRAINT [FK_Item_Stock_Level_Item_Category] FOREIGN KEY([Item_Category_ID])
REFERENCES [dbo].[Item_Category] ([Item_Category_ID])
GO
ALTER TABLE [dbo].[Item_Stock_Level] CHECK CONSTRAINT [FK_Item_Stock_Level_Item_Category]
GO
/****** Object:  ForeignKey [FK_Item_Stock_Level_Item_Company]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Stock_Level]  WITH CHECK ADD  CONSTRAINT [FK_Item_Stock_Level_Item_Company] FOREIGN KEY([Item_Company_ID])
REFERENCES [dbo].[Item_Company] ([Item_Company_ID])
GO
ALTER TABLE [dbo].[Item_Stock_Level] CHECK CONSTRAINT [FK_Item_Stock_Level_Item_Company]
GO
/****** Object:  ForeignKey [FK_Item_Stock_Level_Item_Model]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Stock_Level]  WITH CHECK ADD  CONSTRAINT [FK_Item_Stock_Level_Item_Model] FOREIGN KEY([Item_Model_ID])
REFERENCES [dbo].[Item_Model] ([Item_Model_ID])
GO
ALTER TABLE [dbo].[Item_Stock_Level] CHECK CONSTRAINT [FK_Item_Stock_Level_Item_Model]
GO
/****** Object:  ForeignKey [FK_Item_Stock_Level_Session]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Item_Stock_Level]  WITH CHECK ADD  CONSTRAINT [FK_Item_Stock_Level_Session] FOREIGN KEY([Session_id])
REFERENCES [dbo].[Session] ([Session_Id])
GO
ALTER TABLE [dbo].[Item_Stock_Level] CHECK CONSTRAINT [FK_Item_Stock_Level_Session]
GO
/****** Object:  ForeignKey [FK_Session_Session]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Session] FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([User_id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Session]
GO
/****** Object:  ForeignKey [FK_Vendor_Session]    Script Date: 08/24/2014 02:15:51 ******/
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_Session] FOREIGN KEY([Session_id])
REFERENCES [dbo].[Session] ([Session_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_Session]
GO
