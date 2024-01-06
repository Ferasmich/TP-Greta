CREATE TABLE Patient (
  patientID INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  firstName VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  healthInsuranceFundName VARCHAR(255) NOT NULL
);
CREATE TABLE Stay (
  stayID INT PRIMARY KEY AUTO_INCREMENT,
  patientID INT NOT NULL,
  arrivalDate DATE NOT NULL,
  departureDate DATE,
  roomNumber INT NOT NULL,
  FOREIGN KEY (patientID) REFERENCES Patient(patientID),
  FOREIGN KEY (roomNumber) REFERENCES Room(roomNumber)
);
CREATE TABLE Room (
  roomNumber INT PRIMARY KEY AUTO_INCREMENT,
  floor INT NOT NULL,
  departmentName VARCHAR(255) NOT NULL
);
CREATE TABLE Interventions (
  operationCode INT PRIMARY KEY AUTO_INCREMENT,
  date DATE NOT NULL,
  name VARCHAR(255) NOT NULL,
  doctorCode INT NOT NULL,
  FOREIGN KEY (doctorCode) REFERENCES Doctor(doctorCode)
);
CREATE TABLE Doctor (
  doctorCode INT PRIMARY KEY AUTO_INCREMENT,
  lastName VARCHAR(255) NOT NULL,
  firstName VARCHAR(255) NOT NULL,
  specialty VARCHAR(255) NOT NULL
);
