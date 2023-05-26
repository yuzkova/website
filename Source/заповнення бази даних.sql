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
(3, 4, '������������� ����, ��� �������. �����'),
(4, 7, 'ϳ������, ���� �����, �� ������ ��������� � �� �������?'),
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