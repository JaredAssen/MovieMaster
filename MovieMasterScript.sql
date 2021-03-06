USE [master]
GO
/****** Object:  Database [MovieMasterDb]    Script Date: 2022-04-13 7:46:13 PM ******/
CREATE DATABASE [MovieMasterDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MovieMasterDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MovieMasterDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MovieMasterDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MovieMasterDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MovieMasterDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MovieMasterDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MovieMasterDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MovieMasterDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MovieMasterDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MovieMasterDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MovieMasterDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [MovieMasterDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MovieMasterDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MovieMasterDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MovieMasterDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MovieMasterDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MovieMasterDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MovieMasterDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MovieMasterDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MovieMasterDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MovieMasterDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MovieMasterDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MovieMasterDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MovieMasterDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MovieMasterDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MovieMasterDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MovieMasterDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MovieMasterDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MovieMasterDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MovieMasterDb] SET  MULTI_USER 
GO
ALTER DATABASE [MovieMasterDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MovieMasterDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MovieMasterDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MovieMasterDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MovieMasterDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MovieMasterDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MovieMasterDb] SET QUERY_STORE = OFF
GO
USE [MovieMasterDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[BranchID] [int] NOT NULL,
	[BranchName] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[TheaterName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Email] [nvarchar](100) NOT NULL,
	[FName] [nvarchar](100) NOT NULL,
	[LName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[CVV] [nvarchar](3) NOT NULL,
	[CardNumber] [nvarchar](16) NOT NULL,
	[ExpirationDate] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Title] [nvarchar](100) NOT NULL,
	[RunTime] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AdminEmail] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie_Cast]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_Cast](
	[MovieTitle] [nvarchar](100) NOT NULL,
	[CastMemberName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Movie_Cast] PRIMARY KEY CLUSTERED 
(
	[MovieTitle] ASC,
	[CastMemberName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie_Director]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_Director](
	[MovieTitle] [nvarchar](100) NOT NULL,
	[DirectorName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Movie_Director] PRIMARY KEY CLUSTERED 
(
	[MovieTitle] ASC,
	[DirectorName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie_Genre]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_Genre](
	[MovieTitle] [nvarchar](100) NOT NULL,
	[Genre] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Movie_Genre] PRIMARY KEY CLUSTERED 
(
	[MovieTitle] ASC,
	[Genre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie_Producer]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_Producer](
	[MovieTitle] [nvarchar](100) NOT NULL,
	[ProducerName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Movie_Producer] PRIMARY KEY CLUSTERED 
(
	[MovieTitle] ASC,
	[ProducerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie_Writer]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_Writer](
	[MovieTitle] [nvarchar](100) NOT NULL,
	[WriterName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Movie_Writer] PRIMARY KEY CLUSTERED 
(
	[MovieTitle] ASC,
	[WriterName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Showing]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Showing](
	[Date] [nvarchar](100) NOT NULL,
	[Time] [nvarchar](100) NOT NULL,
	[ShowRoomNo] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[AdminEmail] [nvarchar](100) NOT NULL,
	[MovieTitle] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Showing] PRIMARY KEY CLUSTERED 
(
	[Date] ASC,
	[Time] ASC,
	[ShowRoomNo] ASC,
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Showroom]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Showroom](
	[ShowRoomNo] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[NumberOfSeats] [int] NOT NULL,
	[ShowRoomType] [nvarchar](100) NOT NULL,
	[SeatType] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Showroom] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[ShowRoomNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shows]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shows](
	[theaterName] [nvarchar](100) NOT NULL,
	[movieTitle] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Shows] PRIMARY KEY CLUSTERED 
(
	[theaterName] ASC,
	[movieTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[System_Admin]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[System_Admin](
	[Email] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[FName] [nvarchar](100) NOT NULL,
	[LName] [nvarchar](100) NOT NULL,
	[BranchID] [int] NOT NULL,
 CONSTRAINT [PK_System_Admin] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theater]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theater](
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Theater] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[TicketID] [int] NOT NULL,
	[Row] [nvarchar](2) NOT NULL,
	[AgeRange] [nvarchar](8) NOT NULL,
	[Price] [nvarchar](100) NOT NULL,
	[SeatNo] [int] NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[BuyerEmail] [nvarchar](100) NULL,
	[Date] [nvarchar](100) NOT NULL,
	[Time] [nvarchar](100) NOT NULL,
	[ShowRoomNo] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Branch_TheaterName]    Script Date: 2022-04-13 7:46:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_Branch_TheaterName] ON [dbo].[Branch]
(
	[TheaterName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Movie_AdminEmail]    Script Date: 2022-04-13 7:46:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_Movie_AdminEmail] ON [dbo].[Movie]
(
	[AdminEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Showing_AdminEmail]    Script Date: 2022-04-13 7:46:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_Showing_AdminEmail] ON [dbo].[Showing]
(
	[AdminEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Showing_BranchID_ShowRoomNo]    Script Date: 2022-04-13 7:46:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_Showing_BranchID_ShowRoomNo] ON [dbo].[Showing]
(
	[BranchID] ASC,
	[ShowRoomNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Showing_MovieTitle]    Script Date: 2022-04-13 7:46:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_Showing_MovieTitle] ON [dbo].[Showing]
(
	[MovieTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_System_Admin_BranchID]    Script Date: 2022-04-13 7:46:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_System_Admin_BranchID] ON [dbo].[System_Admin]
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Tickets_BuyerEmail]    Script Date: 2022-04-13 7:46:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tickets_BuyerEmail] ON [dbo].[Tickets]
(
	[BuyerEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Tickets_Date_Time_ShowRoomNo_BranchID]    Script Date: 2022-04-13 7:46:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tickets_Date_Time_ShowRoomNo_BranchID] ON [dbo].[Tickets]
