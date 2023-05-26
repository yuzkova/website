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

--�������� ������� ��������� ��������� ������ 2023-05-24
SELECT COUNT(ID) FROM ORD
WHERE DATARENT <='2023-05-24';

--���������� ��� ����������, �� �������� ������ 2023-05-24
SELECT * FROM ORD
WHERE DATARENT <='2023-05-24';

--����� �볺���, ���� ������ ����� ��� 1 ����������
SELECT CUSID FROM ORD
GROUP BY CUSID
HAVING COUNT(*) > 1;


--������� ��������� ���䳿 �1
SELECT COUNT (*) AS ROOM_COUNT
FROM ORD
WHERE ROOMID = 1;

--���������� ��������� ����� �����--
SELECT ROOMID,COUNT(*) AS BOOKINGS_COUNT
FROM ORD
GROUP BY ROOMID;

--��� ����� ��� ������ ��������������--
SELECT TOP 1 ROOMID, COUNT(*) AS RENTAL_COUNT
FROM ORD
GROUP BY ROOMID
ORDER BY RENTAL_COUNT DESC;

--��� �� ������� �볺���, �� ��������� ����� 3
SELECT CUSNAME, CUSPHONE
FROM CLIENT
INNER JOIN ORD ON CLIENT.ID=ORD.CUSID
WHERE ORD.ROOMID=3;

--��� �볺���, ���� �������� �� ���� � ��� ����� ��� ���� ���䳿
SELECT DISTINCT C.CUSNAME, C.CUSPHONE, C.ID
FROM CLIENT C
INNER JOIN ORD B1 ON C.ID=B1.CUSID
INNER JOIN ORD B2 ON C.ID=B2.CUSID
WHERE B1.ROOMID<>B2.ROOMID AND B1.TIMESTARTRENT=B2.TIMESTARTRENT;





