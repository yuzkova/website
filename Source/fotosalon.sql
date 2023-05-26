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

   USE FOTOSALON
DELETE FROM ORD;
DELETE FROM ADMIN;
DELETE FROM ROOM;
DELETE FROM CLIENT;
DELETE FROM SENDMESSADGE;

SET ansi_warnings OFF
GO
USE FOTOSALON;
INSERT INTO ADMIN(ADMINID, ADMINLOGIN, ADMINPASS, ADMINNAME) VALUES
(1, 'fotok', '12345', '��������'),
(2, 'fotoy', '11111', '���');

USE FOTOSALON;
INSERT INTO ROOM(ID, ROOMDESCRIPTION, ROOMNAME) VALUES
(1, '��������� ����: 100 �2, ������� �������, ����� ����, ���� ��� �����. ����������� ������� �����-8.', '����� 1'),
(2, '��������� ����: 128 �2, ������� �������, ���������. ����������� ������� �����-10.', '����� 2'),
(3, '��������� ����: 170 �2, �� ������� �������, ���������. ����������� ������� �����-10.', '����� 3'),
(4, '��������� ����: 230 �2, �� ������� �������, ���������. ����������� ������� �����-8.', '����� 4'),
(5, '����������� �� 2 ����', '��������');

USE FOTOSALON;
INSERT INTO CLIENT(ID, CUSNAME, CUSLOGIN, CUSPASS, CUSGENDER, CUSPHONE) VALUES
(1, '�������� ³���� ��������', 'dubskiy','d123bs','�','0976828109'),
(2, '����� ����� ��������', 'dligac','add22','�','0976343109'),
(3, '���������� ��� ��������', 'kur','yanak','�','0981111037'),
(4, '������ ��� ��������', 'pupchak','yuliavas','�','0980601000'),
(5, '���������� ��� ��������', 'ostovsky','1053','�','0980612023'),
(6, '����� ���� ��������', 'sankiv','sanoleg','�','0976828102'),
(7, '������� ����� �������', 'dokat','09894','�','0670671007'),
(8, '������ ���� ��������', 'struc','6577','�','0505617037'),
(9, '������ ������ ��������', 'tux','tuxomur','�','0983454622'),
(10, '������ ������ ����', 'koval','34596','�','0446781037'),
(11, '��� ���� ���������', 'rebren','veronika23','�','0978769534'),
(12, '�������� ĳ��� ��������', 'diana','di34ch','�','0100681037'),
(13, '������ ʳ�� ��������', 'getalo','getaloo','�','0980684343'),
(14, '������� ������ ���������', 'kuranda','dqnulo', '�','0986785037'),
(15, '������ ����� ��������', 'gonchar','ilona','�','0989990037');

USE FOTOSALON;
INSERT INTO SENDMESSADGE(MESSID, CUSID, MESSDESCRIPTION) VALUES
(1, 3, '����� �� ������ ������!'),
(2, 14, '���� �� �������� ��� ���������� �����: ��� ��������� ��������� ������� �� ����. � ��������� �����������.'),
(3, 4, '������������� ���, ��� �������. �����'),
(4, 7, 'ϳ������, ���� �����, �� ������ ��������� � �� ������?'),
(5, 9, '���� �� �������� ����� ������ ��������');

USE FOTOSALON;
INSERT INTO ORD (ID, CUSID,ROOMID,DATARENT,TIMESTARTRENT,TIMEENDRENT) VALUES
(1, 3, 3, '2023-10-10','10:00', '11:00' ),
(2, 3, 5, '2023-10-10','10:00', '11:00' ),
(3, 5, 1, '2023-05-23','15:00', '16:00' ),
(4, 14, 2, '2023-05-23','12:00', '13:00' ),
(5, 1, 4, '2023-05-24','17:00', '18:00' ),
(6, 7, 3, '2023-05-24','10:00', '11:00' ),
(7, 2, 4, '2023-06-10','14:00', '15:00' ),
(8, 15, 3, '2023-06-01','07:00', '08:00' ),
(9, 9, 5, '2023-05-24','09:00', '10:00' ),
(10, 9, 1, '2023-01-24','09:00', '10:00' ),
(11, 4, 4, '2023-06-11','13:00', '15:00' ),
(12, 6, 3, '2023-06-22','07:00', '08:00' ),
(13, 8, 1, '2023-06-12','14:00', '15:00' ),
(14, 10, 2, '2023-07-18','19:00', '20:00' ),
(15,13, 5, '2023-06-04','12:00', '13:00' ),
(16, 11, 3, '2023-06-06','07:00', '09:00' ),
(17, 11, 5, '2023-06-06','07:00', '09:00' ),
(18, 12, 2, '2023-05-25','15:00', '16:00' ),
(19, 1, 2, '2023-04-09','13:00', '15:00' ),
(20, 4, 5, '2023-05-27','12:00', '13:00' ),
(21, 13, 3, '2023-05-27','14:00', '15:00' ),
(22, 11, 5, '2023-06-12','12:00', '13:00' ),
(23, 15, 2, '2023-06-01','18:00', '19:00' );


