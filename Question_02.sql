CREATE TABLE Sick (
  sickID INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);
CREATE TABLE Consultation (
  consultationID INT PRIMARY KEY AUTO_INCREMENT,
  sickID INT NOT NULL,
  date DATE NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (sickID) REFERENCES Sick(sickID)
);
CREATE TABLE Symptom (
  symptomID INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);
CREATE TABLE Disease (
  diseaseID INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);
CREATE TABLE Doctor (
  doctorID INT PRIMARY KEY AUTO_INCREMENT,
  lastName VARCHAR(255) NOT NULL,
  firstName VARCHAR(255) NOT NULL
);

/*
Consultation_Symptom Table

CREATE TABLE Consultation_Symptom (
  consultationID INT NOT NULL,
  symptomID INT NOT NULL,
  FOREIGN KEY (consultationID) REFERENCES Consultation(consultationID),
  FOREIGN KEY (symptomID) REFERENCES Symptom(symptomID)
);

Consultation_Disease Table

CREATE TABLE Consultation_Disease (
  consultationID INT NOT NULL,
  diseaseID INT NOT NULL,
  FOREIGN KEY (consultationID) REFERENCES Consultation(consultationID),
  FOREIGN KEY (diseaseID) REFERENCES Disease(diseaseID)
);

Doctor_Disease Table

CREATE TABLE Doctor_Disease (
  doctorID INT NOT NULL,
  diseaseID INT NOT NULL,
  FOREIGN KEY (doctorID) REFERENCES Doctor(doctorID),
  FOREIGN KEY (diseaseID) REFERENCES Disease(diseaseID)
);
*/
