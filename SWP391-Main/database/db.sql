USE [SWP391_Project_Lastest]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] NOT NULL,
	[first_name] [nvarchar](max) NOT NULL,
	[last_name] [nvarchar](max) NOT NULL,
	[gender] [bit] NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[dob] [date] NOT NULL,
	[phone_number] [nvarchar](12) NOT NULL,
	[address] [nvarchar](max) NULL,
	[img] [nvarchar](max) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK__Account__46A222CD550624C0] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[activity_id] [int] IDENTITY(1,1) NOT NULL,
	[act_description] [text] NOT NULL,
	[act_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[activity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[attendance_id] [bigint] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[check_date] [date] NOT NULL,
	[status] [int] NOT NULL,
	[teacher_id] [int] NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[attendance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [nvarchar](20) NOT NULL,
	[grade] [int] NOT NULL,
	[class_description] [text] NOT NULL,
	[teacher_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Criteria]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criteria](
	[criteria_id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[criteria_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[kid_id] [int] NULL,
	[teacher_id] [int] NULL,
	[fb_content] [nvarchar](max) NULL,
	[rating] [float] NULL,
	[fb_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoogleAccount]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoogleAccount](
	[account_id] [int] NOT NULL,
	[google_id] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_GoogleAccount] PRIMARY KEY CLUSTERED 
(
	[google_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kindergartner]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kindergartner](
	[kinder_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[img] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[kinder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record](
	[record_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[note] [text] NULL,
	[criteria_id] [int] NULL,
	[semester] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[class_id] [int] NULL,
	[activity_id] [int] NULL,
	[slot_id] [int] NULL,
	[schedule_date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[slot_id] [int] IDENTITY(1,1) NOT NULL,
	[start_hour] [float] NOT NULL,
	[end_hour] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[slot_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Study_Record]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Study_Record](
	[study_record_id] [int] IDENTITY(1,1) NOT NULL,
	[class_id] [int] NULL,
	[kinder_id] [int] NULL,
	[study_year] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[study_record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_achivement]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_achivement](
	[achivement_id] [int] IDENTITY(1,1) NOT NULL,
	[content] [text] NOT NULL,
	[teacher_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[achivement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_record]    Script Date: 8/12/2023 9:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_record](
	[record_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_id] [int] NULL,
	[description] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (8, N'Jonah', N'Hex', 1, N'jonah@gmail.com', N'1', CAST(N'1890-01-14' AS Date), N'0858050379', N'Russia', N'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Josh_Brolin_Berlin_2016.jpg/250px-Josh_Brolin_Berlin_2016.jpg', 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (9, N'Macey', N'Albert', 1, N'macey@gmail.com', N'1', CAST(N'0001-01-01' AS Date), N'0813601669', N'Canada', N'', 3)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (10, N'viet', N'le', 1, N'levietaqviet1@gmail.com', N'1', CAST(N'2001-04-16' AS Date), N'0858050379', N'New York', NULL, 2)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (11, N'Lewis', N'Lennor', 1, N'lewis@gmail.com', N'1', CAST(N'1977-10-10' AS Date), N'0883701669', N'New York', NULL, 2)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (12, N'viet', N'le', 1, N'le@gmail.com', N'1', CAST(N'2001-04-16' AS Date), N'0858050379', N'VietNam', NULL, 2)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (13, N'Asiyah', N'McGee', 0, N'asiyah@gmail.com', N'1', CAST(N'1985-11-11' AS Date), N'0813701668', N'New Jersey', NULL, 2)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (15, N'Fearne', N'Sykes', 1, N'fearne@gmail.com', N'1', CAST(N'1985-01-01' AS Date), N'0813711668', N'California', NULL, 2)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (16, N'Charlotte', N'McGregor', 0, N'charlotte@gmail.com', N'1', CAST(N'1985-01-03' AS Date), N'0813702668', N'Brooklyn', NULL, 2)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (17, N'Josiah', N'Cervantes', 1, N'josiah@gmail.com', N'1', CAST(N'1985-01-04' AS Date), N'0913701668', N'Washington DC', NULL, 2)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (18, N'Gethin', N'Lowery', 1, N'gethin@gmail.com', N'1', CAST(N'1985-01-05' AS Date), N'0814701668', N'Beijing', NULL, 2)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (26, N'Le', N'viet', 0, N'kienbeo237@gmail.com', N'1', CAST(N'1111-11-11' AS Date), N'0858050379', N'Nhà trọ chú chắt - cây xăng 39  - hoà lạc ,thạch thất ,hà nội', N'', 3)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [gender], [email], [password], [dob], [phone_number], [address], [img], [role_id]) VALUES (27, N'hoang', N'kien', 1, N'kiennhhe163054@fpt.edu.vn', N'Kienbeo237@', CAST(N'1995-07-23' AS Date), N'0919507158', N'Đại học FPT', NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[Activity] ON 

INSERT [dbo].[Activity] ([activity_id], [act_description], [act_name]) VALUES (1, N'Have breakfast', N'Breakfast')
INSERT [dbo].[Activity] ([activity_id], [act_description], [act_name]) VALUES (2, N'Do workout', N'Physical Education')
INSERT [dbo].[Activity] ([activity_id], [act_description], [act_name]) VALUES (3, N'Study', N'Study')
INSERT [dbo].[Activity] ([activity_id], [act_description], [act_name]) VALUES (4, N'Lunch', N'Lunch')
INSERT [dbo].[Activity] ([activity_id], [act_description], [act_name]) VALUES (5, N'Drawing', N'Drawing')
INSERT [dbo].[Activity] ([activity_id], [act_description], [act_name]) VALUES (6, N'Singing', N'Singing')
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (1, 21, CAST(N'2022-10-24' AS Date), 1, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (2, 21, CAST(N'2022-10-25' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (3, 22, CAST(N'2022-10-24' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (4, 22, CAST(N'2022-10-25' AS Date), 1, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (5, 23, CAST(N'2022-10-24' AS Date), 1, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (6, 23, CAST(N'2022-10-25' AS Date), 1, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (7, 24, CAST(N'2022-10-24' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (8, 24, CAST(N'2022-10-25' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (9, 25, CAST(N'2022-10-24' AS Date), 1, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (10, 25, CAST(N'2022-10-25' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (11, 28, CAST(N'2022-10-24' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (12, 28, CAST(N'2022-10-25' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (13, 29, CAST(N'2022-10-24' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (14, 29, CAST(N'2022-10-25' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (15, 30, CAST(N'2022-10-24' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (16, 30, CAST(N'2022-10-25' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (35, 21, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (36, 22, CAST(N'2022-11-02' AS Date), 1, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (37, 23, CAST(N'2022-11-02' AS Date), 1, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (38, 24, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (39, 25, CAST(N'2022-11-02' AS Date), 1, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (40, 28, CAST(N'2022-11-02' AS Date), 1, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (41, 29, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (42, 30, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (43, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (44, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (45, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (46, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (47, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (48, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (49, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (50, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (51, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (52, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (53, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (54, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (55, 36, CAST(N'2022-11-02' AS Date), 0, 9)
INSERT [dbo].[Attendance] ([attendance_id], [student_id], [check_date], [status], [teacher_id]) VALUES (56, 36, CAST(N'2022-11-02' AS Date), 0, 9)
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([class_id], [class_name], [grade], [class_description], [teacher_id]) VALUES (2, N'SE1609', 9, N'It was great', 9)
INSERT [dbo].[Class] ([class_id], [class_name], [grade], [class_description], [teacher_id]) VALUES (3, N'SE1610', 3, N'It was great', 26)
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([feedback_id], [kid_id], [teacher_id], [fb_content], [rating], [fb_date]) VALUES (1, 21, 9, N'', 0, CAST(N'2022-11-02' AS Date))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
INSERT [dbo].[GoogleAccount] ([account_id], [google_id]) VALUES (27, N'108192359264615987563')
GO
SET IDENTITY_INSERT [dbo].[Kindergartner] ON 

INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (12, 8, N'viet', N'Parr Smith', CAST(N'0001-01-01' AS Date), 1, N'')
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (14, 9, N'Alyx', N'McGee', CAST(N'2020-01-02' AS Date), 0, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (15, 9, N'Sana', N'McGee', CAST(N'2020-01-03' AS Date), 0, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (16, 10, N'Farah', N'Shannon', CAST(N'2020-01-04' AS Date), 1, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (17, 10, N'Skye', N'Shannon', CAST(N'2020-01-05' AS Date), 1, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (18, 10, N'Cally', N'Shannon', CAST(N'2020-01-06' AS Date), 0, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (19, 11, N'Michele', N'Sykes', CAST(N'2020-01-07' AS Date), 0, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (20, 11, N'Parker', N'Sykes', CAST(N'2020-01-08' AS Date), 1, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (21, 12, N'vi', N'et', CAST(N'2020-01-30' AS Date), 1, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (22, 12, N'Felix', N'McGregor', CAST(N'2020-01-10' AS Date), 0, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (23, 13, N'Imaan', N'Cervantes', CAST(N'2020-01-11' AS Date), 0, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (24, 13, N'Ada', N'Cervantes', CAST(N'2020-01-12' AS Date), 0, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (25, 13, N'Kayden', N'Cervantes', CAST(N'2020-02-01' AS Date), 1, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (28, 15, N'Ceri', N'Lowery', CAST(N'2020-02-04' AS Date), 0, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (29, 15, N'Avi', N'Richards', CAST(N'2020-02-05' AS Date), 1, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (30, 15, N'Diya', N'Richards', CAST(N'2020-02-06' AS Date), 1, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (36, 12, N'OK', N'a', CAST(N'2017-07-17' AS Date), 1, NULL)
INSERT [dbo].[Kindergartner] ([kinder_id], [parent_id], [first_name], [last_name], [dob], [gender], [img]) VALUES (37, 12, N'OK', N'a', CAST(N'2017-07-17' AS Date), 1, NULL)
SET IDENTITY_INSERT [dbo].[Kindergartner] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'ROLE_ADMIN')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'ROLE_PARENT')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'ROLE_TEACHER')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (36, 2, 1, 1, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (37, 2, 2, 2, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (38, 2, 3, 3, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (39, 2, 4, 4, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (40, 2, 4, 5, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (41, 2, 5, 6, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (42, 2, 6, 7, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (43, 2, 1, 1, CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (44, 2, 2, 2, CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (45, 2, 3, 3, CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (46, 2, 4, 4, CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (47, 2, 4, 5, CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (48, 2, 5, 6, CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (49, 2, 6, 7, CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (50, 2, 1, 1, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (51, 2, 2, 2, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (52, 2, 3, 3, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (53, 2, 4, 4, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (54, 2, 4, 5, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (55, 2, 5, 6, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (56, 2, 6, 7, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (57, 2, 1, 1, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (58, 2, 2, 2, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (59, 2, 3, 3, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (60, 2, 4, 4, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (61, 2, 4, 5, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (62, 2, 5, 6, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (63, 2, 6, 7, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (64, 2, 1, 1, CAST(N'2022-06-26' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (65, 2, 2, 2, CAST(N'2022-06-26' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (66, 2, 3, 3, CAST(N'2022-06-26' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (67, 2, 4, 4, CAST(N'2022-06-26' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (68, 2, 4, 5, CAST(N'2022-06-26' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (69, 2, 5, 6, CAST(N'2022-06-26' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (70, 2, 6, 7, CAST(N'2022-06-26' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (80, 2, 1, 1, CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (81, 3, 1, 1, CAST(N'2022-10-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (82, 3, 1, 2, CAST(N'2022-10-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (83, 3, 1, 2, CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (84, 2, 1, 3, CAST(N'2022-10-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (85, 2, 1, 2, CAST(N'2022-10-29' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (86, 2, 1, 2, CAST(N'2022-11-01' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (87, 3, 1, 1, CAST(N'2022-11-07' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (88, 2, 1, 1, CAST(N'2022-11-07' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (89, 3, 1, 2, CAST(N'2022-11-08' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (90, 2, 1, 1, CAST(N'2022-10-03' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (91, 2, 1, 1, CAST(N'0009-04-13' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (92, 2, 1, 1, CAST(N'0013-04-09' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (93, 2, 1, 2, CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (94, 2, 1, 2, CAST(N'2022-11-07' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (95, 2, 1, 3, CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (96, 2, 1, 4, CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (97, 2, 1, 3, CAST(N'2022-11-03' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (98, 2, 1, 4, CAST(N'2022-11-07' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (99, 2, 1, 5, CAST(N'2022-11-07' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (100, 2, 1, 2, CAST(N'2022-11-08' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (101, 2, 1, 3, CAST(N'2022-11-01' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (102, 2, 1, 1, CAST(N'2022-11-01' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (77, 2, 4, 1, CAST(N'2022-10-24' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (75, 2, 1, 3, CAST(N'2022-10-27' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (76, 2, 1, 1, CAST(N'2022-10-27' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (78, 2, 6, 2, CAST(N'2022-10-25' AS Date))
INSERT [dbo].[Schedule] ([schedule_id], [class_id], [activity_id], [slot_id], [schedule_date]) VALUES (79, 2, 5, 2, CAST(N'2022-10-26' AS Date))
SET IDENTITY_INSERT [dbo].[Schedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Slot] ON 

INSERT [dbo].[Slot] ([slot_id], [start_hour], [end_hour]) VALUES (1, 7, 8)
INSERT [dbo].[Slot] ([slot_id], [start_hour], [end_hour]) VALUES (2, 8, 9)
INSERT [dbo].[Slot] ([slot_id], [start_hour], [end_hour]) VALUES (3, 9, 10)
INSERT [dbo].[Slot] ([slot_id], [start_hour], [end_hour]) VALUES (4, 10, 11)
INSERT [dbo].[Slot] ([slot_id], [start_hour], [end_hour]) VALUES (5, 11, 12)
INSERT [dbo].[Slot] ([slot_id], [start_hour], [end_hour]) VALUES (6, 12, 13)
INSERT [dbo].[Slot] ([slot_id], [start_hour], [end_hour]) VALUES (7, 13, 14)
INSERT [dbo].[Slot] ([slot_id], [start_hour], [end_hour]) VALUES (8, 14, 15)
INSERT [dbo].[Slot] ([slot_id], [start_hour], [end_hour]) VALUES (9, 15, 16)
INSERT [dbo].[Slot] ([slot_id], [start_hour], [end_hour]) VALUES (10, 16, 17)
SET IDENTITY_INSERT [dbo].[Slot] OFF
GO
SET IDENTITY_INSERT [dbo].[Study_Record] ON 

INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (12, 2, 12, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (15, 2, 14, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (16, 2, 15, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (17, 2, 16, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (18, 2, 17, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (19, 2, 18, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (20, 2, 19, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (21, 2, 20, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (22, 3, 21, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (23, 3, 22, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (24, 3, 23, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (25, 3, 24, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (26, 3, 25, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (29, 3, 28, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (30, 3, 29, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (31, 3, 30, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (33, 3, 36, 2022)
INSERT [dbo].[Study_Record] ([study_record_id], [class_id], [kinder_id], [study_year]) VALUES (34, 2, 37, 2022)
SET IDENTITY_INSERT [dbo].[Study_Record] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK__Account__role_id__3C69FB99] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK__Account__role_id__3C69FB99]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK__Attendanc__stude__4F7CD00D] FOREIGN KEY([student_id])
REFERENCES [dbo].[Kindergartner] ([kinder_id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK__Attendanc__stude__4F7CD00D]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK__Attendanc__teach__5070F446] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Account] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK__Attendanc__teach__5070F446]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK__Class__teacher_i__3F466844] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Account] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK__Class__teacher_i__3F466844]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([kid_id])
REFERENCES [dbo].[Kindergartner] ([kinder_id])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK__Feedback__teache__412EB0B6] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Account] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK__Feedback__teache__412EB0B6]
GO
ALTER TABLE [dbo].[GoogleAccount]  WITH CHECK ADD  CONSTRAINT [FK_GoogleAccount_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[GoogleAccount] CHECK CONSTRAINT [FK_GoogleAccount_Account]
GO
ALTER TABLE [dbo].[Kindergartner]  WITH CHECK ADD  CONSTRAINT [FK__Kindergar__paren__4222D4EF] FOREIGN KEY([parent_id])
REFERENCES [dbo].[Account] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kindergartner] CHECK CONSTRAINT [FK__Kindergar__paren__4222D4EF]
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD FOREIGN KEY([criteria_id])
REFERENCES [dbo].[Criteria] ([criteria_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Kindergartner] ([kinder_id])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK__Schedule__activi__571DF1D5] FOREIGN KEY([activity_id])
REFERENCES [dbo].[Activity] ([activity_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK__Schedule__activi__571DF1D5]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK__Schedule__class___5812160E] FOREIGN KEY([class_id])
REFERENCES [dbo].[Class] ([class_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK__Schedule__class___5812160E]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK__Schedule__slot_i__59063A47] FOREIGN KEY([slot_id])
REFERENCES [dbo].[Slot] ([slot_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK__Schedule__slot_i__59063A47]
GO
ALTER TABLE [dbo].[Study_Record]  WITH CHECK ADD  CONSTRAINT [FK__Study_Rec__class__59FA5E80] FOREIGN KEY([class_id])
REFERENCES [dbo].[Class] ([class_id])
GO
ALTER TABLE [dbo].[Study_Record] CHECK CONSTRAINT [FK__Study_Rec__class__59FA5E80]
GO
ALTER TABLE [dbo].[Study_Record]  WITH CHECK ADD FOREIGN KEY([kinder_id])
REFERENCES [dbo].[Kindergartner] ([kinder_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher_achivement]  WITH CHECK ADD  CONSTRAINT [FK__Teacher_a__teach__49C3F6B7] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Account] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher_achivement] CHECK CONSTRAINT [FK__Teacher_a__teach__49C3F6B7]
GO
ALTER TABLE [dbo].[Teacher_record]  WITH CHECK ADD  CONSTRAINT [FK__Teacher_r__teach__4AB81AF0] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Account] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher_record] CHECK CONSTRAINT [FK__Teacher_r__teach__4AB81AF0]
GO
