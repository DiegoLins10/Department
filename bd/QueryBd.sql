USE MASTER
GO
DROP DATABASE [Departamento]
GO
CREATE DATABASE [Departamento]
GO
USE [Departamento]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 02/25/2018 20:31:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Departamento](
	[IdDepto] [int] IDENTITY(10,10) NOT NULL,
	[NomeDepto] [varchar](15) NOT NULL,
	[Gerente] [int] NOT NULL,
	[Divisao] [varchar](10) NOT NULL,
	[Local] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDepto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Departamento] ( [NomeDepto], [Gerente], [Divisao], [Local]) VALUES ( N'DIRETORIA', 1, N'SUDOESTE', N'SAO PAULO')
INSERT [dbo].[Departamento] ( [NomeDepto], [Gerente], [Divisao], [Local]) VALUES ( N'ESTOQUE', 101, N'SUDOESTE', N'CAMPINAS')
INSERT [dbo].[Departamento] ( [NomeDepto], [Gerente], [Divisao], [Local]) VALUES ( N'TI', 2, N'SUDOESTE', N'RIBEIRAO')
INSERT [dbo].[Departamento] ( [NomeDepto], [Gerente], [Divisao], [Local]) VALUES ( N'VENDAS', 102, N'SUDOESTE', N'JUNDIAI')
INSERT [dbo].[Departamento] ( [NomeDepto], [Gerente], [Divisao], [Local]) VALUES ( N'COMPRAS', 3, N'SUDOESTE', N'SAO PAULO')
INSERT [dbo].[Departamento] ( [NomeDepto], [Gerente], [Divisao], [Local]) VALUES ( N'RH', 103, N'SUDOESTE', N'COTIA')
/****** Object:  Table [dbo].[Empregado]    Script Date: 02/25/2018 20:31:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empregado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empregado](
	[IdEmpregado] [int] Identity(1,1) NOT NULL,
	[NomeEmpregado] [varchar](20) NOT NULL,
	[IdDepto] [int] NULL,
	[Cargo] [varchar](6) NOT NULL,
	[Tempo_Emp] [int] NULL,
	[Salario] [decimal](10, 2) NULL,
	[Comissao] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpregado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (N'Alice', 10, N'GER', 5, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (N'Sophia', 20, N'GER', 6, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (N'Helena', 30, N'GER', 6, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (N'Valentina', 40, N'GER', 9, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (N'Laura', 50, N'GER', 5, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (N'Isabella', 60, N'GER', 8, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (N'Manuela', 10, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (N'Júlia', 20, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (N'Heloísa', 30, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Luiza', 40, N'VEND', 5, CAST(3500.00 AS Decimal(10, 2)), CAST(1150.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Luiza', 50, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Lorena', 60, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Lívia', 10, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Giovanna', 20, N'ADM', 8, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Eduarda', 30, N'ADM', 13, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Beatriz', 40, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(1230.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Clara', 50, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Cecília', 60, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Eloá', 10, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Lara', 20, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Júlia', 30, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Isadora', 40, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(1290.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Mariana', 50, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Emanuelly', 60, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana Júlia', 10, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana Luiza', 20, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana Clara', 30, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Melissa', 40, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(1350.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Yasmin', 50, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Alice', 60, N'ATEND', 11, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Isabelly', 10, N'ATEND', 8, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Lavínia', 20, N'ATEND', 7, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Esther', 30, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Sarah', 40, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Elisa', 50, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Antonella', 60, N'ADM', 9, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Rafaela', 10, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Cecília', 20, N'AUX', 13, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Liz', 30, N'ADM', 3, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Marina', 40, N'VEND', 6, CAST(3500.00 AS Decimal(10, 2)), CAST(1460.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Nicole', 50, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maitê', 60, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Isis', 10, N'VEND', 4, CAST(3500.00 AS Decimal(10, 2)), CAST(1470.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Alícia', 20, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Luna', 30, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Rebeca', 40, N'VEND', 6, CAST(3500.00 AS Decimal(10, 2)), CAST(1520.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Agatha', 50, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Letícia', 60, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria-', 10, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Gabriela', 20, N'AUX', 8, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana Laura', 30, N'ADM', 9, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Catarina', 40, N'VEND', 8, CAST(3500.00 AS Decimal(10, 2)), CAST(1600.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Clara', 50, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana Beatriz', 60, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Vitória', 10, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Olívia', 20, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Fernanda', 30, N'AUX', 14, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Emilly', 40, N'VEND', 6, CAST(3500.00 AS Decimal(10, 2)), CAST(1640.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Valentina', 50, N'ADM', 15, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Milena', 60, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Helena', 10, N'ADM', 12, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Bianca', 20, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Larissa', 30, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Mirella', 40, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(1710.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Flor', 50, N'AUX', 10, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Allana', 60, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana Sophia', 10, N'ATEND', 10, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Clarice', 20, N'ATEND', 7, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Pietra', 30, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Vitória', 40, N'VEND', 13, CAST(3500.00 AS Decimal(10, 2)), CAST(1830.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maya', 50, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Laís', 60, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ayla', 10, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana Lívia', 20, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Eduarda', 30, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Mariah', 40, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Stella', 50, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana', 60, N'ATEND', 3, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Gabrielly', 10, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Sophie', 20, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Carolina', 30, N'AUX', 8, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Laura', 40, N'VEND', 11, CAST(3500.00 AS Decimal(10, 2)), CAST(1930.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Heloísa', 50, N'ATEND', 13, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Sophia', 60, N'ATEND', 12, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Fernanda', 10, N'ATEND', 8, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Malu', 20, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Analu', 30, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Amanda', 40, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Aurora', 50, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Maria Isis', 60, N'ATEND', 10, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Louise', 10, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Heloise', 20, N'ATEND', 7, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana Vitória', 30, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana Cecília', 40, N'AUX', 11, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ana Liz', 50, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Joana', 60, N'AUX', 5, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Luana', 10, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Antônia', 20, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Isabel', 30, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Bruna', 40, N'VEND', 5, CAST(3500.00 AS Decimal(10, 2)), CAST(2050.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Miguel', 50, N'GER', 6, CAST(15000.00 AS Decimal(10, 2)), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Arthur', 60, N'GER', 6, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Bernardo', 10, N'GER', 8, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Heitor', 20, N'GER', 6, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Davi', 30, N'GER', 4, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Lorenzo', 40, N'GER', 7, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Théo', 50, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Pedro', 60, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Gabriel', 10, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Enzo', 20, N'VEND', 4, CAST(3500.00 AS Decimal(10, 2)), CAST(2140.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Matheus', 30, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Lucas', 40, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Benjamin', 50, N'ADM', 8, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Nicolas', 60, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Guilherme', 10, N'ADM', 9, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Rafael', 20, N'VEND', 6, CAST(3500.00 AS Decimal(10, 2)), CAST(2220.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Joaquim', 30, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Samuel', 40, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Enzo Gabriel', 50, N'ADM', 12, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'João Miguel', 60, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Henrique', 10, N'ADM', 8, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Gustavo', 20, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(2290.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Murilo', 30, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Pedro Henrique', 40, N'AUX', 14, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Pietro', 50, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Lucca', 60, N'AUX', 5, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Felipe', 10, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'João Pedro', 20, N'VEND', 10, CAST(3500.00 AS Decimal(10, 2)), CAST(2380.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Isaac', 30, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Benício', 40, N'ATEND', 7, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Daniel', 50, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Anthony', 60, N'ATEND', 7, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Leonardo', 10, N'ATEND', 8, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Davi Lucca', 20, N'ATEND', 10, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Bryan', 30, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Eduardo', 40, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'João Lucas', 50, N'AUX', 10, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Victor', 60, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'João', 10, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Cauã', 20, N'VEND', 4, CAST(3500.00 AS Decimal(10, 2)), CAST(2440.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Antônio', 30, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Vicente', 40, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Caleb', 50, N'VEND', 5, CAST(3500.00 AS Decimal(10, 2)), CAST(2480.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Gael', 60, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Bento', 10, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Caio', 20, N'VEND', 4, CAST(3500.00 AS Decimal(10, 2)), CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Emanuel', 30, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Vinícius', 40, N'AUX', 8, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'João Guilherme', 50, N'AUX', 14, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Davi Lucas', 60, N'AUX', 10, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Noah', 10, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'João Gabriel', 20, N'VEND', 12, CAST(3500.00 AS Decimal(10, 2)), CAST(2640.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'João Victor', 30, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Luiz Miguel', 40, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Francisco', 50, N'ADM', 9, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Kaique', 60, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Otávio', 10, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Augusto', 20, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(2650.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Levi', 30, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Yuri', 40, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Enrico', 50, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Thiago', 60, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ian', 10, N'ADM', 3, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Victor Hugo', 20, N'VEND', 11, CAST(3500.00 AS Decimal(10, 2)), CAST(2750.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Thomas', 30, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Henry', 40, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Luiz Felipe', 50, N'ATEND', 11, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ryan', 60, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Arthur Miguel', 10, N'ATEND', 13, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Davi Luiz', 20, N'VEND', 9, CAST(3500.00 AS Decimal(10, 2)), CAST(2790.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Nathan', 30, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Pedro Lucas', 40, N'AUX', 11, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Davi Miguel', 50, N'AUX', 11, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Raul', 60, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Pedro Miguel', 10, N'AUX', 12, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Luiz Henrique', 20, N'AUX', 13, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Luan', 30, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Erick', 40, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Martin', 50, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Bruno', 60, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Rodrigo', 10, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Luiz Gustavo', 20, N'VEND', 12, CAST(3500.00 AS Decimal(10, 2)), CAST(2940.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Arthur Gabriel', 30, N'ATEND', 14, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Breno', 40, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Kauê', 50, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Enzo Miguel', 60, N'ATEND', 11, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Fernando', 10, N'ADM', 8, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Arthur Henrique', 20, N'AUX', 15, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Luiz Otávio', 30, N'ATEND', 11, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Carlos Eduardo', 40, N'ATEND', 14, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Tomás', 50, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Lucas Gabriel', 60, N'ATEND', 13, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'André', 10, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'José', 20, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Yago', 30, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Danilo', 40, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Anthony Gabriel', 50, N'ATEND', 15, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Ruan', 60, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Miguel Henrique', 10, N'ADM', 15, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ( [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES ( N'Oliver', 20, N'VEND', 6, CAST(3500.00 AS Decimal(10, 2)), CAST(3060.00 AS Decimal(10, 2)))
/****** Object:  ForeignKey [FK_Depto]    Script Date: 02/25/2018 20:31:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Depto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empregado]'))
ALTER TABLE [dbo].[Empregado]  WITH CHECK ADD  CONSTRAINT [FK_Depto] FOREIGN KEY([IdDepto])
REFERENCES [dbo].[Departamento] ([IdDepto])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Depto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empregado]'))
ALTER TABLE [dbo].[Empregado] CHECK CONSTRAINT [FK_Depto]
GO