(
	[Date] ASC,
	[Time] ASC,
	[ShowRoomNo] ASC,
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Theater] FOREIGN KEY([TheaterName])
REFERENCES [dbo].[Theater] ([Name])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_Theater]
GO
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_System_Admin] FOREIGN KEY([AdminEmail])
REFERENCES [dbo].[System_Admin] ([Email])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_System_Admin]
GO
ALTER TABLE [dbo].[Movie_Cast]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Cast_Movie] FOREIGN KEY([MovieTitle])
REFERENCES [dbo].[Movie] ([Title])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movie_Cast] CHECK CONSTRAINT [FK_Movie_Cast_Movie]
GO
ALTER TABLE [dbo].[Movie_Director]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Director_Movie] FOREIGN KEY([MovieTitle])
REFERENCES [dbo].[Movie] ([Title])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movie_Director] CHECK CONSTRAINT [FK_Movie_Director_Movie]
GO
ALTER TABLE [dbo].[Movie_Genre]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Genre_Movie] FOREIGN KEY([MovieTitle])
REFERENCES [dbo].[Movie] ([Title])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movie_Genre] CHECK CONSTRAINT [FK_Movie_Genre_Movie]
GO
ALTER TABLE [dbo].[Movie_Producer]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Producer_Movie] FOREIGN KEY([MovieTitle])
REFERENCES [dbo].[Movie] ([Title])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movie_Producer] CHECK CONSTRAINT [FK_Movie_Producer_Movie]
GO
ALTER TABLE [dbo].[Movie_Writer]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Writer_Movie] FOREIGN KEY([MovieTitle])
REFERENCES [dbo].[Movie] ([Title])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movie_Writer] CHECK CONSTRAINT [FK_Movie_Writer_Movie]
GO
ALTER TABLE [dbo].[Showing]  WITH CHECK ADD  CONSTRAINT [FK_Showing_Movie] FOREIGN KEY([MovieTitle])
REFERENCES [dbo].[Movie] ([Title])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Showing] CHECK CONSTRAINT [FK_Showing_Movie]
GO
ALTER TABLE [dbo].[Showing]  WITH CHECK ADD  CONSTRAINT [FK_Showing_Showroom] FOREIGN KEY([BranchID], [ShowRoomNo])
REFERENCES [dbo].[Showroom] ([BranchID], [ShowRoomNo])
GO
ALTER TABLE [dbo].[Showing] CHECK CONSTRAINT [FK_Showing_Showroom]
GO
ALTER TABLE [dbo].[Showing]  WITH CHECK ADD  CONSTRAINT [FK_Showing_System_Admin] FOREIGN KEY([AdminEmail])
REFERENCES [dbo].[System_Admin] ([Email])
GO
ALTER TABLE [dbo].[Showing] CHECK CONSTRAINT [FK_Showing_System_Admin]
GO
ALTER TABLE [dbo].[Showroom]  WITH CHECK ADD  CONSTRAINT [FK_Showroom_Branch] FOREIGN KEY([BranchID])
REFERENCES [dbo].[Branch] ([BranchID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Showroom] CHECK CONSTRAINT [FK_Showroom_Branch]
GO
ALTER TABLE [dbo].[Shows]  WITH CHECK ADD  CONSTRAINT [FK_Shows_Movie] FOREIGN KEY([movieTitle])
REFERENCES [dbo].[Movie] ([Title])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Shows] CHECK CONSTRAINT [FK_Shows_Movie]
GO
ALTER TABLE [dbo].[Shows]  WITH CHECK ADD  CONSTRAINT [FK_Shows_Theater] FOREIGN KEY([theaterName])
REFERENCES [dbo].[Theater] ([Name])
GO
ALTER TABLE [dbo].[Shows] CHECK CONSTRAINT [FK_Shows_Theater]
GO
ALTER TABLE [dbo].[System_Admin]  WITH CHECK ADD  CONSTRAINT [FK_System_Admin_Branch] FOREIGN KEY([BranchID])
REFERENCES [dbo].[Branch] ([BranchID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[System_Admin] CHECK CONSTRAINT [FK_System_Admin_Branch]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Customer] FOREIGN KEY([BuyerEmail])
REFERENCES [dbo].[Customer] ([Email])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Customer]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Showing] FOREIGN KEY([Date], [Time], [ShowRoomNo], [BranchID])
REFERENCES [dbo].[Showing] ([Date], [Time], [ShowRoomNo], [BranchID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Showing]
GO
/****** Object:  StoredProcedure [dbo].[getTickets]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getTickets] 
    -- Add the parameters for the stored procedure here
    @date varchar(100),
    @time varchar(100),
    @showRoomNo int,
    @branchID int
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT *
    FROM Tickets
    WHERE Tickets.Date = @date AND
          Tickets.Time = @time AND
          Tickets.ShowRoomNo = @showRoomNo AND
          Tickets.BranchID = @branchID AND
          Tickets.BuyerEmail = '';
END
GO
/****** Object:  StoredProcedure [dbo].[lastTicket]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[lastTicket]
AS

SELECT * 
FROM Tickets AS T 
WHERE T.TicketID=(
    SELECT max(TicketID) FROM Tickets
    )
GO
/****** Object:  StoredProcedure [dbo].[searchCity]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchCity] @val nvarchar(100)
AS
SELECT * FROM Showing AS S WHERE 
	EXISTS (SELECT * FROM Showroom AS SR, Branch AS B
			WHERE SR.ShowRoomNo = S.ShowRoomNo 
				AND SR.BranchID = S.BranchID 
				AND S.BranchID = B.BranchID
				AND CHARINDEX(@val, B.Address) > 0)
/*SELECT * FROM Branch AS B 
WHERE CHARINDEX(@val, B.Address) > 0*/
GO
/****** Object:  StoredProcedure [dbo].[searchMovieCast]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchMovieCast] @val nvarchar(100)
AS
SELECT * FROM MOVIE_CAST AS M
WHERE M.MovieTitle = @val
GO
/****** Object:  StoredProcedure [dbo].[searchMovieDirector]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchMovieDirector] @val nvarchar(100)
AS
SELECT * FROM MOVIE_DIRECTOR AS M
WHERE M.MovieTitle = @val
GO
/****** Object:  StoredProcedure [dbo].[searchMovieGenre]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchMovieGenre] @val nvarchar(100)
AS
SELECT * FROM MOVIE_GENRE AS M
WHERE M.MovieTitle = @val
GO
/****** Object:  StoredProcedure [dbo].[searchMovieProducer]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchMovieProducer] @val nvarchar(100)
AS
SELECT * FROM MOVIE_PRODUCER AS M
WHERE M.MovieTitle = @val
GO
/****** Object:  StoredProcedure [dbo].[searchMovieWriter]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchMovieWriter] @val nvarchar(100)
AS
SELECT * FROM MOVIE_WRITER AS M
WHERE M.MovieTitle = @val
GO
/****** Object:  StoredProcedure [dbo].[searchTheater]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchTheater] @val nvarchar(100)
AS
SELECT * FROM Showing AS S WHERE 
	EXISTS (SELECT * FROM Showroom AS SR, Branch AS B
			WHERE SR.ShowRoomNo = S.ShowRoomNo 
				AND SR.BranchID = S.BranchID 
				AND S.BranchID = B.BranchID
				AND B.BranchID = @val)
GO
/****** Object:  StoredProcedure [dbo].[signup]    Script Date: 2022-04-13 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[signup]
@email nvarchar(100), 
@FName nvarchar(100),
@LNAME nvarchar(100), 
@Password nvarchar(100), 
@CVV nvarchar(3), 
@CardNumber nvarchar(16), 
@ExpirationDate varchar(5)
AS
INSERT INTO Customer
values(@email, @FName, @LNAME, @Password, @CVV, @CardNumber, @ExpirationDate);
GO
USE [master]
GO
ALTER DATABASE [MovieMasterDb] SET  READ_WRITE 
GO
