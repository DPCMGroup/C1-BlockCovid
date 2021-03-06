SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO users (username, password, name, surname, mail, type, archived) VALUES 
('mrossi','admin2077','mario','rossi','mario.rossi@gmail.com',0,0),
('averdi','employee2077','alessio','verdi','alessio.verdi@yahoo.it',1,0),
('gbianchi','cleaner2077','gianni','bianchi','gianni.bianchi@pulizie.it',2,0),
('mneri','employee2077','marika','neri','marika.neri@virgilio.it',1,0),
('mviola','employee2077','matteo','viola','matteo.viola@virgilio.it',1,0),
('abruni','employee2077','antonio','bruni','antonio.bruni@virgilio.it',1,0),
('bbruni','employee2077','bruno','bruni','bruno.bruni@virgilio.it',1,0),
('cbruni','employee2077','carlo','bruni','carlo.bruni@virgilio.it',1,0);

INSERT INTO rooms (roomName,xRoom,yRoom,archived, unavailable) VALUES
('Laboratorio',10,10,0,0),
('Aula A',20,20,0,0),
('Aula B',15,15,0,0),
('Aula C',15,15,0,0),
('Aula D',15,15,0,0);

INSERT INTO workStations(tag, workStationName, xWorkStation, yWorkStation, idRoom, state, sanitized, archived) VALUES

/*Laboratorio*/
('00 c0 00 01 8d 91 04','L-A1',1,1,1,0,0,0),
('00 67 00 a9 95 b0 04','L-A2',1,2,1,0,0,0),
('00 8a 00 2c d1 a1 04','L-A3',1,3,1,0,0,0),
('00 1f 00 22 78 20 04','L-A4',1,4,1,0,0,0),
('00 37 00 03 95 70 04','L-A5',1,5,1,0,0,0),
('00 d2 00 05 1c 91 04','L-A6',1,6,1,0,0,0),

('81 6c f2 ba 7f 35 04','L-B1',2,1,1,0,0,0),
('80 6c f2 ba 59 39 04','L-B2',2,2,1,0,0,0),

('80 57 1f 82 15 40 04','L-C1',3,1,1,0,0,0),

/*Aula A*/
('00 c0 00 01 8d 91 f3','A-A1',1,1,2,0,0,0),
('00 c0 00 01 8d 91 f4','A-A2',1,2,2,0,0,0),
('00 c0 00 01 8d 91 f5','A-A3',1,3,2,0,0,0),
('00 c0 00 01 8d 91 f6','A-A4',1,4,2,0,0,0),
('00 c0 00 01 8d 91 f7','A-A5',1,5,2,0,0,0),

/*Aula B*/
('00 c0 00 01 8d 91 g3','B-A1',1,1,3,0,0,0),
('00 c0 00 01 8d 91 g4','B-A2',1,2,3,0,0,0),
('00 c0 00 01 8d 91 g5','B-A3',1,3,3,0,0,0),
('00 c0 00 01 8d 91 g6','B-A4',1,4,3,0,0,0),
('00 c0 00 01 8d 91 g7','B-A5',1,5,3,0,0,0),

/*Aula C*/
('00 c0 00 01 8d 91 h3','C-A1',1,1,4,0,0,0),
('00 c0 00 01 8d 91 h4','C-A2',1,2,4,0,0,0),
('00 c0 00 01 8d 91 h5','C-A3',1,3,4,0,0,0),
('00 c0 00 01 8d 91 h6','C-A4',1,4,4,3,0,0),
('00 c0 00 01 8d 91 h7','C-A5',1,5,4,3,0,0),

/*Aula D*/
('00 c0 00 01 8d 91 w3','D-A1',1,1,5,0,0,0),
('00 c0 00 01 8d 91 w4','D-A2',1,2,5,0,0,0),
('00 c0 00 01 8d 91 w5','D-A3',1,3,5,0,0,0),
('00 c0 00 01 8d 91 w6','D-A4',1,4,5,0,0,0),
('00 c0 00 01 8d 91 w7','D-A5',1,5,5,0,1,0),
('00 c0 00 01 8d 91 w8','D-A6',1,6,5,0,0,0),
('00 c0 00 01 8d 91 w9','D-A7',1,7,5,0,1,0);

INSERT INTO bookings(idWorkStation, idUser, startTime, endTime, archived) VALUES 
(1,2,'2021-06-01 10:30:00','2021-06-01 19:00:00',0),
(1,2,'2021-09-01 10:00:00','2021-09-01 13:00:00',0),
(1,2,'2021-09-02 10:00:00','2021-09-02 13:00:00',0),
(1,2,'2021-09-03 10:00:00','2021-09-03 13:00:00',0),
(1,2,'2021-09-04 10:00:00','2021-09-04 13:00:00',0),
(1,2,'2021-09-05 10:00:00','2021-09-05 13:00:00',0),

(2,4,'2021-09-01 10:00:00','2021-09-01 13:00:00',0),
(2,4,'2021-09-02 10:00:00','2021-09-02 13:00:00',0),
(2,4,'2021-09-03 10:00:00','2021-09-03 13:00:00',0),
(2,4,'2021-09-04 10:00:00','2021-09-04 13:00:00',0),
(2,4,'2021-09-05 10:00:00','2021-09-05 13:00:00',0),

(3,5,'2021-09-01 10:00:00','2021-09-01 13:00:00',0),
(3,5,'2021-09-02 10:00:00','2021-09-02 13:00:00',0),
(3,5,'2021-09-03 10:00:00','2021-09-03 13:00:00',0),
(3,5,'2021-09-04 10:00:00','2021-09-04 13:00:00',0),
(3,5,'2021-09-05 10:00:00','2021-09-05 13:00:00',0),

(25,6,'2021-06-01 10:00:00','2021-06-01 19:00:00',0),
(26,7,'2021-06-01 10:00:00','2021-06-01 19:00:00',0),
(27,8,'2021-06-01 10:00:00','2021-06-01 19:00:00',0),


(1,1,'2021-06-02 15:00:00','2021-06-02 16:59:00',0),
(2,2,'2021-06-02 15:00:00','2021-06-02 16:59:00',0),
(3,3,'2021-06-02 15:00:00','2021-06-02 16:59:00',0);


/* mettere la data di oggi */
INSERT INTO attendances(id, idBooking, startTime, endTime) VALUES
(1, 1,'2021-06-01 10:30:00','2021-06-01 19:00:00'),
(2, 20,'2021-06-02 15:00:00','2021-06-02 16:59:00'),
(3, 21,'2021-06-02 15:00:00','2021-06-02 16:59:00'),
(4, 22,'2021-06-02 15:00:00','2021-06-02 16:59:00');

UPDATE workStations SET state = 1 where id = 27;

INSERT INTO workStationsFailures (id, idWorkStation, startTime, endTime, archived) VALUES
(1,30,'2021-06-01 10:00:00','2021-09-01 13:00:00',0),
(2,31,'2021-06-01 10:00:00','2021-09-01 13:00:00',0);

INSERT INTO sanitizations(idWorkStation,idUser,sanitizationTime) VALUES
(3,1,'2021-06-02 16:59:00'),
(8,4,'2021-06-02 17:52:00');

SET FOREIGN_KEY_CHECKS = 1;