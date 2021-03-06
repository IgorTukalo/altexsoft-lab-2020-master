USE [master]
GO

/****** Object:  Database [cookBook]    Script Date: 10.09.2020 9:04:04 ******/
CREATE DATABASE [cookBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cookBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.DATASERVER\MSSQL\DATA\cookBook.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cookBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.DATASERVER\MSSQL\DATA\cookBook_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [cookBook] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cookBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [cookBook] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [cookBook] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [cookBook] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [cookBook] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [cookBook] SET ARITHABORT OFF 
GO

ALTER DATABASE [cookBook] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [cookBook] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [cookBook] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [cookBook] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [cookBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [cookBook] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [cookBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [cookBook] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [cookBook] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [cookBook] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [cookBook] SET  DISABLE_BROKER 
GO

ALTER DATABASE [cookBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [cookBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [cookBook] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [cookBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [cookBook] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [cookBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [cookBook] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [cookBook] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [cookBook] SET  MULTI_USER 
GO

ALTER DATABASE [cookBook] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [cookBook] SET DB_CHAINING OFF 
GO

ALTER DATABASE [cookBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [cookBook] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [cookBook] SET  READ_WRITE 
GO


