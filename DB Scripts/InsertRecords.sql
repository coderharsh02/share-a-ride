DBCC CHECKIDENT ('[Vehicles]', RESEED, 0);
DBCC CHECKIDENT ('[Rides]', RESEED, 0);
DBCC CHECKIDENT ('[RideStops]', RESEED, 0);
DBCC CHECKIDENT ('[RideRequests]', RESEED, 0);
DBCC CHECKIDENT ('[Feedbacks]', RESEED, 0);

INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (1, N'johnDoe', N'password123', N'John', N'Doe', NULL, N'john.doe@example.com', N'123 Main Street', N'Apt 4B', N'Maharashtra', N'Mumbai', 400001, N'123-456-7890', 1, CAST(N'2023-06-24T14:34:31.590' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (2, N'janeSmith', N'abc123', N'Jane', N'Smith', NULL, N'jane.smith@example.com', N'456 Oak Avenue', N'Unit 8C', N'Delhi', N'New Delhi', 110001, N'987-654-3210', 1, CAST(N'2023-06-24T14:34:31.597' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (3, N'amitKumar', N'pass123', N'Amit', N'Kumar', NULL, N'amit.kumar@example.com', N'789 Elm Street', N'Apartment 12', N'Karnataka', N'Bengaluru', 560001, N'789-123-4567', 1, CAST(N'2023-06-24T14:34:31.597' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (4, N'deepaSharma', N'qwerty', N'Deepa', N'Sharma', NULL, N'deepa.sharma@example.com', N'567 Pine Street', N'Flat 5D', N'Maharashtra', N'Pune', 411001, N'234-567-8901', 1, CAST(N'2023-06-24T14:34:31.600' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (5, N'akashVerma', N'pass123', N'Akash', N'Verma', NULL, N'akash.verma@example.com', N'901 Cedar Street', N'Apartment 9B', N'Tamil Nadu', N'Chennai', 600001, N'345-678-9012', 1, CAST(N'2023-06-24T14:34:31.600' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (6, N'priyaGupta', N'password123', N'Priya', N'Gupta', NULL, N'priya.gupta@example.com', N'234 Oak Street', N'Apartment 3A', N'Uttar Pradesh', N'Lucknow', 226001, N'456-789-0123', 1, CAST(N'2023-06-24T14:34:31.600' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (7, N'rahulShah', N'abc123', N'Rahul', N'Shah', NULL, N'rahul.shah@example.com', N'345 Maple Avenue', N'Flat 7C', N'Gujarat', N'Ahmedabad', 380001, N'567-890-1234', 1, CAST(N'2023-06-24T14:34:31.603' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (8, N'nehaPatel', N'qwerty', N'Neha', N'Patel', NULL, N'neha.patel@example.com', N'678 Cedar Street', N'Apartment 2D', N'Rajasthan', N'Jaipur', 302001, N'678-901-2345', 1, CAST(N'2023-06-24T14:34:31.603' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (9, N'vivekSharma', N'pass123', N'Vivek', N'Sharma', NULL, N'vivek.sharma@example.com', N'789 Pine Street', N'Flat 3B', N'Uttarakhand', N'Dehradun', 248001, N'789-012-3456', 1, CAST(N'2023-06-24T14:34:31.607' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (10, N'aartiSingh', N'password123', N'Aarti', N'Singh', NULL, N'aarti.singh@example.com', N'567 Oak Street', N'Apartment 4C', N'West Bengal', N'Kolkata', 700001, N'901-234-5678', 1, CAST(N'2023-06-24T14:34:31.607' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [FirstName], [LastName], [PhotoUrl], [Email], [AddressLine1], [AddressLine2], [State], [City], [Pincode], [PhoneNumber], [lst_user], [lst_date], [lst_ip]) VALUES (11, N'sandeepKumar', N'abc123', N'Sandeep', N'Kumar', NULL, N'sandeep.kumar@example.com', N'901 Maple Avenue', N'Apartment 8D', N'Punjab', N'Amritsar', 143001, N'234-567-8901', 1, CAST(N'2023-06-24T14:34:31.610' AS DateTime), N'192.168.0.1')
GO

INSERT [dbo].[Vehicles] ([UserId], [VehicleType], [VehicleModel], [VehicleDetails], [VehicleImageUrl], [VehicleNumber], [lst_user], [lst_date], [lst_ip]) VALUES (3, N'Car', N'Honda Civic', N'Sedan', N'http://example.com/car1.jpg', N'ABC123', 1, CAST(N'2023-06-24T14:54:58.620' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Vehicles] ([UserId], [VehicleType], [VehicleModel], [VehicleDetails], [VehicleImageUrl], [VehicleNumber], [lst_user], [lst_date], [lst_ip]) VALUES (7, N'Car', N'Toyota Camry', N'Sedan', N'http://example.com/car2.jpg', N'DEF456', 1, CAST(N'2023-06-24T14:54:58.627' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Vehicles] ([UserId], [VehicleType], [VehicleModel], [VehicleDetails], [VehicleImageUrl], [VehicleNumber], [lst_user], [lst_date], [lst_ip]) VALUES (5, N'Car', N'Ford Mustang', N'Coupe', N'http://example.com/car3.jpg', N'GHI789', 1, CAST(N'2023-06-24T14:54:58.627' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Vehicles] ([UserId], [VehicleType], [VehicleModel], [VehicleDetails], [VehicleImageUrl], [VehicleNumber], [lst_user], [lst_date], [lst_ip]) VALUES (2, N'Car', N'Chevrolet Cruze', N'Sedan', N'http://example.com/car4.jpg', N'JKL012', 1, CAST(N'2023-06-24T14:54:58.627' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Vehicles] ([UserId], [VehicleType], [VehicleModel], [VehicleDetails], [VehicleImageUrl], [VehicleNumber], [lst_user], [lst_date], [lst_ip]) VALUES (9, N'Car', N'BMW 3 Series', N'Sedan', N'http://example.com/car5.jpg', N'MNO345', 1, CAST(N'2023-06-24T14:54:58.627' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Vehicles] ([UserId], [VehicleType], [VehicleModel], [VehicleDetails], [VehicleImageUrl], [VehicleNumber], [lst_user], [lst_date], [lst_ip]) VALUES (1, N'Car', N'Audi A4', N'Sedan', N'http://example.com/car6.jpg', N'PQR678', 1, CAST(N'2023-06-24T14:54:58.630' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Vehicles] ([UserId], [VehicleType], [VehicleModel], [VehicleDetails], [VehicleImageUrl], [VehicleNumber], [lst_user], [lst_date], [lst_ip]) VALUES (8, N'Car', N'Mercedes-Benz C-Class', N'Sedan', N'http://example.com/car7.jpg', N'STU901', 1, CAST(N'2023-06-24T14:54:58.630' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Vehicles] ([UserId], [VehicleType], [VehicleModel], [VehicleDetails], [VehicleImageUrl], [VehicleNumber], [lst_user], [lst_date], [lst_ip]) VALUES (4, N'Car', N'Hyundai Elantra', N'Sedan', N'http://example.com/car8.jpg', N'VWX234', 1, CAST(N'2023-06-24T14:54:58.633' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Vehicles] ([UserId], [VehicleType], [VehicleModel], [VehicleDetails], [VehicleImageUrl], [VehicleNumber], [lst_user], [lst_date], [lst_ip]) VALUES (6, N'Car', N'Nissan Altima', N'Sedan', N'http://example.com/car9.jpg', N'YZA567', 1, CAST(N'2023-06-24T14:54:58.633' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Vehicles] ([UserId], [VehicleType], [VehicleModel], [VehicleDetails], [VehicleImageUrl], [VehicleNumber], [lst_user], [lst_date], [lst_ip]) VALUES (10, N'Car', N'Volkswagen Passat', N'Sedan', N'http://example.com/car10.jpg', N'BCD890', 1, CAST(N'2023-06-24T14:54:58.637' AS DateTime), N'192.168.0.1')
GO


GO
INSERT [dbo].[Rides] ([UserId], [VehicleId], [Origin], [Destination], [TotalSeats], [StartTime], [lst_user], [lst_date], [lst_ip]) VALUES (3, 1, N'Mumbai', N'Pune', N'4', CAST(N'2023-06-25T09:00:00.000' AS DateTime), 1, CAST(N'2023-06-24T15:00:39.587' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Rides] ([UserId], [VehicleId], [Origin], [Destination], [TotalSeats], [StartTime], [lst_user], [lst_date], [lst_ip]) VALUES (7, 2, N'Delhi', N'Jaipur', N'3', CAST(N'2023-06-26T14:30:00.000' AS DateTime), 1, CAST(N'2023-06-24T15:00:39.590' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Rides] ([UserId], [VehicleId], [Origin], [Destination], [TotalSeats], [StartTime], [lst_user], [lst_date], [lst_ip]) VALUES (5, 3, N'Bangalore', N'Chennai', N'2', CAST(N'2023-06-27T11:15:00.000' AS DateTime), 1, CAST(N'2023-06-24T15:00:39.593' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Rides] ([UserId], [VehicleId], [Origin], [Destination], [TotalSeats], [StartTime], [lst_user], [lst_date], [lst_ip]) VALUES (2, 4, N'Hyderabad', N'Vijayawada', N'5', CAST(N'2023-06-28T08:45:00.000' AS DateTime), 1, CAST(N'2023-06-24T15:00:39.593' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Rides] ([UserId], [VehicleId], [Origin], [Destination], [TotalSeats], [StartTime], [lst_user], [lst_date], [lst_ip]) VALUES (9, 5, N'Chandigarh', N'Amritsar', N'3', CAST(N'2023-06-29T10:30:00.000' AS DateTime), 1, CAST(N'2023-06-24T15:00:39.593' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Rides] ([UserId], [VehicleId], [Origin], [Destination], [TotalSeats], [StartTime], [lst_user], [lst_date], [lst_ip]) VALUES (1, 6, N'Kolkata', N'Bhubaneswar', N'4', CAST(N'2023-06-30T12:00:00.000' AS DateTime), 1, CAST(N'2023-06-24T15:00:39.597' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Rides] ([UserId], [VehicleId], [Origin], [Destination], [TotalSeats], [StartTime], [lst_user], [lst_date], [lst_ip]) VALUES (8, 7, N'Ahmedabad', N'Surat', N'2', CAST(N'2023-07-01T15:45:00.000' AS DateTime), 1, CAST(N'2023-06-24T15:00:39.597' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Rides] ([UserId], [VehicleId], [Origin], [Destination], [TotalSeats], [StartTime], [lst_user], [lst_date], [lst_ip]) VALUES (4, 8, N'Jaipur', N'Udaipur', N'3', CAST(N'2023-07-02T09:30:00.000' AS DateTime), 1, CAST(N'2023-06-24T15:00:39.597' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Rides] ([UserId], [VehicleId], [Origin], [Destination], [TotalSeats], [StartTime], [lst_user], [lst_date], [lst_ip]) VALUES (6, 9, N'Pune', N'Mumbai', N'5', CAST(N'2023-07-03T14:15:00.000' AS DateTime), 1, CAST(N'2023-06-24T15:00:39.597' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Rides] ([UserId], [VehicleId], [Origin], [Destination], [TotalSeats], [StartTime], [lst_user], [lst_date], [lst_ip]) VALUES (10, 10, N'Chennai', N'Bangalore', N'2', CAST(N'2023-07-04T11:30:00.000' AS DateTime), 1, CAST(N'2023-06-24T15:00:39.600' AS DateTime), N'192.168.0.1')
GO


GO
INSERT [dbo].[Feedbacks] ([RideId], [FromUserId], [ToUserId], [Rating], [Comment], [ist_user], [ist_date], [ist_ip]) VALUES (1, 1, 2, 4, N'Great ride!', 1, CAST(N'2023-06-24T15:13:04.553' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Feedbacks] ([RideId], [FromUserId], [ToUserId], [Rating], [Comment], [ist_user], [ist_date], [ist_ip]) VALUES (2, 2, 1, 5, N'Excellent driver!', 1, CAST(N'2023-06-24T15:13:04.553' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Feedbacks] ([RideId], [FromUserId], [ToUserId], [Rating], [Comment], [ist_user], [ist_date], [ist_ip]) VALUES (3, 1, 2, 3, N'Average experience', 1, CAST(N'2023-06-24T15:13:04.553' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Feedbacks] ([RideId], [FromUserId], [ToUserId], [Rating], [Comment], [ist_user], [ist_date], [ist_ip]) VALUES (4, 2, 1, 5, N'Highly recommended!', 1, CAST(N'2023-06-24T15:13:04.553' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[Feedbacks] ([RideId], [FromUserId], [ToUserId], [Rating], [Comment], [ist_user], [ist_date], [ist_ip]) VALUES (5, 1, 2, 2, N'Disappointing service', 1, CAST(N'2023-06-24T15:13:04.553' AS DateTime), N'192.168.0.1')
GO

SET IDENTITY_INSERT [dbo].[RideRequests] ON 
GO
INSERT [dbo].[RideRequests] ([RequestId], [RideId], [UserId], [Status], [CreatedAt], [lst_user], [lst_date], [lst_ip]) VALUES (1, 1, 1, N'Requested', CAST(N'2023-06-24T15:12:15.930' AS DateTime), 1, CAST(N'2023-06-24T15:12:15.930' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideRequests] ([RequestId], [RideId], [UserId], [Status], [CreatedAt], [lst_user], [lst_date], [lst_ip]) VALUES (2, 2, 1, N'Requested', CAST(N'2023-06-24T15:12:15.930' AS DateTime), 1, CAST(N'2023-06-24T15:12:15.930' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideRequests] ([RequestId], [RideId], [UserId], [Status], [CreatedAt], [lst_user], [lst_date], [lst_ip]) VALUES (3, 3, 1, N'Requested', CAST(N'2023-06-24T15:12:15.930' AS DateTime), 1, CAST(N'2023-06-24T15:12:15.930' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideRequests] ([RequestId], [RideId], [UserId], [Status], [CreatedAt], [lst_user], [lst_date], [lst_ip]) VALUES (4, 4, 1, N'Requested', CAST(N'2023-06-24T15:12:15.930' AS DateTime), 1, CAST(N'2023-06-24T15:12:15.930' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideRequests] ([RequestId], [RideId], [UserId], [Status], [CreatedAt], [lst_user], [lst_date], [lst_ip]) VALUES (5, 5, 1, N'Requested', CAST(N'2023-06-24T15:12:15.930' AS DateTime), 1, CAST(N'2023-06-24T15:12:15.930' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideRequests] ([RequestId], [RideId], [UserId], [Status], [CreatedAt], [lst_user], [lst_date], [lst_ip]) VALUES (6, 6, 1, N'Requested', CAST(N'2023-06-24T15:12:15.930' AS DateTime), 1, CAST(N'2023-06-24T15:12:15.930' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideRequests] ([RequestId], [RideId], [UserId], [Status], [CreatedAt], [lst_user], [lst_date], [lst_ip]) VALUES (7, 7, 1, N'Requested', CAST(N'2023-06-24T15:12:15.930' AS DateTime), 1, CAST(N'2023-06-24T15:12:15.930' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideRequests] ([RequestId], [RideId], [UserId], [Status], [CreatedAt], [lst_user], [lst_date], [lst_ip]) VALUES (8, 8, 1, N'Requested', CAST(N'2023-06-24T15:12:15.930' AS DateTime), 1, CAST(N'2023-06-24T15:12:15.930' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideRequests] ([RequestId], [RideId], [UserId], [Status], [CreatedAt], [lst_user], [lst_date], [lst_ip]) VALUES (9, 9, 1, N'Requested', CAST(N'2023-06-24T15:12:15.930' AS DateTime), 1, CAST(N'2023-06-24T15:12:15.930' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideRequests] ([RequestId], [RideId], [UserId], [Status], [CreatedAt], [lst_user], [lst_date], [lst_ip]) VALUES (10, 10, 1, N'Requested', CAST(N'2023-06-24T15:12:15.930' AS DateTime), 1, CAST(N'2023-06-24T15:12:15.930' AS DateTime), N'192.168.0.1')
GO


GO
INSERT [dbo].[RideStops] ([RideId], [StopName], [StopDetails], [lst_user], [lst_date], [lst_ip]) VALUES (1, N'Stop 1', N'Details for Stop 1', 1, CAST(N'2023-06-24T15:04:28.913' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideStops] ([RideId], [StopName], [StopDetails], [lst_user], [lst_date], [lst_ip]) VALUES (2, N'Stop 1', N'Details for Stop 1', 1, CAST(N'2023-06-24T15:04:28.920' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideStops] ([RideId], [StopName], [StopDetails], [lst_user], [lst_date], [lst_ip]) VALUES (2, N'Stop 2', N'Details for Stop 2', 1, CAST(N'2023-06-24T15:04:28.920' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideStops] ([RideId], [StopName], [StopDetails], [lst_user], [lst_date], [lst_ip]) VALUES (2, N'Stop 3', N'Details for Stop 3', 1, CAST(N'2023-06-24T15:04:28.923' AS DateTime), N'192.168.0.1')
GO
INSERT [dbo].[RideStops] ([RideId], [StopName], [StopDetails], [lst_user], [lst_date], [lst_ip]) VALUES (4, N'Stop 1', N'Details for Stop 1', 1, CAST(N'2023-06-24T15:04:28.923' AS DateTime), N'192.168.0.1')
GO
SET IDENTITY_INSERT [dbo].[RideStops] OFF
GO

--DELETE FROM Feedbacks;
--DELETE FROM RideRequests;
--DELETE FROM RideStops;
--DELETE FROM Rides;
--DELETE FROM Vehicles;
--DELETE FROM Users;