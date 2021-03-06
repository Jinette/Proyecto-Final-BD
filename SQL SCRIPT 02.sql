--Luiseida Corniel, Matricula: 11-EIIT-1-010
USE [master]
GO
/****** Object:  Database [CORNIEL02]    Script Date: 24/7/2018 4:34:12 p. m. ******/
CREATE DATABASE [CORNIEL02]
USE [CORNIEL02]

CREATE TABLE [dbo].[CLIENTES](
	[ID] [varchar](10) NOT NULL,
	[NOMBRES] [varchar](30) NOT NULL,
	[APELLIDOS] [varchar](30) NOT NULL,
	[DIRECCION] [varchar](50) NULL,
	[TELEFONO] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURAS]    Script Date: 24/7/2018 4:34:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURAS](
	[NUMEROFACTURA] [int] NOT NULL,
	[ID] [varchar](10) NULL,
	[VALORFACTURA] [money] NULL,
	[FECHAFACTURA] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[NUMEROFACTURA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAGOS]    Script Date: 24/7/2018 4:34:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAGOS](
	[NUMERODEPAGO] [int] NOT NULL,
	[NUMEROFACTURA] [int] NULL,
	[VALORPAGO] [money] NULL,
	[FECHAPAGO] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[NUMERODEPAGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CLIENTES] ([ID], [NOMBRES], [APELLIDOS], [DIRECCION], [TELEFONO]) VALUES (N'01', N'CARLOS', N'MONTILLA', N'BUENOS AIRES, HERRERA', N'8097091078')
INSERT [dbo].[CLIENTES] ([ID], [NOMBRES], [APELLIDOS], [DIRECCION], [TELEFONO]) VALUES (N'02', N'JULIO', N'ABAD', N'LAS PALMAS, HERRERA', N'8097094878')
INSERT [dbo].[CLIENTES] ([ID], [NOMBRES], [APELLIDOS], [DIRECCION], [TELEFONO]) VALUES (N'03', N'CESAR', N'ABREU', N'PINTURA, HERRERA', N'8097088078')
INSERT [dbo].[CLIENTES] ([ID], [NOMBRES], [APELLIDOS], [DIRECCION], [TELEFONO]) VALUES (N'04', N'CARLA', N'ARIAS', N'EL CAFE, HERRERA', N'8097096078')
INSERT [dbo].[CLIENTES] ([ID], [NOMBRES], [APELLIDOS], [DIRECCION], [TELEFONO]) VALUES (N'05', N'PEDRO', N'HERRERA', N'EL BONITO, SAN ISIDRO', N'8097691078')
INSERT [dbo].[CLIENTES] ([ID], [NOMBRES], [APELLIDOS], [DIRECCION], [TELEFONO]) VALUES (N'06', N'JOSE', N'RODRIGUEZ', N'ARROYO HONDO, DISTRITO NACIONAL', N'8097961078')
INSERT [dbo].[CLIENTES] ([ID], [NOMBRES], [APELLIDOS], [DIRECCION], [TELEFONO]) VALUES (N'07', N'JUAN', N'VALDEZ', N'CALLE 16, GUALEY', N'8097098078')
INSERT [dbo].[CLIENTES] ([ID], [NOMBRES], [APELLIDOS], [DIRECCION], [TELEFONO]) VALUES (N'08', N'ANA', N'BRITO', N'CALLE 31, GUALEY', N'8097091258')
INSERT [dbo].[CLIENTES] ([ID], [NOMBRES], [APELLIDOS], [DIRECCION], [TELEFONO]) VALUES (N'09', N'MARIA', N'PEREZ', N'CALLE BARNEY MORGAN, ESPAILLAT', N'8097036078')
INSERT [dbo].[CLIENTES] ([ID], [NOMBRES], [APELLIDOS], [DIRECCION], [TELEFONO]) VALUES (N'10', N'JULIA', N'PE�A', N'CALLE FRANCISCO GARRIDO, VILLA TROPICALIA', N'8097781078')
INSERT [dbo].[FACTURAS] ([NUMEROFACTURA], [ID], [VALORFACTURA], [FECHAFACTURA]) VALUES (1, N'01', 20030.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[FACTURAS] ([NUMEROFACTURA], [ID], [VALORFACTURA], [FECHAFACTURA]) VALUES (2, N'02', 20500.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[FACTURAS] ([NUMEROFACTURA], [ID], [VALORFACTURA], [FECHAFACTURA]) VALUES (3, N'03', 20800.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[FACTURAS] ([NUMEROFACTURA], [ID], [VALORFACTURA], [FECHAFACTURA]) VALUES (4, N'04', 20020.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[FACTURAS] ([NUMEROFACTURA], [ID], [VALORFACTURA], [FECHAFACTURA]) VALUES (5, N'05', 20040.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[FACTURAS] ([NUMEROFACTURA], [ID], [VALORFACTURA], [FECHAFACTURA]) VALUES (6, N'06', 20030.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[FACTURAS] ([NUMEROFACTURA], [ID], [VALORFACTURA], [FECHAFACTURA]) VALUES (7, N'07', 20200.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[FACTURAS] ([NUMEROFACTURA], [ID], [VALORFACTURA], [FECHAFACTURA]) VALUES (8, N'08', 20060.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[FACTURAS] ([NUMEROFACTURA], [ID], [VALORFACTURA], [FECHAFACTURA]) VALUES (9, N'09', 20040.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[FACTURAS] ([NUMEROFACTURA], [ID], [VALORFACTURA], [FECHAFACTURA]) VALUES (10, N'10', 20700.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[PAGOS] ([NUMERODEPAGO], [NUMEROFACTURA], [VALORPAGO], [FECHAPAGO]) VALUES (1, 1, 2800.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[PAGOS] ([NUMERODEPAGO], [NUMEROFACTURA], [VALORPAGO], [FECHAPAGO]) VALUES (2, 2, 28900.0000, CAST(N'2015-10-04' AS Date))
INSERT [dbo].[PAGOS] ([NUMERODEPAGO], [NUMEROFACTURA], [VALORPAGO], [FECHAPAGO]) VALUES (3, 3, 2860.0000, CAST(N'2015-10-06' AS Date))
INSERT [dbo].[PAGOS] ([NUMERODEPAGO], [NUMEROFACTURA], [VALORPAGO], [FECHAPAGO]) VALUES (4, 4, 2820.0000, CAST(N'2015-10-05' AS Date))
INSERT [dbo].[PAGOS] ([NUMERODEPAGO], [NUMEROFACTURA], [VALORPAGO], [FECHAPAGO]) VALUES (5, 5, 28440.0000, CAST(N'2015-10-07' AS Date))
INSERT [dbo].[PAGOS] ([NUMERODEPAGO], [NUMEROFACTURA], [VALORPAGO], [FECHAPAGO]) VALUES (6, 6, 280980.0000, CAST(N'2015-10-13' AS Date))
INSERT [dbo].[PAGOS] ([NUMERODEPAGO], [NUMEROFACTURA], [VALORPAGO], [FECHAPAGO]) VALUES (7, 7, 28008.0000, CAST(N'2015-10-09' AS Date))
INSERT [dbo].[PAGOS] ([NUMERODEPAGO], [NUMEROFACTURA], [VALORPAGO], [FECHAPAGO]) VALUES (8, 8, 28700.0000, CAST(N'2015-10-08' AS Date))
INSERT [dbo].[PAGOS] ([NUMERODEPAGO], [NUMEROFACTURA], [VALORPAGO], [FECHAPAGO]) VALUES (9, 9, 283300.0000, CAST(N'2015-10-03' AS Date))
INSERT [dbo].[PAGOS] ([NUMERODEPAGO], [NUMEROFACTURA], [VALORPAGO], [FECHAPAGO]) VALUES (10, 10, 288400.0000, CAST(N'2015-10-03' AS Date))
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [FACT_CLI] FOREIGN KEY([ID])
REFERENCES [dbo].[CLIENTES] ([ID])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [FACT_CLI]
GO
ALTER TABLE [dbo].[PAGOS]  WITH CHECK ADD  CONSTRAINT [PAG_FACT] FOREIGN KEY([NUMEROFACTURA])
REFERENCES [dbo].[FACTURAS] ([NUMEROFACTURA])
GO
ALTER TABLE [dbo].[PAGOS] CHECK CONSTRAINT [PAG_FACT]
GO
USE [master]
GO
ALTER DATABASE [CORNIEL02] SET  READ_WRITE 
GO