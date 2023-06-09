CREATE DATABASE FOTOSALON;
CREATE TABLE ADMIN(ADMINID INT PRIMARY KEY,
  ADMINLOGIN VARCHAR(25),
  ADMINPASS VARCHAR(25),
  ADMINNAME VARCHAR(25));


  CREATE TABLE CLIENT(ID INT PRIMARY KEY,
  CUSNAME VARCHAR(25),
  CUSLOGIN VARCHAR(25),
  CUSPASS VARCHAR(25),
  CUSPHONE INT,
  CUSGENDER VARCHAR(1));
  

  
  CREATE TABLE SENDMESSADGE(MESSID INT PRIMARY KEY,
  CUSID INT,
  MESSDESCRIPTION VARCHAR(255));

  CREATE TABLE ORD(ID INT PRIMARY KEY,
  CUSID INT,
  ROOMID INT,
  DATARENT DATE,
  TIMESTARTRENT TIME,
  TIMEENDRENT TIME);

  CREATE TABLE ROOM(ID INT PRIMARY KEY,
  ROOMDESCRIPTION VARCHAR(255),
  ROOMNAME VARCHAR(50));

  ALTER TABLE SENDMESSADGE ADD FOREIGN KEY (CUSID) REFERENCES CLIENT(ID);
  ALTER TABLE ORD ADD FOREIGN KEY (CUSID) REFERENCES CLIENT(ID);
  ALTER TABLE ORD ADD FOREIGN KEY (ROOMID) REFERENCES ROOM(ID);