USE [master]
GO
/****** Object:  Database [ShareRide]    Script Date: 7/2/2023 11:08:10 AM ******/
CREATE DATABASE [ShareRide]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShareRide', FILENAME = N'/var/opt/mssql/data/ShareRide.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShareRide_log', FILENAME = N'/var/opt/mssql/data/ShareRide_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShareRide] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShareRide].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShareRide] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShareRide] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShareRide] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShareRide] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShareRide] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShareRide] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShareRide] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShareRide] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShareRide] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShareRide] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShareRide] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShareRide] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShareRide] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShareRide] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShareRide] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShareRide] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShareRide] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShareRide] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShareRide] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShareRide] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShareRide] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShareRide] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShareRide] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShareRide] SET  MULTI_USER 
GO
ALTER DATABASE [ShareRide] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [ShareRide] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShareRide] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShareRide] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShareRide] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShareRide] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShareRide', N'ON'
GO
ALTER DATABASE [ShareRide] SET QUERY_STORE = OFF
GO
USE [ShareRide]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 7/2/2023 11:08:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[RideId] [int] NOT NULL,
	[FromUserId] [int] NOT NULL,
	[ToUserId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Comment] [varchar](max) NOT NULL,
	[ist_user] [int] NOT NULL,
	[ist_date] [datetime] NOT NULL,
	[ist_ip] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RideRequests]    Script Date: 7/2/2023 11:08:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RideRequests](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[RideId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[lst_user] [int] NOT NULL,
	[lst_date] [datetime] NOT NULL,
	[lst_ip] [varchar](15) NOT NULL,
 CONSTRAINT [PK_RideRequests] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rides]    Script Date: 7/2/2023 11:08:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rides](
	[RideId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[VehicleId] [int] NOT NULL,
	[Origin] [varchar](50) NOT NULL,
	[Destination] [varchar](50) NOT NULL,
	[TotalSeats] [varchar](50) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[lst_user] [int] NOT NULL,
	[lst_date] [datetime] NOT NULL,
	[lst_ip] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Rides] PRIMARY KEY CLUSTERED 
(
	[RideId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RideStops]    Script Date: 7/2/2023 11:08:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RideStops](
	[StopId] [int] IDENTITY(1,1) NOT NULL,
	[RideId] [int] NOT NULL,
	[StopName] [varchar](50) NOT NULL,
	[StopDetails] [varchar](50) NOT NULL,
	[lst_user] [int] NOT NULL,
	[lst_date] [datetime] NOT NULL,
	[lst_ip] [varchar](15) NOT NULL,
 CONSTRAINT [PK_RideStops] PRIMARY KEY CLUSTERED 
(
	[StopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/2/2023 11:08:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhotoUrl] [nvarchar](max) NULL,
	[Email] [varchar](50) NOT NULL,
	[AddressLine1] [varchar](50) NOT NULL,
	[AddressLine2] [varchar](50) NOT NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Pincode] [varchar](6) NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[lst_user] [int] NOT NULL,
	[lst_date] [datetime] NOT NULL,
	[lst_ip] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 7/2/2023 11:08:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[VehicleType] [varchar](50) NOT NULL,
	[VehicleModel] [varchar](50) NOT NULL,
	[VehicleDetails] [varchar](50) NOT NULL,
	[VehicleImageUrl] [varchar](50) NOT NULL,
	[VehicleNumber] [varchar](15) NOT NULL,
	[lst_user] [int] NOT NULL,
	[lst_date] [datetime] NOT NULL,
	[lst_ip] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_Feedbacks_Rides] FOREIGN KEY([RideId])
REFERENCES [dbo].[Rides] ([RideId])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_Feedbacks_Rides]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_Feedbacks_Users] FOREIGN KEY([FromUserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_Feedbacks_Users]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_Feedbacks_Users1] FOREIGN KEY([ToUserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_Feedbacks_Users1]
GO
ALTER TABLE [dbo].[RideRequests]  WITH CHECK ADD  CONSTRAINT [FK_RideRequests_Rides] FOREIGN KEY([RideId])
REFERENCES [dbo].[Rides] ([RideId])
GO
ALTER TABLE [dbo].[RideRequests] CHECK CONSTRAINT [FK_RideRequests_Rides]
GO
ALTER TABLE [dbo].[RideRequests]  WITH CHECK ADD  CONSTRAINT [FK_RideRequests_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[RideRequests] CHECK CONSTRAINT [FK_RideRequests_Users]
GO
ALTER TABLE [dbo].[Rides]  WITH CHECK ADD  CONSTRAINT [FK_Rides_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Rides] CHECK CONSTRAINT [FK_Rides_Users]
GO
ALTER TABLE [dbo].[Rides]  WITH CHECK ADD  CONSTRAINT [FK_Rides_Vehicles] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([VehicleId])
GO
ALTER TABLE [dbo].[Rides] CHECK CONSTRAINT [FK_Rides_Vehicles]
GO
ALTER TABLE [dbo].[RideStops]  WITH CHECK ADD  CONSTRAINT [FK_RideStops_Rides] FOREIGN KEY([RideId])
REFERENCES [dbo].[Rides] ([RideId])
GO
ALTER TABLE [dbo].[RideStops] CHECK CONSTRAINT [FK_RideStops_Rides]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Users]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUsers]    Script Date: 7/2/2023 11:08:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetUsers] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Users;
END
GO
USE [master]
GO
ALTER DATABASE [ShareRide] SET  READ_WRITE 
GO
