/****** Object:  Table [dbo].[TabelAksesori]    Script Date: 07/11/2017 17.50.41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelAksesori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KodeAksesori] [varchar](5) NOT NULL,
	[KodeMobil] [varchar](12) NOT NULL,
	[Deskripsi] [varchar](30) NOT NULL,
	[Harga] [money] NOT NULL,
	[Stok] [int] NOT NULL,
	[IsActivated] [bit] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created] [datetime] NULL,
	[Modified_By] [varchar](50) NULL,
	[Modified] [datetime] NULL,
 CONSTRAINT [PK_TabelAksesori] PRIMARY KEY CLUSTERED 
(
	[KodeAksesori] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelBiayaServis]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelBiayaServis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataBiayaId] [int] NOT NULL,
	[KodeJasa] [varchar](5) NOT NULL,
	[Harga] [money] NOT NULL,
	[Jumlah] [decimal](18, 3) NOT NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_TabelBiayaServis] PRIMARY KEY CLUSTERED 
(
	[DataBiayaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelDataBiayaServis]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelDataBiayaServis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Referensi] [varchar](15) NOT NULL,
	[KodeMobil] [varchar](12) NOT NULL,
	[MontirId] [varchar](5) NOT NULL,
	[PelangganId] [varchar](10) NOT NULL,
	[TanggalServis] [datetime] NOT NULL,
 CONSTRAINT [PK_TabelDataBiayaServis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelDataPenjualanBarang]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelDataPenjualanBarang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Referensi] [varchar](15) NOT NULL,
	[MontirId] [varchar](5) NOT NULL,
	[PelangganId] [varchar](10) NOT NULL,
	[TanggalPenjualan] [datetime] NOT NULL,
 CONSTRAINT [PK_TabelDataPenjualanBarang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelGajiMontir]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelGajiMontir](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MontirId] [varchar](5) NOT NULL,
	[GajiPeriodId] [int] NOT NULL,
	[KodeInsentifServis] [varchar](5) NOT NULL,
	[KodeInsentifBarang] [varchar](5) NOT NULL,
	[GajiTetap] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[Absen] [int] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created] [datetime] NULL,
	[Modified_by] [varchar](50) NULL,
	[Modified] [datetime] NULL,
 CONSTRAINT [PK_TabelGajiMontir] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelInsentifBarang]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelInsentifBarang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KodeInsentifBarang] [varchar](5) NOT NULL,
	[GajiPeriodId] [int] NOT NULL,
	[KodeOnderdil] [varchar](5) NULL,
	[KodeAksesori] [varchar](5) NULL,
	[Insentif] [money] NOT NULL,
 CONSTRAINT [PK_TabelInsentifBarang] PRIMARY KEY CLUSTERED 
(
	[KodeInsentifBarang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelInsentifServis]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelInsentifServis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KodeInsentifServis] [varchar](5) NOT NULL,
	[PeriodeGajiId] [int] NOT NULL,
	[KodeMobil] [varchar](12) NOT NULL,
	[KodeJasa] [varchar](12) NOT NULL,
	[Insentif] [money] NOT NULL,
 CONSTRAINT [PK_TabelInsentifServis] PRIMARY KEY CLUSTERED 
(
	[KodeInsentifServis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelJasa]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelJasa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KodeJasa] [varchar](5) NOT NULL,
	[Deskripsi] [varchar](30) NOT NULL,
	[HargaJasa] [money] NOT NULL,
	[IsActivated] [bit] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created] [datetime] NULL,
	[Modified_By] [varchar](50) NULL,
	[Modified] [datetime] NULL,
 CONSTRAINT [PK_TabelJasa] PRIMARY KEY CLUSTERED 
(
	[KodeJasa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelMobil]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelMobil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KodeMobil] [varchar](12) NOT NULL,
	[JenisMobil] [varchar](15) NOT NULL,
	[MerekMobil] [varchar](20) NOT NULL,
	[NamaMobil] [varchar](30) NOT NULL,
	[TahunMobil] [int] NOT NULL,
	[IsActivated] [bit] NOT NULL,
	[Created_By] [varchar](30) NULL,
	[Created] [datetime] NULL,
	[Modified_By] [varchar](30) NULL,
	[Modified] [datetime] NULL,
 CONSTRAINT [PK_TabelMobil] PRIMARY KEY CLUSTERED 
(
	[KodeMobil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelMontir]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelMontir](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NamaMontir] [varchar](30) NOT NULL,
	[MontirId] [varchar](5) NOT NULL,
	[TglGabung] [datetime] NOT NULL,
	[TglKeluar] [datetime] NULL,
	[Alamat] [varchar](50) NOT NULL,
	[Absen] [int] NULL,
	[IsActived] [bit] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created] [datetime] NULL,
	[Modified_By] [varchar](50) NULL,
	[Modified] [datetime] NULL,
 CONSTRAINT [PK_TabelMontir] PRIMARY KEY CLUSTERED 
(
	[MontirId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelOnderdil]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelOnderdil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KodeOnderdil] [varchar](5) NOT NULL,
	[KodeMobil] [varchar](12) NOT NULL,
	[Deskripsi] [varchar](30) NOT NULL,
	[Harga] [money] NOT NULL,
	[Stok] [int] NOT NULL,
	[IsActivated] [bit] NOT NULL,
	[Created_by] [varchar](50) NULL,
	[Created] [datetime] NULL,
	[Modified_By] [varchar](50) NULL,
	[Modified] [datetime] NULL,
 CONSTRAINT [PK_TabelOnderdil_1] PRIMARY KEY CLUSTERED 
(
	[KodeOnderdil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelPelanggan]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelPelanggan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nama] [varchar](30) NOT NULL,
	[PelangganId] [varchar](10) NOT NULL,
	[KodeMobil] [varchar](12) NOT NULL,
	[NomorPolisi] [varchar](12) NOT NULL,
	[Alamat] [varchar](50) NOT NULL,
	[IsActivated] [bit] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created] [datetime] NULL,
	[Modified_By] [varchar](50) NULL,
	[Modified] [datetime] NULL,
 CONSTRAINT [PK_TabelPelanggan] PRIMARY KEY CLUSTERED 
(
	[PelangganId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelPenjualanBarang]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelPenjualanBarang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataPenjualanId] [int] NOT NULL,
	[KodeOnderdil] [varchar](5) NULL,
	[KodeAksesori] [varchar](5) NULL,
	[Harga] [money] NOT NULL,
	[Jumlah] [decimal](18, 3) NOT NULL,
	[Total] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelPeriodeGaji]    Script Date: 07/11/2017 17.50.42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelPeriodeGaji](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tahun] [int] NOT NULL,
	[Bulan] [int] NOT NULL,
	[TanggalMulai] [datetime] NOT NULL,
	[TanggalAkhir] [datetime] NOT NULL,
	[PeriodeBerjalan] [bit] NOT NULL,
 CONSTRAINT [PK_TabelPeriodeGaji] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TabelAksesori] ON 

INSERT [dbo].[TabelAksesori] ([Id], [KodeAksesori], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (8, N'AHB01', N'HB001', N'Stripping', 350000.0000, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelAksesori] ([Id], [KodeAksesori], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (9, N'AHB02', N'HB004', N'Stripping', 390000.0000, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelAksesori] ([Id], [KodeAksesori], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (6, N'AHC01', N'HC002', N'Lampu Belakang FullSet', 2000000.0000, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelAksesori] ([Id], [KodeAksesori], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (7, N'AHC02', N'HC002', N'Spoiler', 1000000.0000, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelAksesori] ([Id], [KodeAksesori], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (3, N'AHJ01', N'HJ001', N'Spoiler', 750000.0000, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelAksesori] ([Id], [KodeAksesori], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (4, N'AHJ02', N'HJ004', N'Kaca Pelindung Panas', 350000.0000, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelAksesori] ([Id], [KodeAksesori], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (5, N'AHJ03', N'HJ005', N'Velg Racing', 5000000.0000, 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelAksesori] ([Id], [KodeAksesori], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (1, N'ATF01', N'TF001', N'Bumper Depan', 550000.0000, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelAksesori] ([Id], [KodeAksesori], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (2, N'ATF02', N'TF001', N'Stripping', 400000.0000, 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelAksesori] ([Id], [KodeAksesori], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (10, N'ATK01', N'TK005', N'Suspensi', 6000000.0000, 4, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TabelAksesori] OFF
SET IDENTITY_INSERT [dbo].[TabelJasa] ON 

INSERT [dbo].[TabelJasa] ([Id], [KodeJasa], [Deskripsi], [HargaJasa], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (1, N'J0001', N'Servis Mesin', 200000.0000, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelJasa] ([Id], [KodeJasa], [Deskripsi], [HargaJasa], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (2, N'M0001', N'Modifikasi', 50000.0000, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TabelJasa] OFF
SET IDENTITY_INSERT [dbo].[TabelMobil] ON 

INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (12, N'HB001', N'Hatchback', N'Honda', N'Brio M/T', 2015, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (13, N'HB002', N'Hatchback', N'Honda', N'Brio A/T', 2015, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (14, N'HB003', N'Hatchback', N'Honda', N'Brio Satya M/T', 2016, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (15, N'HB004', N'Hatchback', N'Honda', N'Brio Satya A/T', 2016, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (16, N'HC001', N'Sedan', N'Honda', N'Civic', 2006, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (17, N'HC002', N'Sedan', N'Honda', N'Civic', 2011, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (18, N'HJ001', N'Hatchback', N'Honda', N'Jazz M/T', 2004, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (19, N'HJ002', N'Hatchback', N'Honda', N'Jazz A/T', 2004, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (20, N'HJ003', N'Hatchback', N'Honda', N'Jazz A/T', 2009, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (21, N'HJ004', N'Hatchback', N'Honda', N'Jazz M/T', 2009, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (22, N'HJ005', N'Hatchback', N'Honda', N'Jazz A/T', 2014, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (23, N'HJ006', N'Hatchback', N'Honda', N'Jazz M/T', 2014, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (1, N'TF001', N'SUV', N'Toyota', N'Fortuner A/T', 2005, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (2, N'TF002', N'SUV', N'Toyota', N'Fortuner M/T', 2005, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (3, N'TF003', N'SUV', N'Toyota', N'Fortuner A/T', 2015, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (4, N'TF004', N'SUV', N'Toyota', N'Fortuner M/T', 2015, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (5, N'TK001', N'MPV', N'Toyota', N'Kijang Innova G A/T', 2004, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (6, N'TK002', N'MPV', N'Toyota', N'Kijang Innova G M/T', 2004, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (7, N'TK003', N'MPV', N'Toyota', N'Kijang Innova D M/T', 2004, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (8, N'TK004', N'MPV', N'Toyota', N'Kijang Innova G M/T', 2015, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (9, N'TK005', N'MPV', N'Toyota', N'Kijang Innova D M/T', 2015, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (10, N'TK006', N'MPV', N'Toyota', N'Kijang Innova G A/T', 2015, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMobil] ([id], [KodeMobil], [JenisMobil], [MerekMobil], [NamaMobil], [TahunMobil], [IsActivated], [Created_By], [Created], [Modified_By], [Modified]) VALUES (11, N'TK007', N'MPV', N'Toyota', N'Kijang Innova D A/T', 2015, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TabelMobil] OFF
SET IDENTITY_INSERT [dbo].[TabelMontir] ON 

INSERT [dbo].[TabelMontir] ([id], [NamaMontir], [MontirId], [TglGabung], [TglKeluar], [Alamat], [Absen], [IsActived], [Created_By], [Created], [Modified_By], [Modified]) VALUES (1, N'Abdul Karem', N'M0001', CAST(N'1905-06-12T00:00:00.000' AS DateTime), NULL, N'jl.kangguru no.9, jakarta', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelMontir] ([id], [NamaMontir], [MontirId], [TglGabung], [TglKeluar], [Alamat], [Absen], [IsActived], [Created_By], [Created], [Modified_By], [Modified]) VALUES (2, N'Abdul Karem', N'M0002', CAST(N'1905-06-04T00:00:00.000' AS DateTime), NULL, N'jl.kijang no.112, jakarta', NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TabelMontir] OFF
SET IDENTITY_INSERT [dbo].[TabelOnderdil] ON 

INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (22, N'OHB01', N'HB001', N'Kampas Rem', 150000.0000, 11, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (23, N'OHB02', N'HB004', N'Aki', 800000.0000, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (20, N'OHC01', N'HC002', N'Bohlam Lampu', 5000.0000, 30, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (21, N'OHC02', N'HC002', N'Lampu Utama FullSet', 250000.0000, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (16, N'OHJ01', N'HJ001', N'Busi', 20000.0000, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (17, N'OHJ02', N'HJ002', N'Busi', 20000.0000, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (18, N'OHJ03', N'HJ003', N'Seal Mesin', 40000.0000, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (19, N'OHJ04', N'HJ005', N'Filter Udara', 100000.0000, 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (14, N'OTF01', N'TF001', N'Bohlam Lampu', 5000.0000, 40, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (15, N'OTF02', N'TF001', N'Busi', 20000.0000, 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (24, N'OTK01', N'TK004', N'Kabel Koil', 25000.0000, 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TabelOnderdil] ([Id], [KodeOnderdil], [KodeMobil], [Deskripsi], [Harga], [Stok], [IsActivated], [Created_by], [Created], [Modified_By], [Modified]) VALUES (13, N'OTK02', N'TK005', N'CDI', 2000000.0000, 2, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TabelOnderdil] OFF
ALTER TABLE [dbo].[TabelAksesori]  WITH CHECK ADD  CONSTRAINT [FK_TabelAksesori_TabelMobil] FOREIGN KEY([KodeMobil])
REFERENCES [dbo].[TabelMobil] ([KodeMobil])
GO
ALTER TABLE [dbo].[TabelAksesori] CHECK CONSTRAINT [FK_TabelAksesori_TabelMobil]
GO
ALTER TABLE [dbo].[TabelBiayaServis]  WITH CHECK ADD  CONSTRAINT [FK_TabelBiayaServis_TabelDataBiayaServis] FOREIGN KEY([DataBiayaId])
REFERENCES [dbo].[TabelDataBiayaServis] ([Id])
GO
ALTER TABLE [dbo].[TabelBiayaServis] CHECK CONSTRAINT [FK_TabelBiayaServis_TabelDataBiayaServis]
GO
ALTER TABLE [dbo].[TabelDataBiayaServis]  WITH CHECK ADD  CONSTRAINT [FK_TabelDataBiayaServis_TabelMobil] FOREIGN KEY([KodeMobil])
REFERENCES [dbo].[TabelMobil] ([KodeMobil])
GO
ALTER TABLE [dbo].[TabelDataBiayaServis] CHECK CONSTRAINT [FK_TabelDataBiayaServis_TabelMobil]
GO
ALTER TABLE [dbo].[TabelDataBiayaServis]  WITH CHECK ADD  CONSTRAINT [FK_TabelDataBiayaServis_TabelMontir] FOREIGN KEY([MontirId])
REFERENCES [dbo].[TabelMontir] ([MontirId])
GO
ALTER TABLE [dbo].[TabelDataBiayaServis] CHECK CONSTRAINT [FK_TabelDataBiayaServis_TabelMontir]
GO
ALTER TABLE [dbo].[TabelDataBiayaServis]  WITH CHECK ADD  CONSTRAINT [FK_TabelDataBiayaServis_TabelPelanggan] FOREIGN KEY([PelangganId])
REFERENCES [dbo].[TabelPelanggan] ([PelangganId])
GO
ALTER TABLE [dbo].[TabelDataBiayaServis] CHECK CONSTRAINT [FK_TabelDataBiayaServis_TabelPelanggan]
GO
ALTER TABLE [dbo].[TabelDataPenjualanBarang]  WITH CHECK ADD  CONSTRAINT [FK_TabelDataPenjualanBarang_TabelMontir] FOREIGN KEY([MontirId])
REFERENCES [dbo].[TabelMontir] ([MontirId])
GO
ALTER TABLE [dbo].[TabelDataPenjualanBarang] CHECK CONSTRAINT [FK_TabelDataPenjualanBarang_TabelMontir]
GO
ALTER TABLE [dbo].[TabelDataPenjualanBarang]  WITH CHECK ADD  CONSTRAINT [FK_TabelDataPenjualanBarang_TabelPelanggan] FOREIGN KEY([PelangganId])
REFERENCES [dbo].[TabelPelanggan] ([PelangganId])
GO
ALTER TABLE [dbo].[TabelDataPenjualanBarang] CHECK CONSTRAINT [FK_TabelDataPenjualanBarang_TabelPelanggan]
GO
ALTER TABLE [dbo].[TabelGajiMontir]  WITH CHECK ADD  CONSTRAINT [FK_TabelGajiMontir_TabelInsentifServis] FOREIGN KEY([KodeInsentifServis])
REFERENCES [dbo].[TabelInsentifServis] ([KodeInsentifServis])
GO
ALTER TABLE [dbo].[TabelGajiMontir] CHECK CONSTRAINT [FK_TabelGajiMontir_TabelInsentifServis]
GO
ALTER TABLE [dbo].[TabelGajiMontir]  WITH CHECK ADD  CONSTRAINT [FK_TabelGajiMontir_TabelMontir] FOREIGN KEY([MontirId])
REFERENCES [dbo].[TabelMontir] ([MontirId])
GO
ALTER TABLE [dbo].[TabelGajiMontir] CHECK CONSTRAINT [FK_TabelGajiMontir_TabelMontir]
GO
ALTER TABLE [dbo].[TabelGajiMontir]  WITH CHECK ADD  CONSTRAINT [FK_TabelGajiMontir_TabelPeriodeGaji] FOREIGN KEY([GajiPeriodId])
REFERENCES [dbo].[TabelPeriodeGaji] ([Id])
GO
ALTER TABLE [dbo].[TabelGajiMontir] CHECK CONSTRAINT [FK_TabelGajiMontir_TabelPeriodeGaji]
GO
ALTER TABLE [dbo].[TabelInsentifBarang]  WITH CHECK ADD  CONSTRAINT [FK_TabelInsentifBarang_TabelAksesori] FOREIGN KEY([KodeAksesori])
REFERENCES [dbo].[TabelAksesori] ([KodeAksesori])
GO
ALTER TABLE [dbo].[TabelInsentifBarang] CHECK CONSTRAINT [FK_TabelInsentifBarang_TabelAksesori]
GO
ALTER TABLE [dbo].[TabelInsentifBarang]  WITH CHECK ADD  CONSTRAINT [FK_TabelInsentifBarang_TabelOnderdil] FOREIGN KEY([KodeOnderdil])
REFERENCES [dbo].[TabelOnderdil] ([KodeOnderdil])
GO
ALTER TABLE [dbo].[TabelInsentifBarang] CHECK CONSTRAINT [FK_TabelInsentifBarang_TabelOnderdil]
GO
ALTER TABLE [dbo].[TabelInsentifBarang]  WITH CHECK ADD  CONSTRAINT [FK_TabelInsentifBarang_TabelPeriodeGaji] FOREIGN KEY([GajiPeriodId])
REFERENCES [dbo].[TabelPeriodeGaji] ([Id])
GO
ALTER TABLE [dbo].[TabelInsentifBarang] CHECK CONSTRAINT [FK_TabelInsentifBarang_TabelPeriodeGaji]
GO
ALTER TABLE [dbo].[TabelInsentifServis]  WITH CHECK ADD  CONSTRAINT [FK_TabelInsentifServis_TabelPeriodeGaji] FOREIGN KEY([PeriodeGajiId])
REFERENCES [dbo].[TabelPeriodeGaji] ([Id])
GO
ALTER TABLE [dbo].[TabelInsentifServis] CHECK CONSTRAINT [FK_TabelInsentifServis_TabelPeriodeGaji]
GO
ALTER TABLE [dbo].[TabelOnderdil]  WITH CHECK ADD  CONSTRAINT [FK_TabelOnderdil_TabelMobil] FOREIGN KEY([KodeMobil])
REFERENCES [dbo].[TabelMobil] ([KodeMobil])
GO
ALTER TABLE [dbo].[TabelOnderdil] CHECK CONSTRAINT [FK_TabelOnderdil_TabelMobil]
GO
ALTER TABLE [dbo].[TabelPelanggan]  WITH CHECK ADD  CONSTRAINT [FK_TabelPelanggan_TabelMobil] FOREIGN KEY([KodeMobil])
REFERENCES [dbo].[TabelMobil] ([KodeMobil])
GO
ALTER TABLE [dbo].[TabelPelanggan] CHECK CONSTRAINT [FK_TabelPelanggan_TabelMobil]
GO
ALTER TABLE [dbo].[TabelPenjualanBarang]  WITH CHECK ADD  CONSTRAINT [FK_TabelPenjualanBarang_TabelAksesori] FOREIGN KEY([KodeAksesori])
REFERENCES [dbo].[TabelAksesori] ([KodeAksesori])
GO
ALTER TABLE [dbo].[TabelPenjualanBarang] CHECK CONSTRAINT [FK_TabelPenjualanBarang_TabelAksesori]
GO
ALTER TABLE [dbo].[TabelPenjualanBarang]  WITH CHECK ADD  CONSTRAINT [FK_TabelPenjualanBarang_TabelDataPenjualanBarang] FOREIGN KEY([DataPenjualanId])
REFERENCES [dbo].[TabelDataPenjualanBarang] ([Id])
GO
ALTER TABLE [dbo].[TabelPenjualanBarang] CHECK CONSTRAINT [FK_TabelPenjualanBarang_TabelDataPenjualanBarang]
GO
ALTER TABLE [dbo].[TabelPenjualanBarang]  WITH CHECK ADD  CONSTRAINT [FK_TabelPenjualanBarang_TabelOnderdil] FOREIGN KEY([KodeOnderdil])
REFERENCES [dbo].[TabelOnderdil] ([KodeOnderdil])
GO
ALTER TABLE [dbo].[TabelPenjualanBarang] CHECK CONSTRAINT [FK_TabelPenjualanBarang_TabelOnderdil]
GO
