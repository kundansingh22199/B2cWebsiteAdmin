USE [master]
GO
/****** Object:  Database [KundanWeb_db]    Script Date: 9/19/2023 4:54:26 pm ******/
CREATE DATABASE [KundanWeb_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KundanWeb_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019WEB\MSSQL\DATA\KundanWeb_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KundanWeb_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019WEB\MSSQL\DATA\KundanWeb_db_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KundanWeb_db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KundanWeb_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KundanWeb_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KundanWeb_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KundanWeb_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KundanWeb_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KundanWeb_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [KundanWeb_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KundanWeb_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KundanWeb_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KundanWeb_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KundanWeb_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KundanWeb_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KundanWeb_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KundanWeb_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KundanWeb_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KundanWeb_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KundanWeb_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KundanWeb_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KundanWeb_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KundanWeb_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KundanWeb_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KundanWeb_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KundanWeb_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KundanWeb_db] SET RECOVERY FULL 
GO
ALTER DATABASE [KundanWeb_db] SET  MULTI_USER 
GO
ALTER DATABASE [KundanWeb_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KundanWeb_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KundanWeb_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KundanWeb_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KundanWeb_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KundanWeb_db] SET QUERY_STORE = OFF
GO
USE [KundanWeb_db]
GO
/****** Object:  Table [dbo].[HomeSection3]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeSection3](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Div1image] [varchar](200) NULL,
	[Div2image] [varchar](200) NULL,
	[Div3image] [varchar](200) NULL,
	[Div4image] [varchar](200) NULL,
	[Div5image] [varchar](200) NULL,
	[Div6image] [varchar](200) NULL,
	[Section3Heading] [varchar](100) NULL,
	[Section3content] [varchar](250) NULL,
	[Div1Heading] [varchar](100) NULL,
	[Div1content] [varchar](200) NULL,
	[Div2heading] [varchar](100) NULL,
	[Div2content] [varchar](200) NULL,
	[Div3heading] [varchar](100) NULL,
	[Div3content] [varchar](200) NULL,
	[Div4heading] [varchar](100) NULL,
	[Div4content] [varchar](200) NULL,
	[Div5heading] [varchar](100) NULL,
	[Div5content] [varchar](200) NULL,
	[Div6heading] [varchar](100) NULL,
	[Div6content] [varchar](200) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateOn] [datetime] NULL,
	[Updateby] [varchar](10) NULL,
	[UpdateOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeSection4]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeSection4](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Div1image] [varchar](200) NULL,
	[Div2image] [varchar](200) NULL,
	[Div3image] [varchar](200) NULL,
	[Section4Heading] [varchar](100) NULL,
	[Div1heading] [varchar](100) NULL,
	[Div1Content] [varchar](200) NULL,
	[Div2heading] [varchar](100) NULL,
	[Div2Content] [varchar](200) NULL,
	[Div3heading] [varchar](100) NULL,
	[Div3Content] [varchar](200) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateOn] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[UpdateOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblAadharPay]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAadharPay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Heading2] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Paragraph1] [varchar](300) NULL,
	[Paragraph2] [varchar](300) NULL,
	[Paragraph3] [varchar](300) NULL,
	[Paragraph4] [varchar](300) NULL,
	[Paragraph5] [varchar](300) NULL,
	[Buttonlink] [varchar](max) NULL,
	[Buttontittle] [varchar](50) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblAboutMaster]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAboutMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL,
	[Content1] [varchar](max) NULL,
	[content2] [varchar](max) NULL,
	[Heading] [varchar](80) NULL,
	[ButtonLink] [varchar](max) NULL,
	[buttontitile] [varchar](20) NULL,
	[CreateBy] [varchar](20) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](20) NULL,
	[updateDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblAPES]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAPES](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Image3] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Heading2] [varchar](100) NULL,
	[Heading3] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Content2] [varchar](300) NULL,
	[Content3] [varchar](300) NULL,
	[Paragraph1] [varchar](300) NULL,
	[Paragraph2] [varchar](300) NULL,
	[Paragraph3] [varchar](300) NULL,
	[Buttonlink] [varchar](max) NULL,
	[Buttontittle] [varchar](50) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBBPS]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBBPS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Paragraph1] [varchar](300) NULL,
	[Paragraph2] [varchar](300) NULL,
	[Paragraph3] [varchar](300) NULL,
	[Paragraph4] [varchar](300) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCashManagement]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCashManagement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Heading2] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Content2] [varchar](300) NULL,
	[Buttonlink] [varchar](max) NULL,
	[Buttontittle] [varchar](50) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCommunityMaster]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCommunityMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[communityimage1] [varchar](max) NULL,
	[communityimage2] [varchar](max) NULL,
	[communityimage3] [varchar](max) NULL,
	[Logoimage] [varchar](max) NULL,
	[heading] [varchar](30) NULL,
	[content] [varchar](max) NULL,
	[buttonlink] [varchar](max) NULL,
	[buttontittle] [varchar](50) NULL,
	[createdateby] [varchar](20) NULL,
	[createdate] [datetime] NULL,
	[updateby] [varchar](20) NULL,
	[updatedate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblContact]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblContact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Section1image] [varchar](200) NULL,
	[Section1heading] [varchar](100) NULL,
	[Section1content] [varchar](300) NULL,
	[CrateBy] [varchar](10) NULL,
	[CreateOn] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[UpdateOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblContactmassage]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContactmassage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[email] [varchar](200) NULL,
	[Message] [varchar](300) NULL,
	[smsDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCreateCardLic]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCreateCardLic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Heading2] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Buttonlink] [varchar](max) NULL,
	[Buttontittle] [varchar](50) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDMT]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDMT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Content2] [varchar](300) NULL,
	[Content3] [varchar](300) NULL,
	[Content4] [varchar](300) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblFasTag]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblFasTag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Image3] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Heading2] [varchar](100) NULL,
	[Heading3] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Content2] [varchar](300) NULL,
	[Content3] [varchar](300) NULL,
	[Buttonlink] [varchar](max) NULL,
	[Buttontittle] [varchar](50) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblMainMaster]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblMainMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OwnerName] [varchar](100) NULL,
	[ComapanyName] [varchar](200) NULL,
	[DomainName] [varchar](200) NULL,
	[CompanyPan] [varchar](20) NULL,
	[CompanyAdharNo] [varchar](15) NULL,
	[CompanyCertificate] [varchar](max) NULL,
	[ContactNo] [varchar](15) NULL,
	[ConatactEmail] [varchar](200) NULL,
	[CompanyAddress] [varchar](200) NULL,
	[SupportContactNo] [varchar](15) NULL,
	[SupportEmaild] [varchar](200) NULL,
	[ComapnyLogo] [varchar](max) NULL,
	[CreateOn] [datetime] NULL,
	[CreateBy] [varchar](100) NULL,
	[UpdateOn] [datetime] NULL,
	[UpdateBy] [varchar](100) NULL,
	[ApkLink] [varchar](max) NULL,
	[LoginLink] [varchar](max) NULL,
	[InstagramLink] [varchar](max) NULL,
	[FacebookLink] [varchar](max) NULL,
	[TwitterLink] [varchar](max) NULL,
	[LinkdinLink] [varchar](max) NULL,
	[WhatsappLink] [varchar](max) NULL,
	[Password] [varchar](20) NULL,
	[FoEmailSectionimg] [varchar](300) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblMicroATM]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblMicroATM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Heading2] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Content2] [varchar](300) NULL,
	[Buttonlink] [varchar](max) NULL,
	[Buttontittle] [varchar](50) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOurMission]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOurMission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContentFirst] [varchar](200) NULL,
	[ContentSecond] [varchar](150) NULL,
	[IamgeOurMission] [varchar](200) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPanCardService]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPanCardService](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Image3] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Heading2] [varchar](100) NULL,
	[Heading3] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Content2] [varchar](300) NULL,
	[Paragraph1] [varchar](300) NULL,
	[Paragraph2] [varchar](300) NULL,
	[Paragraph3] [varchar](300) NULL,
	[Paragraph4] [varchar](300) NULL,
	[Buttonlink] [varchar](max) NULL,
	[Buttontittle] [varchar](50) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPrivacyPolicy]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPrivacyPolicy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Section1Heading] [varchar](300) NULL,
	[Section1para] [varchar](max) NULL,
	[Section2heading] [varchar](300) NULL,
	[Section2para1] [varchar](max) NULL,
	[Section2para2] [varchar](max) NULL,
	[Section2para3] [varchar](max) NULL,
	[Section2para4] [varchar](max) NULL,
	[Section2para5] [varchar](max) NULL,
	[Section2para6] [varchar](max) NULL,
	[Section2para7] [varchar](max) NULL,
	[Section2para8] [varchar](max) NULL,
	[Section3heading] [varchar](300) NULL,
	[Section3para] [varchar](max) NULL,
	[Section4heading] [varchar](300) NULL,
	[Section4para] [varchar](max) NULL,
	[Section5heading] [varchar](300) NULL,
	[Section5para] [varchar](max) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateOn] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[UpdateOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProductMaster]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProductMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [int] NULL,
	[PageUrl] [varchar](max) NULL,
	[UpdatedBy] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[IsDeleted] [int] NULL,
	[DeletedBy] [varchar](50) NULL,
	[DeletedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRecharge]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRecharge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Content2] [varchar](300) NULL,
	[Content3] [varchar](300) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSafeGold]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSafeGold](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Heading1] [varchar](100) NULL,
	[Heading2] [varchar](100) NULL,
	[Content1] [varchar](300) NULL,
	[Content2] [varchar](300) NULL,
	[Buttonlink] [varchar](max) NULL,
	[Buttontittle] [varchar](50) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblServiceMaster]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblServiceMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [int] NULL,
	[PageUrl] [varchar](max) NULL,
	[UpdatedBy] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[IsDeleted] [int] NULL,
	[DeletedBy] [varchar](50) NULL,
	[DeletedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSliderMaster]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSliderMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sliderImage1] [varchar](max) NULL,
	[sliderHeading1] [varchar](100) NULL,
	[sliderContent1] [varchar](250) NULL,
	[sliderButton1Title1] [varchar](100) NULL,
	[sliderButton2Title1] [varchar](100) NULL,
	[sliderButton1link1] [varchar](max) NULL,
	[sliderButton2link1] [varchar](max) NULL,
	[sliderImage2] [varchar](max) NULL,
	[sliderHeading2] [varchar](100) NULL,
	[sliderContent2] [varchar](250) NULL,
	[sliderButton1Title2] [varchar](100) NULL,
	[sliderButton2Title2] [varchar](100) NULL,
	[sliderButton1link2] [varchar](max) NULL,
	[sliderButton2link2] [varchar](max) NULL,
	[sliderImage3] [varchar](max) NULL,
	[sliderHeading3] [varchar](100) NULL,
	[sliderContent3] [varchar](250) NULL,
	[sliderButton1Title3] [varchar](100) NULL,
	[sliderButton2Title3] [varchar](100) NULL,
	[sliderButton1link3] [varchar](max) NULL,
	[sliderButton2link3] [varchar](max) NULL,
	[createby] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[updateby] [varchar](50) NULL,
	[updatedate] [datetime] NULL,
	[Slider1Status] [int] NULL,
	[Slider2Status] [int] NULL,
	[Slider3Status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTeamMaster]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTeamMaster](
	[Id] [int] IDENTITY(101,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[RoleType] [varchar](100) NULL,
	[ProfileImg] [varchar](max) NULL,
	[SocialMdaLink1] [varchar](300) NULL,
	[SocialMdaLink2] [varchar](300) NULL,
	[SocialMdaLink3] [varchar](300) NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdateOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTermCondition]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTermCondition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Section1Heading] [varchar](200) NULL,
	[Section1content1] [varchar](max) NULL,
	[Section1content2] [varchar](max) NULL,
	[Section1content3] [varchar](max) NULL,
	[Section1content4] [varchar](max) NULL,
	[Section1content5] [varchar](max) NULL,
	[Section1content6] [varchar](max) NULL,
	[Section1content7] [varchar](max) NULL,
	[Section1content8] [varchar](max) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateOn] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[UpdateOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblWhyUs]    Script Date: 9/19/2023 4:54:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblWhyUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageWhyUs] [varchar](200) NULL,
	[ContentFirst] [varchar](200) NULL,
	[ContentSecound] [varchar](200) NULL,
	[ContentThird] [varchar](200) NULL,
	[ContentFouth] [varchar](200) NULL,
	[ContentFifth] [varchar](200) NULL,
	[ButtonLink] [varchar](300) NULL,
	[CreateBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [varchar](10) NULL,
	[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HomeSection3] ON 

INSERT [dbo].[HomeSection3] ([id], [Div1image], [Div2image], [Div3image], [Div4image], [Div5image], [Div6image], [Section3Heading], [Section3content], [Div1Heading], [Div1content], [Div2heading], [Div2content], [Div3heading], [Div3content], [Div4heading], [Div4content], [Div5heading], [Div5content], [Div6heading], [Div6content], [CreateBy], [CreateOn], [Updateby], [UpdateOn]) VALUES (1, N'~/AdminModule/Images/01.jpg', N'~/AdminModule/Images/01.jpg', N'~/AdminModule/Images/02.jpg', N'~/AdminModule/Images/03.jpg', N'~/AdminModule/Images/03.jpg', N'~/AdminModule/Images/06.jpg', N'Our Services', N'Our Services', N'Mobile Recharge', N'Our Services', N'DTH Recharge', N'Our Services', N'Money Transfer', N'Our Services', N'Travel Booking', N'Our Services', N'Mobile Recharge', N'Our Services', N'BBPS', N'Our Services', N'1', CAST(N'2023-08-04T15:38:48.950' AS DateTime), N'1', CAST(N'2023-08-24T10:53:16.970' AS DateTime))
SET IDENTITY_INSERT [dbo].[HomeSection3] OFF
SET IDENTITY_INSERT [dbo].[HomeSection4] ON 

INSERT [dbo].[HomeSection4] ([id], [Div1image], [Div2image], [Div3image], [Section4Heading], [Div1heading], [Div1Content], [Div2heading], [Div2Content], [Div3heading], [Div3Content], [CreateBy], [CreateOn], [UpdateBy], [UpdateOn]) VALUES (1, N'~/AdminModule/Images/team-1.jpg', N'~/AdminModule/Images/t2.png', N'~/AdminModule/Images/t1.png', N'Testimonial', N'Astha', N'Clita clita tempor justo dolor ipsum amet kasd amet duo justo duo duo labore sed sed. Magna ut diam ', N'Kundan', N'Clita clita tempor justo dolor ipsum amet kasd amet duo justo duo duo labore sed sed. Magna ut diam sit et amet stet eos sed clita erat magna elitr erat sit sit erat at rebum justo sea clita.', N'Romi', N'Clita clita tempor justo dolor ipsum amet kasd amet duo justo duo duo labore sed sed. Magna ut diam sit et amet stet eos sed clita erat magna elitr erat sit sit erat at rebum justo sea clita.', N'1', CAST(N'2023-08-04T15:45:04.100' AS DateTime), N'1', CAST(N'2023-08-24T10:55:43.327' AS DateTime))
SET IDENTITY_INSERT [dbo].[HomeSection4] OFF
SET IDENTITY_INSERT [dbo].[TblAboutMaster] ON 

INSERT [dbo].[TblAboutMaster] ([id], [image], [Content1], [content2], [Heading], [ButtonLink], [buttontitile], [CreateBy], [CreateDate], [UpdateBy], [updateDate]) VALUES (1, N'~/AdminModule/Images/about.jpg', N'Our company is your one stop solution for all needs. There is no doubt that we are the leaders and you don''t have to worry about our image because it is perfect.', N'Our company is your one stop solution for all needs. There is no doubt that we are the leaders and you don''t have to worry about our image because it is perfect.', N'About Us', N'About Us', NULL, N'', CAST(N'2023-08-04T15:51:19.090' AS DateTime), NULL, CAST(N'2023-08-05T14:45:45.937' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblAboutMaster] OFF
SET IDENTITY_INSERT [dbo].[TblAPES] ON 

INSERT [dbo].[TblAPES] ([id], [Image1], [Image2], [Image3], [Heading1], [Heading2], [Heading3], [Content1], [Content2], [Content3], [Paragraph1], [Paragraph2], [Paragraph3], [Buttonlink], [Buttontittle], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (1, N'~/AdminModule/Images/Aeps_bimage.png', N'~/AdminModule/Images/aadhar-money-withdrawal.png', N'~/AdminModule/Images/aeps.png', N'AEPS - Aadhar and Biomatric Base Payment Service', N'Aadhar Money Withdrawal', N'Aadhaar Banking', N'Aadhaar enabled payment system (AEPS) is a secured payment method provided by the National payments corporation of India (NPCI) that allows aadhaar linked bank account holders to avail basic banking services such as balance inquiry & cash withdrawal. Customers simply', N'Your shop can essentially be a mini-ATM for your community too as people who need to withdraw cash can simply come to you with their Aadhar cards that are linked to bank accounts and then withdraw their money after account verification. This Aadhar money withdrawal allows a large number of people to', N'You can also offer other fintech services using the same AePS mechanism by being a free AePS service provider. Your AePS online services can essentially include AePS payment, AePS withdrawal, and AePS money transfer, all with just the use of Aadhar biometric verification for Aadhar Baking. You will ', N'Cash withdrawal', N'Payment transfer', N'Mini statement', N'Learn More', N'', N'', CAST(N'2023-08-04T17:53:18.427' AS DateTime), N'', CAST(N'2023-08-24T21:23:02.330' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblAPES] OFF
SET IDENTITY_INSERT [dbo].[TblBBPS] ON 

INSERT [dbo].[TblBBPS] ([id], [Image1], [Heading1], [Content1], [Paragraph1], [Paragraph2], [Paragraph3], [Paragraph4], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (1, N'~/AdminModule/Images/bbps4.png', N'BBPS (BHARAT BILL PAYMENT SYSTEM)', N'Bharat Bill Payment System is an integrated bill payment system in India offering interoperable and accessible bill payment service to customers through a network of agents of registered member as Agent,', N'Institutions, enabling multiple payment modes, and providing instant confirmation of payment,', N'UniCorn Pay enables its Retailers to accept payments for all utility bills such as water,', N'Electricity, Gas, and Broadband through the Bharat Bill Payment System (BBPS).', N'We are committed to provide highest margin to our Partners.', N'', CAST(N'2023-08-04T18:05:08.800' AS DateTime), N'', CAST(N'2023-08-24T10:59:58.853' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblBBPS] OFF
SET IDENTITY_INSERT [dbo].[TblCommunityMaster] ON 

INSERT [dbo].[TblCommunityMaster] ([id], [communityimage1], [communityimage2], [communityimage3], [Logoimage], [heading], [content], [buttonlink], [buttontittle], [createdateby], [createdate], [updateby], [updatedate]) VALUES (1, N'~/AdminModule/Images/team-3.jpg', N'~/AdminModule/Images/team-2.jpg', N'~/AdminModule/Images/team-1.jpg', NULL, N'Join The Biggest Community Of', N'"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..." "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', N'https://www.google.com/', N'', N'', CAST(N'2023-08-04T15:24:15.260' AS DateTime), NULL, CAST(N'2023-08-24T11:47:31.160' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblCommunityMaster] OFF
SET IDENTITY_INSERT [dbo].[TblContact] ON 

INSERT [dbo].[TblContact] ([Id], [Section1image], [Section1heading], [Section1content], [CrateBy], [CreateOn], [UpdateBy], [UpdateOn]) VALUES (1, N'~/AdminModule/Images/aboutright.png', N'Contact Us', N'You will find yourself working in a true partnership that results in an incredible experience, and an end product that is the best.With dedicated engineers on-hand 24/7, we’re set up to become an extension of your team..', N'1', CAST(N'2023-08-04T18:14:45.677' AS DateTime), N'1', CAST(N'2023-08-24T11:02:23.063' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblContact] OFF
SET IDENTITY_INSERT [dbo].[tblContactmassage] ON 

INSERT [dbo].[tblContactmassage] ([id], [name], [email], [Message], [smsDate]) VALUES (1, N'Kundan Singh', N'kundansingh22199@gmail.com', N'Learn About', CAST(N'2023-08-05T18:11:07.967' AS DateTime))
INSERT [dbo].[tblContactmassage] ([id], [name], [email], [Message], [smsDate]) VALUES (2, N'Kundan Singh', N'kundansingh22199@gmail.com', N'I Want To Learn About More For This Software', CAST(N'2023-08-05T18:15:52.353' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblContactmassage] OFF
SET IDENTITY_INSERT [dbo].[TblDMT] ON 

INSERT [dbo].[TblDMT] ([id], [Image1], [Heading1], [Content1], [Content2], [Content3], [Content4], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (1, N'~/AdminModule/Images/recharge.png', N'Domestic Money Transfer', N'Domestic money remittance as easy as mobile recharge.', N'And you need to collect the customers mobile number,', N'Beneficiary bank account number, Bank name, IFSC code and the amount to be transferred to the customer, family and Friends,.', N'A large number of people in India, particularly the migrant population, doesn’t have access to formal banking channels for want of proof of identity/address etc. This lead to innumerable hardships faced by them while attempting to remit money back to their family members. This is happening even when', N'', CAST(N'2023-08-04T17:02:39.817' AS DateTime), N'', CAST(N'2023-08-24T10:56:51.897' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblDMT] OFF
SET IDENTITY_INSERT [dbo].[TblFasTag] ON 

INSERT [dbo].[TblFasTag] ([id], [Image1], [Image2], [Image3], [Heading1], [Heading2], [Heading3], [Content1], [Content2], [Content3], [Buttonlink], [Buttontittle], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (1, N'~/AdminModule/Images/CMS.png', N'~/AdminModule/Images/cms2.png', N'~/AdminModule/Images/fastag_img.png', N'FASTag', N'HOW FASTag WORKS?', N'WHAT IS FASTag?', N'FASTag is a device that employs Radio Frequency Identification (RFID) technology for making toll payments directly from the Prepaid Account linked to it. It is affixed on the windscreen of your vehicle and enables you to drive through toll plazas, without stopping for cash transactions.', N'FASTag is affixed to the windscreen of the vehicle and is linked to a prepaid account. Toll payments are made through RFID, as the vehicle drives through the toll gate, which means you do not have to stop at a toll plaza on your journey.', N'FASTag is affixed to the windscreen of the vehicle and is linked to a prepaid account. Toll payments are made through RFID, as the vehicle drives through the toll gate, which means you do not have to stop at a toll plaza on your journey.', N'fastag', N'', N'', CAST(N'2023-08-07T12:26:30.000' AS DateTime), N'', CAST(N'2023-08-24T11:01:12.200' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblFasTag] OFF
SET IDENTITY_INSERT [dbo].[TblMainMaster] ON 

INSERT [dbo].[TblMainMaster] ([Id], [OwnerName], [ComapanyName], [DomainName], [CompanyPan], [CompanyAdharNo], [CompanyCertificate], [ContactNo], [ConatactEmail], [CompanyAddress], [SupportContactNo], [SupportEmaild], [ComapnyLogo], [CreateOn], [CreateBy], [UpdateOn], [UpdateBy], [ApkLink], [LoginLink], [InstagramLink], [FacebookLink], [TwitterLink], [LinkdinLink], [WhatsappLink], [Password], [FoEmailSectionimg]) VALUES (1, N'Kundan Singh', N'Wts Net India', N'web.login.in', N'HHSPT2243D', N'678978576879', N'', N'9798501225', N'kundansingh22199@gmail.com', N'Noida, Sector-16 (201301)', N'7982516747', N'ks12@gmail.com', N'~/AdminModule/Images/logoimage.png', NULL, NULL, CAST(N'2023-08-24T15:07:59.733' AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'1234', N'')
SET IDENTITY_INSERT [dbo].[TblMainMaster] OFF
SET IDENTITY_INSERT [dbo].[TblOurMission] ON 

INSERT [dbo].[TblOurMission] ([Id], [ContentFirst], [ContentSecond], [IamgeOurMission], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'With a vision to empower retailers all over India, including cities and rural areas, we provide retailer app services that are easy-to-use and offer best-in-class.', N'You can now get the Prepaid, Postpaid and DTH services recharged for yours customers or Family and earn attractive commission on every transaction.', N'~/AdminModule/Images/mission.jpg', N'1', CAST(N'2023-08-04T15:58:43.037' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblOurMission] OFF
SET IDENTITY_INSERT [dbo].[TblPrivacyPolicy] ON 

INSERT [dbo].[TblPrivacyPolicy] ([Id], [Section1Heading], [Section1para], [Section2heading], [Section2para1], [Section2para2], [Section2para3], [Section2para4], [Section2para5], [Section2para6], [Section2para7], [Section2para8], [Section3heading], [Section3para], [Section4heading], [Section4para], [Section5heading], [Section5para], [CreateBy], [CreateOn], [UpdateBy], [UpdateOn]) VALUES (1, N'INFORMATION COLLECT', N'We simply collect your information, to provide better and rich experience with your subsequent visits. For example, what kind of mobile recharge, you supposedly want, what kind of bus type you like to travel and what kind of deals or offers you like the most. We collect your information in two different ways.', N'WHY WE COLLECT AND HOW WE USE YOUR COLLECTION', N'We collect your personal information, to understand your personal behavior, and choices, so we can create better experience for you, whenever you visit our web portal and secondly, to offer you better deals and propagation than your ideal choice.', N'We collect your personal information, to understand your personal behavior, and choices, so we can create better experience for you, whenever you visit our web portal and secondly, to offer you better deals and propagation than your ideal choice.', N'We collect your technical information, simply for the sake of improving our back-end technology, so we can give you quick and hassle free experience. And you always come back to use our service.', N'We collect your technical information, simply for the sake of improving our back-end technology, so we can give you quick and hassle free experience. And you always come back to use our service.', N'We collect your technical information, simply for the sake of improving our back-end technology, so we can give you quick and hassle free experience. And you always come back to use our service.', N'We collect your technical information, simply for the sake of improving our back-end technology, so we can give you quick and hassle free experience. And you always come back to use our service.', N'We collect your technical information, simply for the sake of improving our back-end technology, so we can give you quick and hassle free experience. And you always come back to use our service.', N'We collect your technical information, simply for the sake of improving our back-end technology, so we can give you quick and hassle free experience. And you always come back to use our service.', N'SHARING OF PERSONAL INFORMATION', N'We use personal information to provide the services you request. We use your personal information to resolve disputes; troubleshoot problems; Send money, collect money; measure consumer interest in our products and services and we may use this information to keep you apprised on any online and offline offers, products, services, and updates that shall be made available for use of our customers. We use the information thus obtained to customize your experience; detect and protect us against error, fraud and other criminal activity; enforce our terms and conditions', N'WE ARE 100% SECURED AND CERTIFIED', N'We are GeoTrust certified service, which guarantees your personal information is in safe hands, and 100% secured from any internet hack or data theft attacks. Though along with GeoTrust SSL certification, we have also employed many security checks to make leak-free system.', N'POLICY CHANGES', N'Our Privacy Policy may change every once in a while. Though, we make these changes on growing demand of consumer or to compile with Government or Industry guidelines, but we wont decrease your rights under this Privacy Policy without your voice being heard. We will post any changes in Privacy Policy over here on this page. So keep visiting this page, for getting regular updates on privacy policy.', N'1', CAST(N'2023-08-04T18:20:30.220' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblPrivacyPolicy] OFF
SET IDENTITY_INSERT [dbo].[TblProductMaster] ON 

INSERT [dbo].[TblProductMaster] ([Id], [ProductName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (1, N'Electronic', CAST(N'2023-08-09T18:19:51.240' AS DateTime), CAST(N'2023-08-11T11:46:27.920' AS DateTime), 1, N'', N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblProductMaster] ([Id], [ProductName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (2, N'Fashion', CAST(N'2023-08-09T18:19:51.240' AS DateTime), CAST(N'2023-08-24T11:49:13.540' AS DateTime), 1, N'', N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblProductMaster] ([Id], [ProductName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (3, N'abcd', NULL, CAST(N'2023-08-11T12:42:15.680' AS DateTime), 0, N'', N'1', NULL, 1, N'1', CAST(N'2023-08-16T09:50:36.070' AS DateTime))
INSERT [dbo].[TblProductMaster] ([Id], [ProductName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (4, N'Books', CAST(N'2023-08-17T10:46:07.550' AS DateTime), NULL, 1, N'', NULL, N'1', 0, NULL, NULL)
INSERT [dbo].[TblProductMaster] ([Id], [ProductName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (5, N'Medicine', CAST(N'2023-08-17T10:46:07.550' AS DateTime), NULL, 1, N'', NULL, N'1', 0, NULL, NULL)
INSERT [dbo].[TblProductMaster] ([Id], [ProductName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (6, N'Grocery', CAST(N'2023-08-17T10:46:07.550' AS DateTime), NULL, 1, N'', NULL, N'1', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblProductMaster] OFF
SET IDENTITY_INSERT [dbo].[TblRecharge] ON 

INSERT [dbo].[TblRecharge] ([id], [Image1], [Heading1], [Content1], [Content2], [Content3], [CreateBy], [CreateDate], [UpdateBy], [Updatedate]) VALUES (1, N'~/AdminModule/Images/3014BankitRechargeImage.png', N'Recharge Service', N'You can now get the Prepaid, Postpaid and DTH services recharged for yours customers or Family and earn attractive commission on every transaction.', N'With a vision to empower retailers all over India, including cities and rural areas, we provide retailer app services that are easy-to-use and offer best-in-class.', N'services to your customers, As you provide multi-mobile recharge companies and services quickly at your hand. Not only add essential services to your business but also earn commissions on each recharge, bill payment or other services provided.', N'', CAST(N'2023-08-04T17:57:35.447' AS DateTime), N'', CAST(N'2023-08-24T10:59:33.087' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblRecharge] OFF
SET IDENTITY_INSERT [dbo].[TblServiceMaster] ON 

INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (1, N'Domestic Money Transfer(DMT)', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-08-24T16:17:28.323' AS DateTime), 1, N'Dmt.aspx', N'1', NULL, 0, N'1', CAST(N'2023-08-21T17:28:18.080' AS DateTime))
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (2, N'Aadhar Enabled Payment (AEPS)', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-08-21T17:29:26.473' AS DateTime), 1, N'Aeps.aspx', N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (3, N'PrePaid Card', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-08-24T21:09:56.030' AS DateTime), 0, NULL, N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (4, N'PrePaid Recharge', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-09-08T12:25:33.540' AS DateTime), 1, N'Recharge.aspx', N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (5, N'Bill Payment(BBPS)', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-09-08T12:25:35.690' AS DateTime), 1, N'Bbps.aspx', N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (6, N'Fast Tag', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-09-08T12:25:37.747' AS DateTime), 1, N'FasTag.aspx', N'1', NULL, 0, N'1', CAST(N'2023-08-17T09:58:58.473' AS DateTime))
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (7, N'Micro ATM', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-08-24T21:09:52.343' AS DateTime), 0, NULL, N'1', NULL, 0, N'1', CAST(N'2023-08-17T09:58:46.413' AS DateTime))
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (8, N'Pan Card Center', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-08-24T21:09:50.520' AS DateTime), 0, NULL, N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (9, N'Cash Management Service', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-08-24T21:09:41.270' AS DateTime), 0, NULL, N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (10, N'Aadhar Pay', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-08-24T21:09:42.953' AS DateTime), 0, NULL, N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (11, N'Travel & Stay', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-08-24T21:09:46.057' AS DateTime), 0, NULL, N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (12, N'Safe Gold 1', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-08-24T21:09:48.167' AS DateTime), 0, NULL, N'1', NULL, 0, NULL, NULL)
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (13, N'Credit Card & Lic Payment ', CAST(N'2023-08-07T18:15:06.860' AS DateTime), CAST(N'2023-08-24T21:09:38.797' AS DateTime), 0, NULL, N'1', NULL, 0, N'1', CAST(N'2023-08-17T10:30:22.760' AS DateTime))
INSERT [dbo].[TblServiceMaster] ([Id], [ServiceName], [CreatedDate], [UpdatedDate], [Status], [PageUrl], [UpdatedBy], [CreatedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (14, N'Electronic', NULL, NULL, 0, NULL, NULL, NULL, 1, N'1', CAST(N'2023-08-21T10:21:09.263' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblServiceMaster] OFF
SET IDENTITY_INSERT [dbo].[TblSliderMaster] ON 

INSERT [dbo].[TblSliderMaster] ([id], [sliderImage1], [sliderHeading1], [sliderContent1], [sliderButton1Title1], [sliderButton2Title1], [sliderButton1link1], [sliderButton2link1], [sliderImage2], [sliderHeading2], [sliderContent2], [sliderButton1Title2], [sliderButton2Title2], [sliderButton1link2], [sliderButton2link2], [sliderImage3], [sliderHeading3], [sliderContent3], [sliderButton1Title3], [sliderButton2Title3], [sliderButton1link3], [sliderButton2link3], [createby], [createdate], [updateby], [updatedate], [Slider1Status], [Slider2Status], [Slider3Status]) VALUES (1, N'~/AdminModule/Images/bg5.jpg', N'DMT', N'Domestic Money Transfer', N'', N'', N'Explore More', N'Contact Us', N'~/AdminModule/Images/aeps.jpg', N'AEPS', N'Domestic Money Transfer', N'', N'', N'####$$$$$$$$', N'Contact Us', N'~/AdminModule/Images/bg4.jpg', N'BBPS', N'Bharat Bill Payment System', N'', N'', N'Explore More', N'Learn More', N'', CAST(N'2023-08-04T14:45:17.817' AS DateTime), N'', CAST(N'2023-08-24T15:31:52.410' AS DateTime), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[TblSliderMaster] OFF
SET IDENTITY_INSERT [dbo].[TblTeamMaster] ON 

INSERT [dbo].[TblTeamMaster] ([Id], [Name], [RoleType], [ProfileImg], [SocialMdaLink1], [SocialMdaLink2], [SocialMdaLink3], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdateOn]) VALUES (108, N'Kundan Singh', N'Distributor ', N'~/AdminModule/Images/t1.png', N'', N'', N'', N'1', CAST(N'2023-08-24T11:16:53.193' AS DateTime), NULL, NULL)
INSERT [dbo].[TblTeamMaster] ([Id], [Name], [RoleType], [ProfileImg], [SocialMdaLink1], [SocialMdaLink2], [SocialMdaLink3], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdateOn]) VALUES (102, N'Bittu Yadav', N'Retrailor', N'~/AdminModule/Images/team-3.jpg', N'a', N'b', N'c', N'1', CAST(N'2023-08-04T16:42:12.237' AS DateTime), NULL, NULL)
INSERT [dbo].[TblTeamMaster] ([Id], [Name], [RoleType], [ProfileImg], [SocialMdaLink1], [SocialMdaLink2], [SocialMdaLink3], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdateOn]) VALUES (103, N'Pankaj', N'Retrailor', N'~/AdminModule/Images/team-2.jpg', N'c', N'd', N'e', N'1', CAST(N'2023-08-04T16:43:17.890' AS DateTime), NULL, NULL)
INSERT [dbo].[TblTeamMaster] ([Id], [Name], [RoleType], [ProfileImg], [SocialMdaLink1], [SocialMdaLink2], [SocialMdaLink3], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdateOn]) VALUES (109, N'Mrugon', N'Distributor ', N'~/AdminModule/Images/t3.png', N'', N'', N'', N'1', CAST(N'2023-08-24T11:17:12.050' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblTeamMaster] OFF
SET IDENTITY_INSERT [dbo].[TblTermCondition] ON 

INSERT [dbo].[TblTermCondition] ([Id], [Section1Heading], [Section1content1], [Section1content2], [Section1content3], [Section1content4], [Section1content5], [Section1content6], [Section1content7], [Section1content8], [CreateBy], [CreateOn], [UpdateBy], [UpdateOn]) VALUES (1, N'THIS PAY SERVICES USAGE', N' All the details should be filled by client,', N'Details should be correct.', N'If client has any special request in project then it should be mention in project sheet.', N'Any other work or api integration or feature integration which is not mentioned in project sheet or service agreement will not be considered.', N' Client has to provide his consent on agreement and project sheet before starting the work.', N'Any new feature or service integration or api integration which is not mentioned in project sheet would be chargeable extra.', N'We request our client to coordinate in dedicated support group for any client of technical issues where our technical team is available from 9.30 am to 6.30 pm on all working days.', N'All the issues which is provided in technical support group will be resolve by our team within 24 working hours and this resolution time will be increase in case of any major issue.', N'1', CAST(N'2023-08-04T18:23:28.040' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblTermCondition] OFF
SET IDENTITY_INSERT [dbo].[TblWhyUs] ON 

INSERT [dbo].[TblWhyUs] ([Id], [ImageWhyUs], [ContentFirst], [ContentSecound], [ContentThird], [ContentFouth], [ContentFifth], [ButtonLink], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'~/AdminModule/Images/whyImg.jpg', N'The retailer quarantees the safety of whatever the company pays, your paisa is safe.', N'The company is registered with the Ministry of Corporate Affairs , Government of India', N'Whenever the payment is done from our company''s server, 100% is done successfully.', N'The retailer quarantees the safety of whatever the company pays, your paisa is safe.', N'Whenever the payment is done from our company''s server, 100% is done successfully.', N'About More', N'', CAST(N'2023-08-04T15:57:19.340' AS DateTime), N'', CAST(N'2023-08-24T11:10:36.550' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblWhyUs] OFF
/****** Object:  StoredProcedure [dbo].[sp_Active_DeAcative]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[sp_Active_DeAcative]
@Id int ,
@Status int,
@UpdatedBy varchar(50)
As
 Begin
 UPDATE TblServiceMaster SET Status=@Status, UpdatedBy=@UpdatedBy, UpdatedDate=GETDATE() WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ActiveDeactiveProduct]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_ActiveDeactiveProduct]
@Id int ,
@Status int,
@UpdatedBy varchar(50)
As
 Begin
 UPDATE TblProductMaster SET Status=@Status, UpdatedBy=@UpdatedBy, UpdatedDate=GETDATE() WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_AdminLogin]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_AdminLogin]
 @contactNo varchar(15),
 @password varchar(20)
 as 
 begin 
 select *from TblMainMaster where ContactNo=@contactNo and Password=@password
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_CGetontactmassage]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_CGetontactmassage]
As
Begin
   select *from tblContactmassage
End 
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAboutMaster]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetAboutMaster]
As
Begin
   select *from TblAboutMaster
End 
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAPES]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetAPES]
As
Begin
   select *from TblAPES
End 
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBBPS]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetBBPS]
As
Begin
   select *from TblBBPS
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCommunityMaster]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetCommunityMaster]
As
Begin
   select *from TblCommunityMaster
End 
GO
/****** Object:  StoredProcedure [dbo].[SP_GetContact]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetContact]
As
Begin
   select *from TblContact
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetDMT]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetDMT]
As
Begin
   select *from TblDMT
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetHomeSection3]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetHomeSection3]
As
Begin
   select *from HomeSection3
End 
GO
/****** Object:  StoredProcedure [dbo].[SP_GetHomeSection4]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetHomeSection4]
As
Begin
   select *from HomeSection4
End 
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMainMaster]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetMainMaster]
As
Begin
   select *from TblMainMaster
End 
GO
/****** Object:  StoredProcedure [dbo].[SP_GetOurMission]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetOurMission]
As
Begin
   select *from TblOurMission
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPrivacyPolicy]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetPrivacyPolicy]
As
Begin
   select *from TblPrivacyPolicy
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProductData]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetProductData]
As
Begin
	Select * from TblProductMaster where Status=1 and IsDeleted=0
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRecharge]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetRecharge]
As
Begin
   select *from TblRecharge
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetServiceData]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetServiceData]
As
Begin
	Select * from TblServiceMaster where Status=1 and IsDeleted=0
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSliderMaster]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetSliderMaster]
As
Begin
	SELECT * From TblSliderMaster
End
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetTblFasTag]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_GetTblFasTag]
As
Begin
	Select * from TblFasTag
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTeamMaster]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTeamMaster]
As
Begin
   select *from TblTeamMaster
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTermCondition]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTermCondition]
As
Begin
   select *from TblTermCondition
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetWhyUs]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetWhyUs]
As
Begin
   select *from TblWhyUs
End
GO
/****** Object:  StoredProcedure [dbo].[SP_HomeSection3]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc  [dbo].[SP_HomeSection3]
  @Div1image varchar(200),
  @Div2image varchar(200),
  @Div3image varchar (200),
  @Div4image varchar (200),
  @Div5image varchar (200),
  @Div6image varchar (200),
  @Section3Heading varchar(100),
  @Section3content varchar(250),
  @Div1Heading  varchar(100),
  @Div1content varchar(200),
  @Div2heading varchar (100),
  @Div2content varchar(200),
  @Div3heading varchar (100),
  @Div3content varchar(200),
  @Div4heading varchar (100),
  @Div4content varchar(200),
  @Div5heading varchar (100),
  @Div5content varchar(200),
  @Div6heading varchar (100),
  @Div6content varchar(200),
  @CreateBy varchar(10),
  @Updateby varchar(10)
  as 
  begin
  if not exists (Select *from HomeSection3)
  insert into HomeSection3(Div1image,Div2image,Div3image,Div4image, Div5image,Div6image,Section3Heading, Section3content,Div1Heading, Div1content, Div2heading,Div2content,Div3heading,Div3content,Div4heading ,Div4content,Div5heading ,Div5content,Div6heading ,Div6content,  CreateBy,CreateOn)values (@Div1image,@Div2image,@Div3image,@Div4image,@Div5image,@Div6image, @Section3Heading, @Section3content,@Div1Heading, @Div1content, @Div2heading,@Div2content,@Div3heading,@Div3content,@Div4heading ,@Div4content,@Div5heading ,@Div5content,@Div6heading ,@Div6content, @CreateBy,GetDate())
  else 
  begin
  update HomeSection3 set Div1image=@Div1image,Div2image=@Div2image,Div3image=@Div3image,Div4image=@Div4image,Div5image=@Div5image,Div6image=@Div6image,Section3Heading=@Section3Heading,Section3content=@Section3content,Div1Heading=@Div1Heading, Div1content=@Div1content, Div2heading=@Div2heading,Div2content=@Div2content,Div3heading=@Div3heading,Div3content=@Div3content,Div4heading=@Div4heading ,Div4content=@Div4content,Div5heading=@Div5heading ,Div5content=@Div5content,Div6heading=@Div6heading ,Div6content=@Div6content,Updateby=@Updateby,UpdateOn=GetDate()
  end
  end
GO
/****** Object:  StoredProcedure [dbo].[Sp_HomeSection4]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Sp_HomeSection4]
  @Div1image varchar(200),
  @Div2image varchar(200),
  @Div3image varchar (200),
  @Section4Heading varchar(100),
  @Div1heading varchar (100),
  @Div1Content varchar (200),
  @Div2heading varchar (100),
  @Div2Content varchar (200),
  @Div3heading varchar (100),
  @Div3Content varchar (200),
  @CreateBy varchar(10)=null,
  @UpdateBy varchar(10)=null
  as 
  begin
  if not exists (Select *from HomeSection4)
  insert into HomeSection4(Div1image,Div2image,Div3image,Section4Heading,Div1heading,Div1Content,Div2heading,Div2Content,Div3heading,Div3Content,CreateBy,CreateOn)values(@Div1image,@Div2image,@Div3image,@Section4Heading,@Div1heading,@Div1Content,@Div2heading,@Div2Content,@Div3heading,@Div3Content,@CreateBy,GetDate())
  else 
  begin 
  update HomeSection4 set  Div1image=@Div1image,Div2image=@Div2image,Div3image=@Div3image,Section4Heading=@Section4Heading,Div1heading=@Div1heading,Div1Content=@Div1Content,Div2heading=@Div2heading,Div2Content=@Div2Content,Div3heading=@Div3heading,Div3Content=@Div3Content,UpdateBy=@UpdateBy,UpdateOn=GetDate()
  end 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertUpdateSlider]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_InsertUpdateSlider]
@sliderImage1 varchar(max),
@sliderHeading1 varchar(100),
@sliderContent1 varchar(250),
@sliderButton1Title1 varchar(100),
@sliderButton2Title1 varchar(100),
@sliderButton1link1 varchar(max),
@sliderButton2link1 varchar(max),
@sliderImage2 varchar(max),
@sliderHeading2 varchar(100),
@sliderContent2 varchar(250),
@sliderButton1Title2 varchar(100),
@sliderButton2Title2 varchar(100),
@sliderButton1link2 varchar(max),
@sliderButton2link2 varchar(max),
@sliderImage3 varchar(max),
@sliderHeading3 varchar(100),
@sliderContent3 varchar(250),
@sliderButton1Title3 varchar(100),
@sliderButton2Title3 varchar(100),
@sliderButton1link3 varchar(max),
@sliderButton2link3 varchar(max),
@createby varchar(50),
@updateby varchar(50)
As
Begin
	if Not Exists(select * from TblSliderMaster)
	Begin
		INSERT INTO TblSliderMaster(
		sliderImage1,sliderHeading1,sliderContent1,sliderButton1Title1,sliderButton2Title1,sliderButton1link1,sliderButton2link1,
		sliderImage2,sliderHeading2,sliderContent2,sliderButton1Title2,sliderButton2Title2,sliderButton1link2,sliderButton2link2,
		sliderImage3,sliderHeading3,sliderContent3,sliderButton1Title3,sliderButton2Title3,sliderButton1link3,sliderButton2link3,
		createby,createdate) VALUES(
		@sliderImage1,@sliderHeading1,@sliderContent1,@sliderButton1Title1,@sliderButton2Title1,@sliderButton1link1,@sliderButton2link1,
		@sliderImage2,@sliderHeading2,@sliderContent2,@sliderButton1Title2,@sliderButton2Title2,@sliderButton1link2,@sliderButton2link2,
		@sliderImage3,@sliderHeading3,@sliderContent3,@sliderButton1Title3,@sliderButton2Title3,@sliderButton1link3,@sliderButton2link3,
		@createby,GETDATE())
	End
	else
	Begin
		UPDATE TblSliderMaster SET
		sliderImage1=isNull(@sliderImage1 , sliderImage1),sliderHeading1=ISNULL(@sliderHeading1,sliderHeading1),
		sliderContent1=isNull(@sliderContent1 , sliderContent1),sliderButton1Title1=ISNULL(@sliderButton1Title1,sliderButton1Title1),
		sliderButton2Title1=isNull(@sliderButton2Title1 , sliderButton2Title1),sliderButton1link1=ISNULL(@sliderButton1link1,sliderButton1link1),
		sliderButton2link1=isNull(@sliderButton2link1 , sliderButton2link1),
		sliderImage2=isNull(@sliderImage2 , sliderImage2),sliderHeading2=ISNULL(@sliderHeading2,sliderHeading2),
		sliderContent2=isNull(@sliderContent2 , sliderContent2),sliderButton1Title2=ISNULL(@sliderButton1Title2,sliderButton1Title2),
		sliderButton2Title2=isNull(@sliderButton2Title2 , sliderButton2Title2),sliderButton1link2=ISNULL(@sliderButton1link2,sliderButton1link2),
		sliderButton2link2=isNull(@sliderButton2link2 , sliderButton2link2),
		sliderImage3=isNull(@sliderImage3 , sliderImage3),sliderHeading3=ISNULL(@sliderHeading3,sliderHeading3),
		sliderContent3=isNull(@sliderContent3 , sliderContent3),sliderButton1Title3=ISNULL(@sliderButton1Title3,sliderButton1Title3),
		sliderButton2Title3=isNull(@sliderButton2Title3 , sliderButton2Title3),sliderButton1link3=ISNULL(@sliderButton1link3,sliderButton1link3),
		sliderButton2link3=isNull(@sliderButton2link3 , sliderButton2link3),
		updateby=isNull(@updateby, updateby), updatedate=GETDATE()
	End
End
GO
/****** Object:  StoredProcedure [dbo].[SP_MainMaster]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_MainMaster]      
  @OwnerName varcHAR (100),      
  @ComapanyName varchar(200),      
  @DomainName varchar (200),      
  @CompanyPan varchar (20),      
  @CompanyAdharNo varchar (15),      
  @CompanyCertificate varchar(max),      
  @ContactNo varchar (15),      
  @ConatactEmail varchar(200),      
  @CompanyAddress Varchar(200),      
  @SupportContactNo varchar (15),      
  @SupportEmaild  varchar (200),      
  @ComapnyLogo varchar (max),      
      
  @CreateBy varchar (100),      
       
  @UpdateBy varchar (100),      
  @ApkLink  varchar(max),      
  @LoginLink varchar (max),      
  @InstagramLink varchar (max),      
  @FacebookLink varchar (max),      
  @TwitterLink varchar (max),      
  @LinkdinLink Varchar (max),      
  @WhatsappLink Varchar(max),
  @FoEmailSectionimg varchar(300)
  
  as       
  begin      
  if not exists (select *from TblMainMaster)      
  insert into TblMainMaster (OwnerName,ComapanyName,DomainName,CompanyPan,CompanyAdharNo,CompanyCertificate,ContactNo,ConatactEmail,CompanyAddress,SupportContactNo,SupportEmaild,ComapnyLogo,CreateBy,CreateOn,ApkLink,LoginLink,InstagramLink,FacebookLink
					,TwitterLink,LinkdinLink,WhatsappLink,FoEmailSectionimg)values      
  (@OwnerName,@ComapanyName,@DomainName,@CompanyPan,@CompanyAdharNo,@CompanyCertificate,@ContactNo,@ConatactEmail,@CompanyAddress,@SupportContactNo,@SupportEmaild,@ComapnyLogo,@CreateBy,GETDATE(),@ApkLink,@LoginLink,@InstagramLink,@FacebookLink,@TwitterLink,@LinkdinLink,@WhatsappLink,@FoEmailSectionimg)      
        
  else       
  begin      
  update TblMainMaster set OwnerName=@OwnerName,ComapanyName=@ComapanyName,DomainName=@DomainName,CompanyPan=@CompanyPan,CompanyAdharNo=@CompanyAdharNo,      
  CompanyCertificate=@CompanyCertificate,ContactNo=@ContactNo,ConatactEmail=@ConatactEmail,CompanyAddress=@CompanyAddress,SupportContactNo=@SupportContactNo,SupportEmaild=@SupportEmaild,ComapnyLogo=@ComapnyLogo,UpdateBy=@UpdateBy,UpdateOn=getdate(),      
  ApkLink=@ApkLink,LoginLink=@LoginLink,InstagramLink=@InstagramLink,FacebookLink=@FacebookLink,TwitterLink=@TwitterLink,LinkdinLink=@LinkdinLink,WhatsappLink=@WhatsappLink,FoEmailSectionimg=@FoEmailSectionimg    
  end     
  end
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductDelete]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_ProductDelete]
@Id int ,
@DeletedBy varchar(50),
@Status int,
@IsDeleted int
As
 Begin
 UPDATE TblProductMaster SET  DeletedBy=@DeletedBy ,DeletedDate=GETDATE(), Status=@Status, IsDeleted=@IsDeleted WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductUpdate]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[SP_ProductUpdate]
@Id int ,
@ProductName varchar(100),
@UpdatedBy varchar(50)
As
 Begin
 UPDATE TblProductMaster SET ProductName=@ProductName, UpdatedBy=@UpdatedBy ,UpdatedDate=GETDATE() WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ServiceDelete]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[sp_ServiceDelete]
@Id int ,
@DeletedBy varchar(50),
@Status int,
@IsDeleted int
As
 Begin
 UPDATE TblServiceMaster SET  DeletedBy=@DeletedBy ,DeletedDate=GETDATE(), Status=@Status, IsDeleted=@IsDeleted WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ServiceUpdate]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[sp_ServiceUpdate]
@Id int ,
@ServiceName varchar(100),
@UpdatedBy varchar(50)
As
 Begin
 UPDATE TblServiceMaster SET ServiceName=@ServiceName, UpdatedBy=@UpdatedBy ,UpdatedDate=GETDATE() WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Slider1tUpdate]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_Slider1tUpdate]
@sliderImage1 varchar(max),
@sliderHeading1 varchar(100),
@sliderContent1 varchar(250),
@sliderButton1Title1 varchar(100),
@sliderButton2Title1 varchar(100),
@sliderButton1link1 varchar(max),
@sliderButton2link1 varchar(max),
@createby varchar(50),
@updateby varchar(50)
As
Begin
	if Not Exists(select * from TblSliderMaster)
	Begin
		INSERT INTO TblSliderMaster(
		sliderImage1,sliderHeading1,sliderContent1,sliderButton1Title1,sliderButton2Title1,sliderButton1link1,sliderButton2link1,
		createby,createdate) VALUES(
		@sliderImage1,@sliderHeading1,@sliderContent1,@sliderButton1Title1,@sliderButton2Title1,@sliderButton1link1,@sliderButton2link1,
		@createby,GETDATE())
	End
	else
	Begin
		UPDATE TblSliderMaster SET
		sliderImage1=isNull(@sliderImage1 , sliderImage1),sliderHeading1=ISNULL(@sliderHeading1,sliderHeading1),
		sliderContent1=isNull(@sliderContent1 , sliderContent1),sliderButton1Title1=ISNULL(@sliderButton1Title1,sliderButton1Title1),
		sliderButton2Title1=isNull(@sliderButton2Title1 , sliderButton2Title1),sliderButton1link1=ISNULL(@sliderButton1link1,sliderButton1link1),
		sliderButton2link1=isNull(@sliderButton2link1 , sliderButton2link1),
		updateby=isNull(@updateby, updateby), updatedate=GETDATE()
	End
End
GO
/****** Object:  StoredProcedure [dbo].[SP_Slider2Update]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_Slider2Update]
@sliderImage2 varchar(max),
@sliderHeading2 varchar(100),
@sliderContent2 varchar(250),
@sliderButton1Title2 varchar(100),
@sliderButton2Title2 varchar(100),
@sliderButton1link2 varchar(max),
@sliderButton2link2 varchar(max),
@createby varchar(50),
@updateby varchar(50)
As
Begin
	if Not Exists(select * from TblSliderMaster)
	Begin
		INSERT INTO TblSliderMaster(
		sliderImage2,sliderHeading2,sliderContent2,sliderButton1Title2,sliderButton2Title2,sliderButton1link2,sliderButton2link2,
		createby,createdate) VALUES(
		@sliderImage2,@sliderHeading2,@sliderContent2,@sliderButton1Title2,@sliderButton2Title2,@sliderButton1link2,@sliderButton2link2,
		@createby,GETDATE())
	End
	else
	Begin
		UPDATE TblSliderMaster SET
		sliderImage2=isNull(@sliderImage2 , sliderImage2),sliderHeading2=ISNULL(@sliderHeading2,sliderHeading2),
		sliderContent2=isNull(@sliderContent2 , sliderContent2),sliderButton1Title2=ISNULL(@sliderButton1Title2,sliderButton1Title2),
		sliderButton2Title2=isNull(@sliderButton2Title2 , sliderButton2Title2),sliderButton1link2=ISNULL(@sliderButton1link2,sliderButton1link2),
		sliderButton2link2=isNull(@sliderButton2link2 , sliderButton2link2),
		updateby=isNull(@updateby, updateby), updatedate=GETDATE()
	End
End
GO
/****** Object:  StoredProcedure [dbo].[SP_Slider3Update]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_Slider3Update]
@sliderImage3 varchar(max),
@sliderHeading3 varchar(100),
@sliderContent3 varchar(250),
@sliderButton1Title3 varchar(100),
@sliderButton2Title3 varchar(100),
@sliderButton1link3 varchar(max),
@sliderButton2link3 varchar(max),
@createby varchar(50),
@updateby varchar(50)
As
Begin
	if Not Exists(select * from TblSliderMaster)
	Begin
		INSERT INTO TblSliderMaster(
		sliderImage3,sliderHeading3,sliderContent3,sliderButton1Title3,sliderButton2Title3,sliderButton1link3,sliderButton2link3,
		createby,createdate) VALUES(
		@sliderImage3,@sliderHeading3,@sliderContent3,@sliderButton1Title3,@sliderButton2Title3,@sliderButton1link3,@sliderButton2link3,
		@createby,GETDATE())
	End
	else
	Begin
		UPDATE TblSliderMaster SET
		sliderImage3=isNull(@sliderImage3 , sliderImage3),sliderHeading3=ISNULL(@sliderHeading3,sliderHeading3),
		sliderContent3=isNull(@sliderContent3 , sliderContent3),sliderButton1Title3=ISNULL(@sliderButton1Title3,sliderButton1Title3),
		sliderButton2Title3=isNull(@sliderButton2Title3 , sliderButton2Title3),sliderButton1link3=ISNULL(@sliderButton1link3,sliderButton1link3),
		sliderButton2link3=isNull(@sliderButton2link3 , sliderButton2link3),
		updateby=isNull(@updateby, updateby), updatedate=GETDATE()
	End
End
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblAadharPay]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblAadharPay]  
@Image1 varchar(200),  
@Image2 varchar(200),  
  
@Heading1 varchar(100),  
@Heading2 varchar(100),  
  
@Content1 varchar(300),  
  
@Paragraph1 varchar(300),  
@Paragraph2 varchar(300),  
@Paragraph3 varchar(300),  
@Paragraph4 varchar(300),  
@Paragraph5 varchar(300),  
@Buttonlink varchar(max),  
@Buttontittle varchar(50),  
@CreateBy varchar(10)=null,  
@UpdateBy varchar(10)=null  
as   
begin  
if not exists (select *from TblAadharPay)  
begin   
insert into TblAadharPay(Image1,Image2,Heading1,Heading2,Content1,Paragraph1,Paragraph2,Paragraph3,Paragraph4,Paragraph5,Buttonlink,Buttontittle,CreateBy,CreateDate)values(@Image1,@Image2,@Heading1,@Heading2,@Content1,@Paragraph1,@Paragraph2,@Paragraph3,@Paragraph4,@Paragraph5,@Buttonlink,@Buttontittle,@CreateBy,GetDate())  
end  
else  
begin  
update TblAadharPay set Image1=@Image1,Image2=@Image2,Heading1=@Heading1,Heading2=@Heading2,Content1=@Content1,Paragraph1=@Paragraph1,Paragraph2=@Paragraph2,Paragraph3=@Paragraph3,Paragraph4=@Paragraph4,Paragraph5=@Paragraph5,Buttonlink=@Buttonlink,Buttontittle=@Buttontittle,UpdateBy=@UpdateBy,Updatedate=GETDATE();  
end  
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblAadharPayGet]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblAadharPayGet]  
as  
begin  
select *from TblAadharPay  
end  
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblAboutMaster]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_TblAboutMaster] 
    
   @image varchar(max),    
   @Content1 Varchar(max),    
   @content2 varchar(max),    
   @Heading varchar (80),    
   @ButtonLink varchar (mAX ),    
   @buttontitile varchar (20),    
   @CreateBy varchar (20)=null,     
   @UpdateBy varchar(20)=null    
  as     
  Begin     
  if Not Exists (select *from  TblAboutMaster)    
  begin     
  insert into TblAboutMaster(image,Content1,content2,Heading,ButtonLink,buttontitile,CreateBy,CreateDate) values(@image,@Content1,@content2,@Heading,@ButtonLink,@buttontitile,@CreateBy,GETDATE())    
  end     
  else     
  begin     
  update TblAboutMaster set image=@image,Content1=@content1,Content2=@Content1,Heading=@Heading,ButtonLink=@ButtonLink, buttontitile=@UpdateBy,updateDate=GETDATE();    
  end    
  end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblAEPS]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblAEPS]
@Image1 varchar(200),
@Image2 varchar(200),
@Image3 varchar(200),
@Heading1 varchar(100),
@Heading2 varchar(100),
@Heading3 varchar(100),
@Content1 varchar(300),
@Content2 varchar(300),
@Content3 varchar(300),
@Paragraph1 varchar(300),
@Paragraph2 varchar(300),
@Paragraph3 varchar(300),
@Buttonlink varchar(max),
@Buttontittle varchar(50),
@CreateBy varchar(10)=null,
@UpdateBy varchar(10)=null
as 
begin
if not exists (select *from TblAPES)
begin 
insert into TblAPES(Image1,Image2,Image3,Heading1,Heading2,Heading3,Content1,Content2,Content3,Paragraph1,Paragraph2,Paragraph3,Buttonlink,Buttontittle,CreateBy,CreateDate)values(@Image1,@Image2,@Image3,@Heading1,@Heading2,@Heading3,@Content1,@Content2,@Content3,@Paragraph1,@Paragraph2,@Paragraph3,@Buttonlink,@Buttontittle,@CreateBy,GetDate())
end
else
begin
update TblAPES set Image1=@Image1,Image2=@Image2,Image3=@Image3,Heading1=@Heading1,Heading2=@Heading2,Heading3=@Heading3,Content1=@Content1,Content2=@Content2,Content3=@Content3,Paragraph1=@Paragraph1,Paragraph2=@Paragraph2,Paragraph3=@Paragraph3,Buttonlink=@Buttonlink,Buttontittle=@Buttontittle,UpdateBy=@UpdateBy,Updatedate=GETDATE();
end
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblBBPS]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblBBPS]
@Image1 varchar(200),
@Heading1 varchar(100),
@Content1 varchar(300),
@Paragraph1 varchar(300),
@Paragraph2 varchar(300),
@Paragraph3 varchar(300),
@Paragraph4 varchar(300),
@CreateBy varchar(10)=null,
@UpdateBy varchar(10)=null
as 
begin
if not exists (select *from TblBBPS)
begin 
insert into TblBBPS(Image1,Heading1,Content1,Paragraph1,Paragraph2,Paragraph3,Paragraph4,CreateBy,CreateDate)values(@Image1,@Heading1,@Content1,@Paragraph1,@Paragraph2,@Paragraph3,@Paragraph4,@CreateBy,GetDate())
end
else
begin
update TblBBPS set Image1=@Image1,Heading1=@Heading1,Content1=@Content1,Paragraph1=@Paragraph1,Paragraph2=@Paragraph2,Paragraph3=@Paragraph3,Paragraph4=@Paragraph4,UpdateBy=@UpdateBy,Updatedate=GETDATE();
end
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblCashManagement]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblCashManagement]  
@Image1 varchar(200),  
@Image2 varchar(200),  
  
@Heading1 varchar(100),  
@Heading2 varchar(100),  
  
@Content1 varchar(300),  
@Content2 varchar(300),  
  
  
@Buttonlink varchar(max),  
@Buttontittle varchar(50),  
@CreateBy varchar(10)=null,  
@UpdateBy varchar(10)=null  
as   
begin  
if not exists (select *from TblCashManagement)  
begin   
insert into TblCashManagement(Image1,Image2,Heading1,Heading2,Content1,Content2,Buttonlink,Buttontittle,CreateBy,CreateDate)values(@Image1,@Image2,@Heading1,@Heading2,@Content1,@Content2,@Buttonlink,@Buttontittle,@CreateBy,GetDate())  
end  
else  
begin  
update TblCashManagement set Image1=@Image1,Image2=@Image2,Heading1=@Heading1,Heading2=@Heading2,Content1=@Content1,Content2=@Content2,Buttonlink=@Buttonlink,Buttontittle=@Buttontittle,UpdateBy=@UpdateBy,Updatedate=GETDATE();  
end  
end   
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblCashManagementGet]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblCashManagementGet]  
as  
begin  
select *from TblCashManagement  
end  
GO
/****** Object:  StoredProcedure [dbo].[SP_TblCommunityMaster]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_TblCommunityMaster]
@communityimage1 varchar (max),      
@communityimage2 varchar (max),      
@communityimage3 varchar (max),      
     
@heading varchar (30),      
@content varchar (max),      
@buttonlink varchar (max),      
@buttontittle varchar (50),      
@createdateby varchar (20)=null,      
      
@updateby varchar (20)=null      
      
as      
            
begin       
if not exists (select *from TblCommunityMaster)      
begin                
insert into TblCommunityMaster(communityimage1,communityimage2,communityimage3,heading,content,buttonlink,buttontittle,createdateby,createdate)values(@communityimage1,@communityimage2,@communityimage3,@heading,@content,@buttonlink,@buttontittle,@createdateby,GETDATE())      
end       
else       
begin       
update TblCommunityMaster set communityimage1=@communityimage1,communityimage2=@communityimage2,communityimage3=@communityimage3,heading=@heading,content=@content,buttonlink=@buttonlink,buttontittle=@buttontittle,updateby=@updateby,updatedate=getdate()      
end      
end
GO
/****** Object:  StoredProcedure [dbo].[SP_TblContact]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_TblContact]
 @Section1image varchar(200),
 @Section1heading varchar(100),
 @Section1content varchar(300),
 @CrateBy Varchar (10),
 @UpdateBy varchar (10)
 as 
 begin 
 if not exists (select *from TblContact)
 insert into TblContact(Section1image,Section1heading,Section1content,CrateBy,CreateOn)values(@Section1image,@Section1heading,@Section1content,@CrateBy,GETDATE())
 else
 begin
 update TblContact set Section1image=@Section1image,Section1heading=@Section1heading,Section1content=@Section1content,UpdateBy=@UpdateBy,UpdateOn=getDate()
 end
 end 
GO
/****** Object:  StoredProcedure [dbo].[SP_tblContactmassage]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_tblContactmassage]
  @name varchar(100),
  @email varchar(200),
  @Message varchar(300)
as
begin
  insert into tblContactmassage(name,email,message,smsdate)values(@name,@email,@Message,getDate())
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblCreateCardLic]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblCreateCardLic]  
@Image1 varchar(200),  
@Image2 varchar(200),  
  
@Heading1 varchar(100),  
@Heading2 varchar(100),  
  
@Content1 varchar(300),  
  
  
@Buttonlink varchar(max),  
@Buttontittle varchar(50),  
@CreateBy varchar(10)=null,  
@UpdateBy varchar(10)=null  
as   
begin  
if not exists (select *from TblCreateCardLic)  
begin   
insert into TblCreateCardLic(Image1,Image2,Heading1,Heading2,Content1,Buttonlink,Buttontittle,CreateBy,CreateDate)values(@Image1,@Image2,@Heading1,@Heading2,@Content1,@Buttonlink,@Buttontittle,@CreateBy,GetDate())  
end  
else  
begin  
update TblCreateCardLic set Image1=@Image1,Image2=@Image2,Heading1=@Heading1,Heading2=@Heading2,Content1=@Content1,Buttonlink=@Buttonlink,Buttontittle=@Buttontittle,CreateBy=@CreateBy,CreateDate=GETDATE()  
end  
end   
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblCreateCardLicGet]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblCreateCardLicGet]  
as  
begin  
select *from TblCreateCardLic  
end  
GO
/****** Object:  StoredProcedure [dbo].[SP_TblDMT]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_TblDMT]
@Image1 varchar(200),
@Heading1 varchar(100),
@Content1 varchar(300),
@Content2 varchar(300),
@Content3 varchar(300),
@Content4 varchar(300),
@CreateBy varchar(10)=null,
@UpdateBy varchar(10)=null
as 
begin
if not exists (select *from TblDMT)
begin 
insert into TblDMT(Image1,Heading1,Content1,Content2,Content3,Content4,CreateBy,CreateDate)values(@Image1,@Heading1,@Content1,@Content2,@Content3,@Content4,@CreateBy,GetDate())
end
else
begin
update TblDMT set Image1=@Image1,Heading1=@Heading1,Content1=@Content1,Content2=@Content2,Content3=@Content3,Content4=@Content4,UpdateBy=@UpdateBy,Updatedate=GETDATE();
end
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblFasTag]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_TblFasTag]
@Image1 varchar(200),
@Image2 varchar(200),
@Image3 varchar(200),
@Heading1 varchar(100),
@Heading2 varchar(100),
@Heading3 varchar(100),
@Content1 varchar(300),
@Content2 varchar(300),
@Content3 varchar(300),

@Buttonlink varchar(max),
@Buttontittle varchar(50),
@CreateBy varchar(10)=null,
@UpdateBy varchar(10)=null
as 
begin
if not exists (select *from TblFasTag)
begin 
insert into TblFasTag(Image1,Image2,Image3,Heading1,Heading2,Heading3,Content1,Content2,Content3,Buttonlink,Buttontittle,CreateBy,CreateDate)values(@Image1,@Image2,@Image3,@Heading1,@Heading2,@Heading3,@Content1,@Content2,@Content3,@Buttonlink,@Buttontittle,@CreateBy,GetDate())
end
else
begin
update TblFasTag set Image1=@Image1,Image2=@Image2,Image3=@Image3,Heading1=@Heading1,Heading2=@Heading2,Heading3=@Heading3,Content1=@Content1,Content2=@Content2,Content3=@Content3,Buttonlink=@Buttonlink,Buttontittle=@Buttontittle,UpdateBy=@UpdateBy,Updatedate=GETDATE();
end
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblMicroATM]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblMicroATM]  
@Image1 varchar(200),  
@Image2 varchar(200),  
  
@Heading1 varchar(100),  
@Heading2 varchar(100),  
  
@Content1 varchar(300),  
@Content2 varchar(300),  
  
@Buttonlink varchar(max),  
@Buttontittle varchar(50),  
@CreateBy varchar(10)=null,  
@UpdateBy varchar(10)=null  
as   
begin  
if not exists (select *from TblMicroATM)  
begin   
insert into TblMicroATM(Image1,Image2,Heading1,Heading2,Content1,Content2,Buttonlink,Buttontittle,CreateBy,CreateDate)values(@Image1,@Image2,@Heading1,@Heading2,@Content1,@Content2,@Buttonlink,@Buttontittle,@CreateBy,GetDate())  
end  
else  
begin  
update TblMicroATM set Image1=@Image1,Image2=@Image2,Heading1=@Heading1,Heading2=@Heading2,Content1=@Content1,Content2=@Content2,Buttonlink=@Buttonlink,Buttontittle=@Buttontittle,UpdateBy=@UpdateBy,Updatedate=GETDATE();  
end  
end   
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblMicroATMGet]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblMicroATMGet]  
as  
begin  
select *from TblMicroATM  
end
GO
/****** Object:  StoredProcedure [dbo].[SP_TblOurMission]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_TblOurMission]
 @ContentFirst varchar(200),
 @ContentSecond varchar(150),
 @IamgeOurMission varchar(200),
 @CreateBy varchar(10)=null,
 @UpdateBy varchar(10)=null
 as
 begin 
 if not exists (select *from TblOurMission)
 begin 
 insert into TblOurMission(ContentFirst,ContentSecond,IamgeOurMission,CreateBy,CreateDate)values (@ContentFirst,@ContentSecond,@IamgeOurMission,@CreateBy,GETDATE())
 end 
 else 
 begin
 update  TblOurMission  set ContentFirst=@ContentFirst,ContentSecond=@ContentSecond,IamgeOurMission=@IamgeOurMission ,UpdateBy=@UpdateBy,UpdateDate=GETDATE()
 end
 end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblPanCardService]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblPanCardService]
@Image1 varchar(200),  
@Image2 varchar(200),  
@Image3 varchar(200),  
@Heading1 varchar(100),  
@Heading2 varchar(100),  
@Heading3 varchar(100),  
@Content1 varchar(300),  
@Content2 varchar(300),  
  
@Paragraph1 varchar(300),  
@Paragraph2 varchar(300),  
@Paragraph3 varchar(300),  
@Paragraph4 varchar(300),  
@Buttonlink varchar(max),  
@Buttontittle varchar(50),  
@CreateBy varchar(10)=null,  
@UpdateBy varchar(10)=null  
as   
begin  
if not exists (select *from TblPanCardService)  
begin   
insert into TblPanCardService(Image1,Image2,Image3,Heading1,Heading2,Heading3,Content1,Content2,Paragraph1,Paragraph2,Paragraph3,Paragraph4,Buttonlink,Buttontittle,CreateBy,CreateDate)values(@Image1,@Image2,@Image3,@Heading1,@Heading2,@Heading3,@Content1,
@Content2,@Paragraph1,@Paragraph2,@Paragraph3,@Paragraph4,@Buttonlink,@Buttontittle,@CreateBy,GetDate())  
end  
else  
begin  
update TblPanCardService set Image1=@Image1,Image2=@Image2,Image3=@Image3,Heading1=@Heading1,Heading2=@Heading2,Heading3=@Heading3,Content1=@Content1,Content2=@Content2,Paragraph1=@Paragraph1,Paragraph2=@Paragraph2,Paragraph3=@Paragraph3,Paragraph4=@Paragraph4
,Buttonlink=@Buttonlink,Buttontittle=@Buttontittle,UpdateBy=@UpdateBy,Updatedate=GETDATE();  
end  
end   
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblPanCardServiceGet]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblPanCardServiceGet]  
as  
begin  
select *from TblPanCardService  
end  
GO
/****** Object:  StoredProcedure [dbo].[SP_TblPrivacyPolicy]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_TblPrivacyPolicy]  
@Section1Heading varchar(300),  
@Section1para varchar (max),  
@Section2heading varchar(300),  
@Section2para1 varchar(max),  
@Section2para2 varchar(max),  
@Section2para3 varchar(max),  
@Section2para4 varchar(max),  
@Section2para5 varchar(max),  
@Section2para6 varchar(max),  
@Section2para7 varchar(max),  
@Section2para8 varchar(max),  
@Section3heading varchar(300),  
@Section3para varchar (max),  
@Section4heading varchar(300),  
@Section4para varchar (max),  
@Section5heading varchar (300),  
@Section5para varchar (max),  
@CreateBy varchar (10),  
@UpdateBy varchar (10)  
as   
begin  
if not exists (select *from  TblPrivacyPolicy)  
insert into TblPrivacyPolicy(Section1Heading,Section1para ,Section2heading ,Section2para1 ,Section2para2 ,Section2para3 ,Section2para4 ,Section2para5 ,Section2para6 ,Section2para7 ,Section2para8 ,Section3heading ,Section3para ,Section4heading ,Section4para,Section5heading,Section5para ,CreateBy ,CreateOn)  
values (@Section1Heading,@Section1para ,@Section2heading ,@Section2para1 ,@Section2para2 ,@Section2para3 ,@Section2para4 ,@Section2para5 ,@Section2para6 ,@Section2para7 ,@Section2para8 ,@Section3heading ,@Section3para ,@Section4heading ,@Section4para,@Section5heading,@Section5para ,@CreateBy ,GETDATE())  
else   
begin  
update TblPrivacyPolicy set Section1Heading=@Section1Heading,Section1para=@Section1para,Section2heading=@Section2heading,Section2para1=@Section2para1 ,Section2para2=@Section2para2 ,Section2para3=@Section2para3 ,Section2para4=@Section2para4 ,Section2para5=
@Section2para5 ,Section2para6 =@Section2para6,Section2para7=@Section2para7 ,Section2para8=@Section2para8 ,Section3heading=@Section3heading ,Section3para=@Section3para ,Section4heading=@Section4heading ,Section4para=@Section4para,Section5heading=@Section5heading
,Section5para=@Section5para ,UpdateBy=@UpdateBy,UpdateoN=gETdATE()  
end  
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblRecharge]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblRecharge]
@Image1 varchar(200),
@Heading1 varchar(100),
@Content1 varchar(300),
@Content2 varchar(300),
@Content3 varchar(300),
@CreateBy varchar(10)=null,
@UpdateBy varchar(10)=null
as 
begin
if not exists (select *from TblRecharge)
begin 
insert into TblRecharge(Image1,Heading1,Content1,Content2,Content3,CreateBy,CreateDate)values(@Image1,@Heading1,@Content1,@Content2,@Content3,@CreateBy,GetDate())
end
else
begin
update TblRecharge set Image1=@Image1,Heading1=@Heading1,Content1=@Content1,Content2=@Content2,Content3=@Content3,UpdateBy=@UpdateBy,Updatedate=GETDATE();
end
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblSafeGold]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblSafeGold]  
@Image1 varchar(200),  
@Image2 varchar(200),  
  
@Heading1 varchar(100),  
@Heading2 varchar(100),  
  
@Content1 varchar(300),  
@Content2 varchar(300),  
  
  
@Buttonlink varchar(max),  
@Buttontittle varchar(50),  
@CreateBy varchar(10)=null,  
@UpdateBy varchar(10)=null  
as   
begin  
if not exists (select *from TblSafeGold)  
begin   
insert into TblSafeGold(Image1,Image2,Heading1,Heading2,Content1,Content2,Buttonlink,Buttontittle,CreateBy,CreateDate)values(@Image1,@Image2,@Heading1,@Heading2,@Content1,@Content2,@Buttonlink,@Buttontittle,@CreateBy,GetDate())  
end  
else  
begin  
update TblSafeGold set Image1=@Image1,Image2=@Image2,Heading1=@Heading1,Heading2=@Heading2,Content1=@Content1,Content2=@Content2,Buttonlink=@Buttonlink,Buttontittle=@Buttontittle,UpdateBy=@UpdateBy,Updatedate=GETDATE();  
end  
end   
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblSafeGoldGet]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_TblSafeGoldGet]  
as  
begin  
select *from TblSafeGold  
end  
GO
/****** Object:  StoredProcedure [dbo].[SP_TblTeamMaster]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_TblTeamMaster]  
  @Name varchar (200),  
  @RoleType varchar (100),  
  @ProfileImg varchar(maX),  
  @SocialMdaLink1 varchar(300),  
  @SocialMdaLink2 varchar(300),  
  @SocialMdaLink3 varchar(300),  
  @CreatedBy VARCHAR (100)
  
as   
begin   
	Insert Into TblTeamMaster (Name,RoleType,ProfileImg,SocialMdaLink1,SocialMdaLink2,SocialMdaLink3,CreatedBy,CreatedOn)values(@Name,@RoleType,@ProfileImg,@SocialMdaLink1,@SocialMdaLink2,@SocialMdaLink3,@CreatedBy,GETDATE())  
End
GO
/****** Object:  StoredProcedure [dbo].[Sp_tblteamMasterDelete]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_tblteamMasterDelete]  
   @id int   
   as   
   begin   
   delete from tblteamMaster where id =@id   
   end 
GO
/****** Object:  StoredProcedure [dbo].[SP_TblTeamMasterUpdate]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_TblTeamMasterUpdate]
  @Id int =null ,  
  @Name varchar (200),  
  @RoleType varchar (100),  
  @ProfileImg varchar(maX),  
  @SocialMdaLink1 varchar(300),  
  @SocialMdaLink2 varchar(300),  
  @SocialMdaLink3 varchar(300),  
  @UpdatedBy varchar(100)
  As
  Begin
 update  TblTeamMaster set  Name =@Name,RoleType=@RoleType,ProfileImg=@ProfileImg,SocialMdaLink1=@SocialMdaLink1,SocialMdaLink2=@SocialMdaLink2,SocialMdaLink3=@SocialMdaLink3,UpdatedBy=@UpdatedBy ,UpdateOn=GETDATE() where id =@Id  
 end
GO
/****** Object:  StoredProcedure [dbo].[Sp_TblTermCondition]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  Proc [dbo].[Sp_TblTermCondition]
	@Section1Heading varchar(200) ,
	@Section1content1 varchar (max) ,
	@Section1content2 varchar (max) ,
	@Section1content3 varchar (max) ,
	@Section1content4 varchar (max) ,
	@Section1content5 varchar (max) ,
	@Section1content6 varchar (max) ,
	@Section1content7 varchar (max) ,
	@Section1content8 varchar (max) ,
	@CreateBy varchar(10) ,
	@UpdateBy varchar(10)
 as 
 begin 
 if not exists (Select *from TblTermCondition)
 insert into TblTermCondition(Section1Heading,Section1content1,Section1content2,Section1content3,Section1content4,Section1content5,Section1content6,Section1content7,Section1content8,CreateBy,CreateOn)values
 (@Section1Heading,@Section1content1,@Section1content2,@Section1content3,@Section1content4,@Section1content5,@Section1content6,@Section1content7,@Section1content8,@CreateBy,GetDate())
 else 
 begin
 update TblTermCondition set Section1Heading=@Section1Heading,Section1content1=@Section1content1,Section1content2=@Section1content2,Section1content3=@Section1content3,
 Section1content4=@Section1content4,Section1content5=@Section1content5,Section1content6=@Section1content6,Section1content7=@Section1content7,Section1content8=@Section1content8,UpdateBy=@UpdateBy,UpdateOn=GETDATE()
 end 
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_TblWhyUs]    Script Date: 9/19/2023 4:54:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_TblWhyUs]
   @ImageWhyUs varchar (200),
   @ContentFirst varchar (200),
   @ContentSecound varchar (200),
   @ContentThird varchar (200),
   @ContentFouth varchar (200),
   @ContentFifth varchar (200),
   @ButtonLink varchar(300),
   @CreateBy varchar (10)  =null,
   @UpdateBy varchar (10)=null 
   as 
   begin 
   if not exists(select *from TblWhyUs)
    begin
   insert into TblWhyUs (ImageWhyUs,ContentFirst,ContentSecound,ContentThird, ContentFouth, ContentFifth, ButtonLink,CreateBy,CreateDate) values(@ImageWhyUs,@ContentFirst,@ContentSecound,@ContentThird, @ContentFouth, @ContentFifth, @ButtonLink,@CreateBy,GetDate())
   end 
   else 
   begin
   update TblWhyUs set ImageWhyUs=@ImageWhyUs,ContentFirst=@ContentFirst,ContentSecound=@ContentSecound,ContentThird=@ContentThird,ContentFouth=@ContentFouth,ContentFifth=@ContentFifth ,ButtonLink=@ButtonLink,UpdateBy=@UpdateBy ,UpdateDate=Getdate()
   end
end 
GO
USE [master]
GO
ALTER DATABASE [KundanWeb_db] SET  READ_WRITE 
GO
