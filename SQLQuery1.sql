create Database VaccineManagementDb

use VaccineManagementDb
--drop database VaccineManagementDb

-- Create the User table
CREATE TABLE UserDetails (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) Unique,
    Password NVARCHAR(50) NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(10),
    
);
insert into UserDetails Values('User','User@123','Rohit','Kokare','Rohit@gmail.com','1234567895')
insert into UserDetails Values('User1','User@145','Sam','R','Sam@gmail.com','1234567800')
select * from UserDetails


-- Create the VaccineDetails table
CREATE TABLE VaccineDetails (
    VaccineName NVARCHAR(100) PRIMARY KEY,
    Manufacturer NVARCHAR(100),
	Stock int,
    
);
Drop table VaccineDetails
insert into VaccineDetails Values('Covxin','ABC',100)
insert into VaccineDetails Values('Covishield','XYZ',200)
insert into VaccineDetails Values('sputnik-v','KLM',100)
insert into VaccineDetails Values('Hepatitis-B','DDD',100)
select * from VaccineDetails


CREATE TABLE VaccineDose(
	NumberOfDose int primary key);
	insert into VaccineDose values(0)
	insert into VaccineDose values(1)
	insert into VaccineDose values(2)
	select * from VaccineDose


-- Create the Admin table
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(50) NOT NULL,
	);
	insert into Admin(Username,Password) values('Admin','Admin@123')
	select * from Admin

--Create the Location table
CREATE TABLE Location (
CityID int IDENTITY(1,1) ,
	CityName nvarchar(50) primary key);

	insert into Location Values('Bengaluru')
	insert into Location Values('Chennai')
	insert into Location Values('Bengal')
	select * from Location
	Drop table Location
--Create the Time Slots table
CREATE TABLE DateTimeSlots
	( DatetimeID int IDENTITY(1,1) primary key, 
	DateTimings Datetime unique,
	
);

Drop table DateTimeSlots
insert into DateTimeSlots Values('2024-01-27 10:30:00')
insert into DateTimeSlots Values('2024-01-27 02:30:00')
insert into DateTimeSlots Values('2024-01-27 06:30:00')
select * from DateTimeSlots


--Create table for status
CREATE TABLE StatusOfVaccine
(
Status nvarchar(50) primary key
) 
insert into StatusOfVaccine Values('Not Done')
insert into StatusOfVaccine Values('Done')

	

--Create the Booking-Reg Table
CREATE TABLE BookForVaccine
	(BookingId INT PRIMARY KEY IDENTITY(1,1),
	 VaccineName NVARCHAR(100)  foreign key references VaccineDetails(VaccineName),
	CityName nvarchar(50) foreign key references Location(CityName),
	UserID INT foreign key references UserDetails(UserID),
	Name nvarchar(50) not null,
	MobileNumber VARCHAR(10) not null,
	DatetimeID int foreign key references DateTimeSlots(DatetimeID),
	NumberOfDose int Foreign key References VaccineDose(NumberOfDose) DEFAULT 0,
	Status NVARCHAR(50) Foreign key references StatusOfVaccine(Status) Default 'Not Done'
	);
	Drop table BookForVaccine
	insert into BookForVaccine(VaccineName,CityName,UserID,Name,MobileNumber,DatetimeID)
	Values('Covxin','Chennai',1,'Rohit','1236547895',1)
insert into BookForVaccine(VaccineName,CityName,UserID,Name,MobileNumber,DatetimeID)
	Values('Covishield','Bengaluru',3,'Sam','1236547895',1)
	select * from BookForVaccine

--Creat the Booking-Reg For family


--Optional Confirmed about vaccinated