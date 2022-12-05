--Script Version: Master - 1.1.0.0

USE [master]
GO

--this script is used to create the transit-performance database. change the name of the database and appropriate settings

IF EXISTS(SELECT * FROM sys.databases WHERE name='transit_performance')
DROP DATABASE transit_performance
GO

CREATE DATABASE [transit_performance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'transit_performance', FILENAME = N'...\transit_performance.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )  --update file location
 LOG ON 
( NAME = N'transit_performance_log', FILENAME = N'...\transit_performance_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%) --update file location
GO

ALTER DATABASE [transit_performance] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [transit_performance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [transit_performance] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [transit_performance] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [transit_performance] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [transit_performance] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [transit_performance] SET ARITHABORT OFF 
GO

ALTER DATABASE [transit_performance] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [transit_performance] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [transit_performance] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [transit_performance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [transit_performance] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [transit_performance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [transit_performance] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [transit_performance] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [transit_performance] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [transit_performance] SET  DISABLE_BROKER 
GO

ALTER DATABASE [transit_performance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [transit_performance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [transit_performance] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [transit_performance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [transit_performance] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [transit_performance] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [transit_performance] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [transit_performance] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [transit_performance] SET  MULTI_USER 
GO

ALTER DATABASE [transit_performance] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [transit_performance] SET DB_CHAINING OFF 
GO

ALTER DATABASE [transit_performance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [transit_performance] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [transit_performance] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [transit_performance] SET  READ_WRITE 
GO


