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
(1, 'fotok', '12345', 'Катерина'),
(2, 'fotoy', '11111', 'Юлія');

USE FOTOSALON;
INSERT INTO ROOM(ID, ROOMDESCRIPTION, ROOMNAME) VALUES
(1, 'Параметри залу: 100 м2, сонячна сторона, великі вікна, рейл для речей. Максимальна кількість людей-8.', 'студія 1'),
(2, 'Параметри залу: 128 м2, сонячна сторона, декорації. Максимальна кількість людей-10.', 'студія 2'),
(3, 'Параметри залу: 170 м2, не сонячна сторона, декорації. Максимальна кількість людей-10.', 'студія 3'),
(4, 'Параметри залу: 230 м2, не сонячна сторона, декорації. Максимальна кількість людей-8.', 'студія 4'),
(5, 'Розрахована на 2 місця', 'гримерка');

USE FOTOSALON;
INSERT INTO CLIENT(ID, CUSNAME, CUSLOGIN, CUSPASS, CUSGENDER, CUSPHONE) VALUES
(1, 'Дубський Віталій Олегович', 'dubskiy','d123bs','ч','0976828109'),
(2, 'Длігач Андрій Василівна', 'dligac','add22','ч','0976343109'),
(3, 'Курашкевич Яна Вадимівна', 'kur','yanak','ж','0981111037'),
(4, 'Пипчак Юлія Василівна', 'pupchak','yuliavas','ж','0980601000'),
(5, 'Остовський Юрій Ігорович', 'ostovsky','1053','ч','0980612023'),
(6, 'Санків Олег Іванович', 'sankiv','sanoleg','ч','0976828102'),
(7, 'Дощенко Ірина Олегівна', 'dokat','09894','ж','0670671007'),
(8, 'Струсь Інна Артемівна', 'struc','6577','ж','0505617037'),
(9, 'Дамчук Карина Микитівна', 'tux','tuxomur','ж','0983454622'),
(10, 'Коваль Максим Ілліч', 'koval','34596','ч','0446781037'),
(11, 'Сон Анна Максимівна', 'rebren','veronika23','ж','0978769534'),
(12, 'Шатохіна Діана Маратівна', 'diana','di34ch','ж','0100681037'),
(13, 'Гетало Кіра Василівна', 'getalo','getaloo','ж','0980684343'),
(14, 'Куранда Данило Данилович', 'kuranda','dqnulo', 'ч','0986785037'),
(15, 'Гончар Ілона Вадимівна', 'gonchar','ilona','ж','0989990037');

USE FOTOSALON;
INSERT INTO SENDMESSADGE(MESSID, CUSID, MESSDESCRIPTION) VALUES
(1, 3, 'Дякую за чудову роботу!'),
(2, 14, 'Хотів би залишити свій позитивний відгук: все відповідало заявленим вимогам на сайті. Я залишився задоволений.'),
(3, 4, 'Зателефонуйте мені, маю питання. Дякую'),
(4, 7, 'Підкажіть, будь ласка, чи будете працювати в ці вихідні?'),
(5, 9, 'Хотів би уточнити деталі оренди приміщень');

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


--всі запити клієнтів, через форму 
SELECT CUSNAME, CUSPHONE, MESSDESCRIPTION
FROM CLIENT, SENDMESSADGE
WHERE CUSID=CLIENT.ID;

--всі бронювання від найпершого в порядку зростання
SELECT CUSNAME, CUSPHONE, ROOMNAME, DATARENT,TIMESTARTRENT, TIMEENDRENT
FROM CLIENT, ROOM, ORD
WHERE CUSID=CLIENT.ID AND ROOMID=ROOM.ID
ORDER BY DATARENT ASC;

--всі бронювання за один день
SELECT CUSNAME, CUSPHONE, ROOMNAME, DATARENT,TIMESTARTRENT, TIMEENDRENT
FROM CLIENT, ROOM, ORD
WHERE CUSID=CLIENT.ID AND ROOMID=ROOM.ID AND DATARENT='2023-05-24';

--інформація про адміністраторов студії
SELECT *
FROM ADMIN;

--всі бронювання в студії №3
SELECT CUSNAME, CUSPHONE, ROOMNAME, DATARENT,TIMESTARTRENT, TIMEENDRENT
FROM CLIENT, ROOM, ORD
WHERE CUSID=CLIENT.ID AND ROOMID=ROOM.ID AND ROOMNAME='студія 3';

--вся інформація про клієнтів жіночої статі
SELECT *
FROM CLIENT
WHERE CUSGENDER ='ж';

--кількість клієнтів жіночої статі
SELECT COUNT(CUSGENDER) FROM CLIENT
WHERE CUSGENDER ='ж';

--загальна кількість бронювань за весь період
SELECT COUNT(ID) FROM ORD;

--загальна кількість бронювань зроблених раніше 2023-05-24
SELECT COUNT(ID) FROM ORD
WHERE DATARENT <='2023-05-24';

--інформація про бронювання, які зроблені раніше 2023-05-24
SELECT * FROM ORD
WHERE DATARENT <='2023-05-24';

SELECT CUSID FROM ORD
GROUP BY CUSID
HAVING COUNT(*) > 1;

SELECT *
FROM ROOM;

--кількість бронювань студії №1
SELECT COUNT (*) AS ROOM_COUNT
FROM ORD
WHERE ROOMID = 1;

--статистика бронювань різних студій--
SELECT ROOMID,COUNT(*) AS BOOKINGS_COUNT
FROM ORD
GROUP BY ROOMID;

--яка студія для оренди найпопулярніша--
SELECT TOP 1 ROOMID, COUNT(*) AS RENTAL_COUNT
FROM ORD
GROUP BY ROOMID
ORDER BY RENTAL_COUNT DESC;

--імя та телефон клієнтів, які бронювали студію 3
SELECT CUSNAME, CUSPHONE
FROM CLIENT
INNER JOIN ORD ON CLIENT.ID=ORD.CUSID
WHERE ORD.ROOMID=3;

--імя клієнта, який бронював на один і той самий час різні студії
SELECT DISTINCT C.CUSNAME, C.CUSPHONE, C.ID
FROM CLIENT C
INNER JOIN ORD B1 ON C.ID=B1.CUSID
INNER JOIN ORD B2 ON C.ID=B2.CUSID
WHERE B1.ROOMID<>B2.ROOMID AND B1.TIMESTARTRENT=B2.TIMESTARTRENT;