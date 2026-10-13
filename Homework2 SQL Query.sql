CREATE DATABASE HW2
USE HW2

Create TABLE Faculties (
	ID_Facu INT PRIMARY KEY,
	Name_Facu VARCHAR (100) NOT NULL
	
)

Create TABLE Chairs(
	ID_Chair INT PRIMARY KEY,
	Chair_name VARCHAR(100) NOT NULL,
	ID_Facu INT NOT NULL,
	FOREIGN KEY(ID_Facu) REFERENCES Faculties (ID_Facu)
)

Create Table Groups(
	Id_Group INT PRIMARY KEY,
	Name_Chair VARCHAR(100) NOT NULL,
	Id_Facu INT NOT NULL,
	FOREIGN KEY (ID_Facu) REFERENCES Faculties(ID_Facu)
)

Create Table Positions(
	Position VARCHAR(50) PRIMARY KEY,
	Salary DECIMAL(10,2) Check(Salary>0)
)

Create Table Teachers(
	Id_Teacher INT PRIMARY KEY,
	Name_Teacher VARCHAR(100) NOT NULl,
	ID_Chair INT NOT NULL,
	Position VARCHAR(50) NOT NULL,
	Salary DECIMAL(10,2) CHECK (Salary>=0),
	Employment_Date DATE,
	FOREIGN KEY(ID_Chair) REFERENCES Chairs(ID_Chair),
	FOREIGN KEY(Position) REFERENCES Positions(Position)
	
)