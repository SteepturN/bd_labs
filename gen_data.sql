insert into People (Full_name, Age, Passport, Sex) values
('Мива Макинами', 56, '7818478233', 'Female'),
('Кира Мухаммед', 90, '2702162558', 'Not known'),
('Синдзи Почитта', 47, '1713007159', 'Not applicable'),
('Джолин Лайт', 42, '5955587707', 'Male'),
('Джорно Йошикаге', 4, '3604628488', 'Male'),
('Жоржи Мухаммед', 47, '7434294503', 'Not known'),
('Даниил Куджо', 22, '1217562659', 'Not applicable'),
('Фэй Джостар', 28, '8359314123', 'Female'),
('Роуз Геноза', 86, '3218876729', 'Not known'),
('Джозеф Джостар', 8, '5720607731', 'Not known'),
('Илья Лайт', 64, '9773355810', 'Male'),
('Константин Амане', 65, '2616906135', 'Not known'),
('Дива Агацума', 79, '8467356710', 'Female'),
('Джонатан Макинами', 62, '1640823282', 'Not known'),
('Джонатан Почитта', 10, '2403008459', 'Not applicable'),
('Роуз Ленгли', 1, '7478332364', 'Not known'),
('Джолин Агацума', 66, '4593159892', 'Not known'),
('Дива Почитта', 75, '1529276322', 'Not known'),
('Илья Амане', 20, '4097248329', 'Not known'),
('Джонатан Ленгли', 91, '7076427086', 'Not applicable');
insert into Room ( Floor, `Number`, `Class`, Capacity ) values
(1, 1, 'standart', 1),
(1, 2, 'standart', 1),
(1, 3, 'half vip', 2),
(1, 4, 'standart', 4),
(2, 1, 'half vip', 3),
(2, 2, 'standart', 2),
(2, 3, 'half vip', 1),
(2, 4, 'half vip', 1),
(2, 5, 'half vip', 3),
(3, 1, 'vip', 4),
(3, 2, 'half vip', 2),
(3, 3, 'half vip', 1),
(3, 4, 'half vip', 2),
(3, 5, 'standart', 3),
(4, 1, 'standart', 4),
(4, 2, 'half vip', 3),
(4, 3, 'half vip', 3),
(4, 4, 'standart', 4),
(5, 1, 'standart', 4),
(6, 1, 'standart', 2);
insert into HotelOrder ( DateInfo, Price, Stars, person_id, room_id ) values
('1999-01-26 07:06:39', 208037, 0, 17, 20),
('2001-06-22 08:03:22', 467315, 1, 9, 1),
('1975-08-11 05:12:26', 348189, 3, 14, 11),
('1990-06-22 09:11:25', 66062, 1, 18, 19),
('2007-08-24 18:34:57', 198893, 4, 8, 3),
('2005-12-02 18:29:38', 288016, 5, 16, 12),
('2000-05-29 15:57:16', 186019, 4, 7, 16),
('1993-06-29 20:25:08', 14165, 3, 6, 4),
('2005-04-14 20:29:22', 4371, 3, 1, 7),
('1997-03-21 08:06:15', 356811, 3, 20, 3),
('2012-07-21 00:16:31', 451559, 5, 13, 15),
('1987-09-20 09:29:48', 451308, 4, 6, 19),
('2007-03-14 00:46:19', 278408, 0, 7, 9),
('1982-05-01 15:20:13', 456358, 4, 20, 17),
('1992-01-13 02:09:29', 479318, 2, 7, 10),
('1982-05-13 08:56:23', 467683, 5, 2, 8),
('1979-04-23 00:05:06', 212341, 1, 6, 18),
('2014-12-07 14:48:30', 364377, 4, 8, 4),
('1989-11-25 08:11:07', 73321, 0, 13, 20),
('2009-02-03 21:54:49', 13165, 2, 16, 19);
