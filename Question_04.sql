CREATE TABLE OPERATOR (
  operaterID INT PRIMARY KEY AUTO_INCREMENT,
  operaterName VARCHAR(255) NOT NULL
);
CREATE TABLE VEHICLE (
  vehicleID INT PRIMARY KEY AUTO_INCREMENT,
  lineID INT NOT NULL,
  vehicleType VARCHAR(255) NOT NULL,
  FOREIGN KEY (lineID) REFERENCES LINE(lineID)
);
CREATE TABLE SERVICE (
  serviceID INT PRIMARY KEY AUTO_INCREMENT,
  lineID INT NOT NULL,
  serviceType VARCHAR(255) NOT NULL,
  origin VARCHAR(255) NOT NULL,
  destination VARCHAR(255) NOT NULL,
  FOREIGN KEY (lineID) REFERENCES LINE(lineID)
);
CREATE TABLE GEOSPATIAL_DATA (
  geoShape GEOMETRY NOT NULL,
  geoPoint2D POINT NOT NULL,
  lineID INT NOT NULL,
  FOREIGN KEY (lineID) REFERENCES LINE(lineID)
);
CREATE TABLE LINE (
  lineID INT PRIMARY KEY AUTO_INCREMENT,
  operaterID INT NOT NULL,
  lineName VARCHAR(255) NOT NULL,
  lineStatus VARCHAR(255) NOT NULL,
  skill VARCHAR(255) NOT NULL,
  accessible BOOLEAN NOT NULL,
  FOREIGN KEY (operaterID) REFERENCES OPERATOR(operaterID)
);