--�� ������ �볺���, ����� ����� 
SELECT CUSNAME, CUSPHONE, MESSDESCRIPTION
FROM CLIENT, SENDMESSADGE
WHERE CUSID=CLIENT.ID;

--�� ���������� �� ���������� � ������� ���������
SELECT CUSNAME, CUSPHONE, ROOMNAME, DATARENT,TIMESTARTRENT, TIMEENDRENT
FROM CLIENT, ROOM, ORD
WHERE CUSID=CLIENT.ID AND ROOMID=ROOM.ID
ORDER BY DATARENT ASC;

--�� ���������� �� ���� ����
SELECT CUSNAME, CUSPHONE, ROOMNAME, DATARENT,TIMESTARTRENT, TIMEENDRENT
FROM CLIENT, ROOM, ORD
WHERE CUSID=CLIENT.ID AND ROOMID=ROOM.ID AND DATARENT='2023-05-24';

--���������� ��� ������������� ���䳿
SELECT *
FROM ADMIN;

--�� ���������� � ���䳿 �3
SELECT CUSNAME, CUSPHONE, ROOMNAME, DATARENT,TIMESTARTRENT, TIMEENDRENT
FROM CLIENT, ROOM, ORD
WHERE CUSID=CLIENT.ID AND ROOMID=ROOM.ID AND ROOMNAME='����� 3';

--��� ���������� ��� �볺��� ����� ����
SELECT *
FROM CLIENT
WHERE CUSGENDER ='�';

--������� �볺��� ����� ����
SELECT COUNT(CUSGENDER) FROM CLIENT
WHERE CUSGENDER ='�';

--�������� ������� ��������� �� ���� �����
SELECT COUNT(ID) FROM ORD;

--�������� ������� ��������� ��������� ����� 2023-05-24
SELECT COUNT(ID) FROM ORD
WHERE DATARENT <='2023-05-24';

--���������� ��� ����������, �� ������� ����� 2023-05-24
SELECT * FROM ORD
WHERE DATARENT <='2023-05-24';

SELECT CUSID FROM ORD
GROUP BY CUSID
HAVING COUNT(*) > 1;

SELECT *
FROM ROOM;

--������� ��������� ���䳿 �1
SELECT COUNT (*) AS ROOM_COUNT
FROM ORD
WHERE ROOMID = 1;

--���������� ��������� ����� �����--
SELECT ROOMID,COUNT(*) AS BOOKINGS_COUNT
FROM ORD
GROUP BY ROOMID;

--��� ����� ��� ������ �������������--
SELECT TOP 1 ROOMID, COUNT(*) AS RENTAL_COUNT
FROM ORD
GROUP BY ROOMID
ORDER BY RENTAL_COUNT DESC;

--��� �� ������� �볺���, �� ��������� ����� 3
SELECT CUSNAME, CUSPHONE
FROM CLIENT
INNER JOIN ORD ON CLIENT.ID=ORD.CUSID
WHERE ORD.ROOMID=3;

--��� �볺���, ���� �������� �� ���� � ��� ����� ��� ��� ���䳿
SELECT DISTINCT C.CUSNAME, C.CUSPHONE, C.ID
FROM CLIENT C
INNER JOIN ORD B1 ON C.ID=B1.CUSID
INNER JOIN ORD B2 ON C.ID=B2.CUSID
WHERE B1.ROOMID<>B2.ROOMID AND B1.TIMESTARTRENT=B2.TIMESTARTRENT;