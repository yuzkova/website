--�� ������ �볺���, ����� ����� 
SELECT CUSNAME, CUSPHONE, MESSDESCRIPTION
FROM CLIENT, SENDMESSADGE
WHERE CUSID=CLIENT.ID;

--�� ���������� �� ���� ����
SELECT CUSNAME, CUSPHONE, ROOMNAME, DATARENT,TIMESTARTRENT, TIMEENDRENT
FROM CLIENT, ROOM, ORD
WHERE CUSID=CLIENT.ID AND ROOMID=ROOM.ID AND DATARENT='2023-05-24';

--�� ���������� �� ���������� � ������� ���������
SELECT CUSNAME, CUSPHONE, ROOMNAME, DATARENT,TIMESTARTRENT, TIMEENDRENT
FROM CLIENT, ROOM, ORD
WHERE CUSID=CLIENT.ID AND ROOMID=ROOM.ID
ORDER BY DATARENT ASC;

--�� ���������� � ���䳿 �3
SELECT CUSNAME, CUSPHONE, ROOMNAME, DATARENT,TIMESTARTRENT, TIMEENDRENT
FROM CLIENT, ROOM, ORD
WHERE CUSID=CLIENT.ID AND ROOMID=ROOM.ID AND ROOMNAME='����� 3';

--�������� ���������� ��� �������
SELECT ROOMNAME, ROOMDESCRIPTION, DATARENT, TIMESTARTRENT, TIMEENDRENT
FROM ORD, ROOM;

--��� ����� ��� ������ ��������������--
SELECT TOP 1 ROOMID, COUNT(*) AS RENTAL_COUNT
FROM ORD
GROUP BY ROOMID
ORDER BY RENTAL_COUNT DESC;


--�������� ������� ��������� �� ���� �����
SELECT COUNT(ID) FROM ORD;

--�������� ������� ��������� ��������� ������ 2023-05-24
SELECT COUNT(ID) FROM ORD
WHERE DATARENT <='2023-05-24';

--���������� ��� ����������, �� �������� ������ 2023-05-24
SELECT * FROM ORD
WHERE DATARENT <='2023-05-24';

--���������� ��� �볺���, ���� ������ ����� ��� 2 ����������
SELECT C.CUSNAME, S.ROOMNAME, B.DATARENT
FROM CLIENT C
JOIN ORD B ON C.ID=B.CUSID
JOIN ROOM S ON B.ROOMID=S.ID
WHERE C.ID IN(
SELECT CUSID
FROM ORD
GROUP BY CUSID
HAVING COUNT(*)>2);


--������� ��������� ���䳿 �1
SELECT COUNT (*) AS ROOM_COUNT
FROM ORD
WHERE ROOMID = 1;


--���������� ��������� ����� �����--
SELECT S.ROOMNAME, COUNT(*) AS ʲ��ʲ���_���������
FROM ORD B
JOIN ROOM S ON B.ROOMID=S.ID
GROUP BY S.ROOMNAME;


--��� �� ������� �볺���, �� ��������� ����� 2
SELECT C.CUSNAME, C.CUSPHONE, B.DATARENT, B.TIMEENDRENT, B.TIMEENDRENT, S.ROOMNAME
FROM ORD B
JOIN ROOM S ON B.ROOMID=S.ID
JOIN CLIENT C ON B.CUSID= C.ID
WHERE B.ROOMID = 2;


--��� �볺���, ���� �������� �� ���� � ��� ����� ��� ���� ���䳿
SELECT DISTINCT C.CUSNAME, C.CUSPHONE, C.ID
FROM CLIENT C
INNER JOIN ORD B1 ON C.ID=B1.CUSID
INNER JOIN ORD B2 ON C.ID=B2.CUSID
WHERE B1.ROOMID<>B2.ROOMID AND B1.TIMESTARTRENT=B2.TIMESTARTRENT;