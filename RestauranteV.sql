USE [master]
GO
/****** Object:  Database [Restaurante]    Script Date: 20/5/2022 17:06:43 ******/
CREATE DATABASE [Restaurante]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Restaurante', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Restaurante.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Restaurante_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Restaurante_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Restaurante] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Restaurante].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Restaurante] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Restaurante] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Restaurante] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Restaurante] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Restaurante] SET ARITHABORT OFF 
GO
ALTER DATABASE [Restaurante] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Restaurante] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Restaurante] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Restaurante] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Restaurante] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Restaurante] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Restaurante] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Restaurante] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Restaurante] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Restaurante] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Restaurante] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Restaurante] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Restaurante] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Restaurante] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Restaurante] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Restaurante] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Restaurante] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Restaurante] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Restaurante] SET  MULTI_USER 
GO
ALTER DATABASE [Restaurante] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Restaurante] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Restaurante] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Restaurante] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Restaurante] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Restaurante', N'ON'
GO
ALTER DATABASE [Restaurante] SET QUERY_STORE = OFF
GO
USE [Restaurante]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Restaurante]
GO
/****** Object:  Table [dbo].[DBS]    Script Date: 20/5/2022 17:06:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdPedido] [int] NULL,
	[MontoTotal] [decimal](18, 0) NULL,
	[IdModoDePago] [int] NULL,
 CONSTRAINT [PK_DBS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleBoleta]    Script Date: 20/5/2022 17:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleBoleta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdPedido] [int] NOT NULL,
	[MontoTotal] [decimal](18, 2) NOT NULL,
	[IdModoDePago] [int] NOT NULL,
 CONSTRAINT [PK_DetalleBoleta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 20/5/2022 17:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioEmp] [nvarchar](50) NOT NULL,
	[Contraseña] [nvarchar](50) NOT NULL,
	[IdTipoEmpleado] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Celular] [nvarchar](50) NOT NULL,
	[Correo] [nvarchar](100) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[Sueldo] [money] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModoDePago]    Script Date: 20/5/2022 17:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModoDePago](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ModoDePago] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 20/5/2022 17:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Atendido] [bit] NOT NULL,
	[Detalle] [nvarchar](50) NOT NULL,
	[ID_Usuario] [int] NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PPS]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PPS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[IdPedido] [int] NULL,
	[Observacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_PPS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[IdTipoProducto] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
	[imagen] [nvarchar](50) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos_Pedidos]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos_Pedidos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdPedido] [int] NOT NULL,
	[Observacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Productos_Pedidos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Atendido] [bit] NULL,
	[Detalle] [nvarchar](50) NULL,
 CONSTRAINT [PK_PS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoEmpleado]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEmpleado](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Sueldo] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TipoEmpleado] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoProducto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DetalleBoleta] ON 

INSERT [dbo].[DetalleBoleta] ([ID], [IdPedido], [MontoTotal], [IdModoDePago]) VALUES (12, 1, CAST(32.50 AS Decimal(18, 2)), 2)
INSERT [dbo].[DetalleBoleta] ([ID], [IdPedido], [MontoTotal], [IdModoDePago]) VALUES (14, 2, CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [dbo].[DetalleBoleta] ([ID], [IdPedido], [MontoTotal], [IdModoDePago]) VALUES (15, 3, CAST(45.85 AS Decimal(18, 2)), 3)
INSERT [dbo].[DetalleBoleta] ([ID], [IdPedido], [MontoTotal], [IdModoDePago]) VALUES (16, 4, CAST(15.20 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[DetalleBoleta] OFF
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([ID], [UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (1, N'Manuela234', N'201645', 2, N' Manuela Rosa Chavez', N'78963254', N'manuela@gmail.com', N'Colonia Escalon, calle Mirador', 360.7500)
INSERT [dbo].[Empleado] ([ID], [UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (2, N'Maria235', N'201646', 2, N'Maria Juana Marieta', N'79568422', N'Maria4587@gmail.com', N'Santa Tecla, #57', 360.7500)
INSERT [dbo].[Empleado] ([ID], [UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (4, N'Mirna', N'201647', 2, N'Mirna Lazo', N'74569812', N'Mirna78@gmail.com', N'Santa Elena, El desvío', 360.7500)
INSERT [dbo].[Empleado] ([ID], [UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (5, N'Michael01', N'108975', 1, N'Michael Eleazar Orellana', N'78964852', N'Michael01@gmail.com', N'Santa Tecla, #45', 1200.0000)
INSERT [dbo].[Empleado] ([ID], [UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (7, N'David01', N'108976', 1, N'David Ernesto Vásquez', N'74123698', N'David01@gmail.com', N'Santa Rosa De Lima', 1200.0000)
INSERT [dbo].[Empleado] ([ID], [UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (9, N'Alfredo334', N'33891', 3, N'Alfredo Orlando Juanez', N'78963528', N'Alfredo@gmail.com', N'--', 390.7000)
INSERT [dbo].[Empleado] ([ID], [UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (10, N'Miguel', N'44891', 4, N'Miguel Alberto', N'73682954', N'Miguel@gmail.com', N'--', 500.5000)
INSERT [dbo].[Empleado] ([ID], [UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (11, N'Jose', N'55871', 5, N'Jose Eduardo Creapin', N'73335855', N'jose@gmail.com', N'San Miguel, calle 344', 310.0000)
INSERT [dbo].[Empleado] ([ID], [UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (12, N'Sergio', N'66891', 6, N'Sergui Ordoñez', N'78965485', N'sergio@gmail.com', N'--', 250.9000)
INSERT [dbo].[Empleado] ([ID], [UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (13, N'Margarita', N'012365', 7, N'Margarita de Velasquez', N'77889965', N'Margarita@gmail.com', N'San Jacinto, Las flores #300', 400.1500)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
SET IDENTITY_INSERT [dbo].[ModoDePago] ON 

INSERT [dbo].[ModoDePago] ([ID], [Descripcion]) VALUES (1, N'EFECTIVO')
INSERT [dbo].[ModoDePago] ([ID], [Descripcion]) VALUES (2, N'TARJETA CREDITO')
INSERT [dbo].[ModoDePago] ([ID], [Descripcion]) VALUES (3, N'TARJETA DEBITO')
INSERT [dbo].[ModoDePago] ([ID], [Descripcion]) VALUES (4, N'BITCOIN')
INSERT [dbo].[ModoDePago] ([ID], [Descripcion]) VALUES (5, N'BILLETE +50')
INSERT [dbo].[ModoDePago] ([ID], [Descripcion]) VALUES (6, N'CHEQUE')
SET IDENTITY_INSERT [dbo].[ModoDePago] OFF
SET IDENTITY_INSERT [dbo].[Pedido] ON 

INSERT [dbo].[Pedido] ([ID], [Atendido], [Detalle], [ID_Usuario]) VALUES (3, 1, N'Combo Hamburguesas', 1)
INSERT [dbo].[Pedido] ([ID], [Atendido], [Detalle], [ID_Usuario]) VALUES (4, 1, N'3 Combos Hamburguesa', 2)
INSERT [dbo].[Pedido] ([ID], [Atendido], [Detalle], [ID_Usuario]) VALUES (5, 1, N'Bebida Fría', 2)
INSERT [dbo].[Pedido] ([ID], [Atendido], [Detalle], [ID_Usuario]) VALUES (6, 1, N'Hamburguesa Normal', 2)
SET IDENTITY_INSERT [dbo].[Pedido] OFF
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (1, N'Hamburguesa Vegetariana Comun', 1, CAST(4.00 AS Decimal(18, 2)), N'Hamburguesa Libre de carne animal, con toppin de vegetales', N'HamburguesaVeggie.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (2, N'Hamburguesa Carne y Queso', 1, CAST(4.99 AS Decimal(18, 2)), N'Hamburguesa con Carne y queso más toppin de vegetales', N'HamburguesaCarne.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (3, N'Hamburguesa Cheese Economica', 1, CAST(2.99 AS Decimal(18, 2)), N'Hamburguesa de queso doble con aderesos incluidos', N'HamburguesaCheese.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (4, N'Hamburguesa doble queso y carne', 2, CAST(5.99 AS Decimal(18, 2)), N'Hamburguesa con doble queso y carne, con aderesos incluidos', N'Ham2queso.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (5, N'Hamburguesa doble queso y champiñones', 2, CAST(4.99 AS Decimal(18, 2)), N'Hamburguesa con champiñones bañados en 2 capas de queso derretido', N'Ham2queso1.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (6, N'Hamburguesa doble carne y vegetales', 3, CAST(5.75 AS Decimal(18, 2)), N'Hamburguesa doble crane con vegetales y aderesos', N'Ham3Carne.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (8, N'3 Hamburguesas de queso doble con champiñones', 4, CAST(10.99 AS Decimal(18, 2)), N'3 hamburguesas con queso y aderesos incluido', N'combo1.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (9, N'5 hamburguesas veggie ', 4, CAST(15.00 AS Decimal(18, 2)), N'hamburguesas veggie con toppin de vegetales ', N'combo2.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (10, N'papa pequeña', 5, CAST(0.99 AS Decimal(18, 2)), N'papa salada pequeña', N'papa.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (11, N'papa mediana', 5, CAST(1.25 AS Decimal(18, 2)), N'papa mediana salada', N'papa2.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (13, N'papa grande', 5, CAST(2.15 AS Decimal(18, 2)), N'papa grande salada', N'papa3.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (14, N'papa con tocino y queso', 5, CAST(3.99 AS Decimal(18, 2)), N'papas acompañadas de queso y tocino', N'papa4.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (15, N'combo nuggets', 6, CAST(3.25 AS Decimal(18, 2)), N'nuggets de pollo fritas', N'nugget.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (16, N'Ensalada Veggie', 7, CAST(5.00 AS Decimal(18, 2)), N'ensalada de vegetales frescos y aderesos', N'veggie.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (17, N'Nachos con chili', 8, CAST(4.00 AS Decimal(18, 2)), N'Nachos acompañados de queso y chili', N'nachos.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (18, N'Soda Mediana', 9, CAST(1.50 AS Decimal(18, 2)), N'Soda sabor existentes', N'soda.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (19, N'Soda Grande', 9, CAST(2.00 AS Decimal(18, 2)), N'Soda grande sabores existentes', N'soda1.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (20, N'Cafe', 10, CAST(1.75 AS Decimal(18, 2)), N'cafe mediano, grande', N'cafe.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (21, N'Chocolate', 10, CAST(1.25 AS Decimal(18, 2)), N'chocolate mediano', N'chocolate.jpg')
INSERT [dbo].[Producto] ([ID], [Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (22, N'Cono Helado', 11, CAST(2.00 AS Decimal(18, 2)), N'Cono sabores existentes', N'cono.jpg')
SET IDENTITY_INSERT [dbo].[Producto] OFF
SET IDENTITY_INSERT [dbo].[Productos_Pedidos] ON 

INSERT [dbo].[Productos_Pedidos] ([ID], [IdProducto], [IdPedido], [Observacion]) VALUES (4, 8, 1, N'descuento por mejor cliente')
INSERT [dbo].[Productos_Pedidos] ([ID], [IdProducto], [IdPedido], [Observacion]) VALUES (5, 4, 2, N'descuento de cupon')
INSERT [dbo].[Productos_Pedidos] ([ID], [IdProducto], [IdPedido], [Observacion]) VALUES (6, 9, 3, N'descuento empleado')
INSERT [dbo].[Productos_Pedidos] ([ID], [IdProducto], [IdPedido], [Observacion]) VALUES (7, 17, 4, N'No descuento')
INSERT [dbo].[Productos_Pedidos] ([ID], [IdProducto], [IdPedido], [Observacion]) VALUES (9, 20, 5, N'No descuento')
SET IDENTITY_INSERT [dbo].[Productos_Pedidos] OFF
SET IDENTITY_INSERT [dbo].[TipoEmpleado] ON 

INSERT [dbo].[TipoEmpleado] ([ID], [Descripcion], [Sueldo]) VALUES (1, N'Administrador', CAST(1200.00 AS Decimal(18, 2)))
INSERT [dbo].[TipoEmpleado] ([ID], [Descripcion], [Sueldo]) VALUES (2, N'Mesero', CAST(360.75 AS Decimal(18, 2)))
INSERT [dbo].[TipoEmpleado] ([ID], [Descripcion], [Sueldo]) VALUES (3, N'Cajero', CAST(390.70 AS Decimal(18, 2)))
INSERT [dbo].[TipoEmpleado] ([ID], [Descripcion], [Sueldo]) VALUES (4, N'Cocinero', CAST(500.50 AS Decimal(18, 2)))
INSERT [dbo].[TipoEmpleado] ([ID], [Descripcion], [Sueldo]) VALUES (5, N'Mantenimiento', CAST(310.00 AS Decimal(18, 2)))
INSERT [dbo].[TipoEmpleado] ([ID], [Descripcion], [Sueldo]) VALUES (6, N'Seguridad', CAST(250.90 AS Decimal(18, 2)))
INSERT [dbo].[TipoEmpleado] ([ID], [Descripcion], [Sueldo]) VALUES (7, N'Ayudante Cocina', CAST(400.15 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[TipoEmpleado] OFF
SET IDENTITY_INSERT [dbo].[TipoProducto] ON 

INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (1, N'Hamburguesas Comunes')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (2, N'Hamburguesas Doble Queso')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (3, N'Hamburguesas Doble Carne')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (4, N'Combos de Hamburguesas')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (5, N'Papas Snack')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (6, N'Nuggets Snacks')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (7, N'Ensalada Snack')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (8, N'Nachos Snack')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (9, N'Bebidas Frías')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (10, N'Bebidas Calientes')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (11, N'Postre Congelado Snack')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (12, N'Postre dulce Snack')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (13, N'Super Hamburguesas')
INSERT [dbo].[TipoProducto] ([ID], [Descripcion]) VALUES (14, N'Toppin Hongos y Tocino')
SET IDENTITY_INSERT [dbo].[TipoProducto] OFF
ALTER TABLE [dbo].[DBS]  WITH CHECK ADD  CONSTRAINT [FK_DBS_ModoDePago] FOREIGN KEY([IdModoDePago])
REFERENCES [dbo].[ModoDePago] ([ID])
GO
ALTER TABLE [dbo].[DBS] CHECK CONSTRAINT [FK_DBS_ModoDePago]
GO
ALTER TABLE [dbo].[DBS]  WITH CHECK ADD  CONSTRAINT [FK_DBS_PS] FOREIGN KEY([IdPedido])
REFERENCES [dbo].[PS] ([ID])
GO
ALTER TABLE [dbo].[DBS] CHECK CONSTRAINT [FK_DBS_PS]
GO
ALTER TABLE [dbo].[DetalleBoleta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleBoleta_ModoDePago] FOREIGN KEY([IdModoDePago])
REFERENCES [dbo].[ModoDePago] ([ID])
GO
ALTER TABLE [dbo].[DetalleBoleta] CHECK CONSTRAINT [FK_DetalleBoleta_ModoDePago]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_TipoEmpleado] FOREIGN KEY([IdTipoEmpleado])
REFERENCES [dbo].[TipoEmpleado] ([ID])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_TipoEmpleado]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Pedido] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[Empleado] ([ID])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Pedido]
GO
ALTER TABLE [dbo].[PPS]  WITH CHECK ADD  CONSTRAINT [FK_PPS_PS] FOREIGN KEY([IdPedido])
REFERENCES [dbo].[PS] ([ID])
GO
ALTER TABLE [dbo].[PPS] CHECK CONSTRAINT [FK_PPS_PS]
GO
/****** Object:  StoredProcedure [dbo].[DeleteDetalleBoleta]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteDetalleBoleta]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [DetalleBoleta] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmp]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteEmp]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Empleado] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[DeleteModoPago]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteModoPago]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ModoDePago] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[DeletePedido]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePedido]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Pedido] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[DeletePRODUCTO]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePRODUCTO]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [TipoProducto] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[DeleteTipoEmpleado]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteTipoEmpleado]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [TipoEmpleado] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[eliminar]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminar]
AS
BEGIN
	delete from DBS 
	delete from PPS
    delete from PS
	DBCC CHECKIDENT (PS, RESEED,0)
	DBCC CHECKIDENT (PPS, RESEED,0)
	DBCC CHECKIDENT (DBS, RESEED,0)
END

GO
/****** Object:  StoredProcedure [dbo].[eliminarTodo]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[eliminarTodo] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
delete from DBS 
	delete from PPS
    delete from PS
	DBCC CHECKIDENT (PS, RESEED,0)
	DBCC CHECKIDENT (PPS, RESEED,0)
	DBCC CHECKIDENT (DBS, RESEED,0)
	END

GO
/****** Object:  StoredProcedure [dbo].[InsertDetalleBoleta]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDetalleBoleta]
(
	@IdPedido int,
	@MontoTotal decimal(18, 2),
	@IdModoDePago int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [DetalleBoleta] ([IdPedido], [MontoTotal], [IdModoDePago]) VALUES (@IdPedido, @MontoTotal, @IdModoDePago);
	
SELECT ID, IdPedido, MontoTotal, IdModoDePago FROM DetalleBoleta WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[InsertEmp]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertEmp]
(
	@UsuarioEmp nvarchar(50),
	@Contraseña nvarchar(50),
	@IdTipoEmpleado int,
	@Nombre nvarchar(50),
	@Celular nvarchar(50),
	@Correo nvarchar(100),
	@Direccion nvarchar(50),
	@Sueldo money
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Empleado] ([UsuarioEmp], [Contraseña], [IdTipoEmpleado], [Nombre], [Celular], [Correo], [Direccion], [Sueldo]) VALUES (@UsuarioEmp, @Contraseña, @IdTipoEmpleado, @Nombre, @Celular, @Correo, @Direccion, @Sueldo);
	
SELECT ID, UsuarioEmp, Contraseña, IdTipoEmpleado, Nombre, Celular, Correo, Direccion, Sueldo FROM Empleado WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[InsertModoPago]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertModoPago]
(
	@Descripcion nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ModoDePago] ([Descripcion]) VALUES (@Descripcion);
	
SELECT ID, Descripcion FROM ModoDePago WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[InsertPedido]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPedido]
(
	@Atendido bit,
	@Detalle nvarchar(50),
	@ID_Usuario int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Pedido] ([Atendido], [Detalle], [ID_Usuario]) VALUES (@Atendido, @Detalle, @ID_Usuario);
	
SELECT ID, Atendido, Detalle, ID_Usuario FROM Pedido WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[InsertPRODUCTO]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPRODUCTO]
(
	@Descripcion nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [TipoProducto] ([Descripcion]) VALUES (@Descripcion);
	
SELECT ID, Descripcion FROM TipoProducto WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[InsertTipoEmpleado]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTipoEmpleado]
(
	@Descripcion nvarchar(50),
	@Sueldo decimal(18, 2)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [TipoEmpleado] ([Descripcion], [Sueldo]) VALUES (@Descripcion, @Sueldo);
	
SELECT ID, Descripcion, Sueldo FROM TipoEmpleado WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[MostrarEmpleadoID]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MostrarEmpleadoID]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT ID
FROM   Empleado
WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[NewDeleteCommand]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NewDeleteCommand]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [TipoEmpleado] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[NewDeleteproducto]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NewDeleteproducto]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Producto] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[NewInsertCommand]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NewInsertCommand]
(
	@Descripcion nvarchar(50),
	@Sueldo decimal(18, 2)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [TipoEmpleado] ([Descripcion], [Sueldo]) VALUES (@Descripcion, @Sueldo);
	
SELECT ID, Descripcion, Sueldo FROM TipoEmpleado WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[NewInsertproducto]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NewInsertproducto]
(
	@Nombre nvarchar(50),
	@IdTipoProducto int,
	@Precio decimal(18, 2),
	@Descripcion nvarchar(100),
	@imagen nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Producto] ([Nombre], [IdTipoProducto], [Precio], [Descripcion], [imagen]) VALUES (@Nombre, @IdTipoProducto, @Precio, @Descripcion, @imagen);
	
SELECT ID, Nombre, IdTipoProducto, Precio, Descripcion, imagen FROM Producto WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[NewSelectCommand]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT ID, Descripcion, Sueldo
FROM   TipoEmpleado
GO
/****** Object:  StoredProcedure [dbo].[NewSelectproducto]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NewSelectproducto]
AS
	SET NOCOUNT ON;
SELECT        ID, Nombre, IdTipoProducto, Precio, Descripcion, imagen
FROM            Producto
GO
/****** Object:  StoredProcedure [dbo].[NewUpdateCommand]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NewUpdateCommand]
(
	@Descripcion nvarchar(50),
	@Sueldo decimal(18, 2),
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [TipoEmpleado] SET [Descripcion] = @Descripcion, [Sueldo] = @Sueldo WHERE (([ID] = @Original_ID));
	
SELECT ID, Descripcion, Sueldo FROM TipoEmpleado WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[NewUpdateproducto]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NewUpdateproducto]
(
	@Nombre nvarchar(50),
	@IdTipoProducto int,
	@Precio decimal(18, 2),
	@Descripcion nvarchar(100),
	@imagen nvarchar(50),
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [Producto] SET [Nombre] = @Nombre, [IdTipoProducto] = @IdTipoProducto, [Precio] = @Precio, [Descripcion] = @Descripcion, [imagen] = @imagen WHERE (([ID] = @Original_ID));
	
SELECT ID, Nombre, IdTipoProducto, Precio, Descripcion, imagen FROM Producto WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[SelectDetalleBoleta]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectDetalleBoleta]
AS
	SET NOCOUNT ON;
SELECT ID, IdPedido, MontoTotal, IdModoDePago
FROM   DetalleBoleta
GO
/****** Object:  StoredProcedure [dbo].[SelectEmp]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectEmp]
AS
	SET NOCOUNT ON;
SELECT ID, UsuarioEmp, Contraseña, IdTipoEmpleado, Nombre, Celular, Correo, Direccion, Sueldo
FROM   Empleado
GO
/****** Object:  StoredProcedure [dbo].[SelectLogin]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectLogin]
(
	@UsuarioEmp nvarchar(50),
	@Contraseña nvarchar(50)
)
AS
	SET NOCOUNT ON;
SELECT UsuarioEmp, Contraseña
FROM   Empleado
WHERE (UsuarioEmp = @UsuarioEmp) AND (Contraseña = @Contraseña)
GO
/****** Object:  StoredProcedure [dbo].[SelectModoPago]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectModoPago]
AS
	SET NOCOUNT ON;
SELECT        ID, Descripcion
FROM            ModoDePago
GO
/****** Object:  StoredProcedure [dbo].[SelectPedido]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectPedido]
AS
	SET NOCOUNT ON;
SELECT ID, Atendido, Detalle, ID_Usuario
FROM   Pedido
GO
/****** Object:  StoredProcedure [dbo].[SelectPRODUCTO]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectPRODUCTO]
AS
	SET NOCOUNT ON;
SELECT        ID, Descripcion
FROM            TipoProducto
GO
/****** Object:  StoredProcedure [dbo].[SelectQuery]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectQuery]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT ID
FROM   Pedido
WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[SelectQueryDetalleB]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectQueryDetalleB]
(
	@ID int,
	@IdPedido int
)
AS
	SET NOCOUNT ON;
SELECT        ID, IdPedido, MontoTotal, IdModoDePago
FROM            DetalleBoleta
WHERE        (ID = @ID) AND (IdPedido = @IdPedido)
GO
/****** Object:  StoredProcedure [dbo].[SelectQueryGETPRODUTINES]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectQueryGETPRODUTINES]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT        ID, Nombre, IdTipoProducto, Precio, Descripcion, imagen
FROM            Producto
WHERE        (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[SelectQueryMODOPAGOMETODO]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectQueryMODOPAGOMETODO]
(
	@ID nvarchar(50)
)
AS
	SET NOCOUNT ON;
SELECT        Descripcion, ID
FROM            ModoDePago
WHERE        (Descripcion = @ID)
GO
/****** Object:  StoredProcedure [dbo].[SelectQueryPEDIDOSID]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectQueryPEDIDOSID]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT        ID, Atendido, Detalle, ID_Usuario
FROM            Pedido
WHERE        (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[SelectQueryPRODUSTOID]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectQueryPRODUSTOID]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT        ID, Nombre, IdTipoProducto, Precio, Descripcion, imagen
FROM            Producto
WHERE        (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[SelectQueryTIPOEMPLEADOID]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectQueryTIPOEMPLEADOID]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT        ID, Descripcion, Sueldo
FROM            TipoEmpleado
WHERE        (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[SelectQueryTIPOPRODUCTOID]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectQueryTIPOPRODUCTOID]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT        ID, Descripcion
FROM            TipoProducto
WHERE        (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[SelectTipoEmpleado]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTipoEmpleado]
AS
	SET NOCOUNT ON;
SELECT        ID, Descripcion, Sueldo
FROM            TipoEmpleado
GO
/****** Object:  StoredProcedure [dbo].[SelectTProductoID]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTProductoID]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT ID
FROM   TipoProducto
WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[UpdateDetalleBoleta]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateDetalleBoleta]
(
	@IdPedido int,
	@MontoTotal decimal(18, 2),
	@IdModoDePago int,
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [DetalleBoleta] SET [IdPedido] = @IdPedido, [MontoTotal] = @MontoTotal, [IdModoDePago] = @IdModoDePago WHERE (([ID] = @Original_ID));
	
SELECT ID, IdPedido, MontoTotal, IdModoDePago FROM DetalleBoleta WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmp]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateEmp]
(
	@UsuarioEmp nvarchar(50),
	@Contraseña nvarchar(50),
	@IdTipoEmpleado int,
	@Nombre nvarchar(50),
	@Celular nvarchar(50),
	@Correo nvarchar(100),
	@Direccion nvarchar(50),
	@Sueldo money,
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [Empleado] SET [UsuarioEmp] = @UsuarioEmp, [Contraseña] = @Contraseña, [IdTipoEmpleado] = @IdTipoEmpleado, [Nombre] = @Nombre, [Celular] = @Celular, [Correo] = @Correo, [Direccion] = @Direccion, [Sueldo] = @Sueldo WHERE (([ID] = @Original_ID));
	
SELECT ID, UsuarioEmp, Contraseña, IdTipoEmpleado, Nombre, Celular, Correo, Direccion, Sueldo FROM Empleado WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[UpdateModoPago]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateModoPago]
(
	@Descripcion nvarchar(50),
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [ModoDePago] SET [Descripcion] = @Descripcion WHERE (([ID] = @Original_ID));
	
SELECT ID, Descripcion FROM ModoDePago WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[UpdatePedido]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdatePedido]
(
	@Atendido bit,
	@Detalle nvarchar(50),
	@ID_Usuario int,
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [Pedido] SET [Atendido] = @Atendido, [Detalle] = @Detalle, [ID_Usuario] = @ID_Usuario WHERE (([ID] = @Original_ID));
	
SELECT ID, Atendido, Detalle, ID_Usuario FROM Pedido WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[UpdatePRODUCTO]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdatePRODUCTO]
(
	@Descripcion nvarchar(50),
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [TipoProducto] SET [Descripcion] = @Descripcion WHERE (([ID] = @Original_ID));
	
SELECT ID, Descripcion FROM TipoProducto WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[UpdateTipoEmpleado]    Script Date: 20/5/2022 17:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateTipoEmpleado]
(
	@Descripcion nvarchar(50),
	@Sueldo decimal(18, 2),
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [TipoEmpleado] SET [Descripcion] = @Descripcion, [Sueldo] = @Sueldo WHERE (([ID] = @Original_ID));
	
SELECT ID, Descripcion, Sueldo FROM TipoEmpleado WHERE (ID = @ID)
GO
USE [master]
GO
ALTER DATABASE [Restaurante] SET  READ_WRITE 
GO
