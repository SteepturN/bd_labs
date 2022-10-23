/* add feedback */
CREATE TABLE HotelOrder
(
	DateInfo             DATE 				NOT NULL,
	Price                INT UNSIGNED 		NOT NULL,
	Stars                TINYINT UNSIGNED 	NULL check ( Stars <= 5 ),
	person_id            INTEGER UNSIGNED 	NOT NULL,
	room_id              INTEGER UNSIGNED 	NOT NULL,
	order_id             INTEGER UNSIGNED 	NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (order_id)
);




/* number, what would you like to be called, email, */
CREATE TABLE People
(
	person_id            INTEGER UNSIGNED	 	NOT NULL AUTO_INCREMENT,
	Full_name            NCHAR(128) 			NOT NULL,
	Age                  TINYINT UNSIGNED 		NOT NULL check ( age < 200 ),
	Passport             CHAR(10) 				NOT NULL check ( Passport REGEXP '^[0-9]\{5,\}$' ),
	Sex                  enum('Not known', 'Male', 'Female', 'Not applicable',
						 'helicopter', 'deer', 'kostyaan') NOT NULL,
	PRIMARY KEY (person_id)
);





CREATE TABLE Room
(
	room_id              INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	Floor                TINYINT UNSIGNED NOT NULL Default( 1 ),
	`Number`             TINYINT UNSIGNED NOT NULL Default( 1 ),
	`Class`              enum('vip', 'standart', 'half vip') NOT NULL default( 'standart' ),
	Capacity             TINYINT UNSIGNED NOT NULL Default( 1 ),
	PRIMARY KEY (room_id)
);





ALTER TABLE HotelOrder
ADD FOREIGN KEY R_8 (person_id) REFERENCES People (person_id);



ALTER TABLE HotelOrder
ADD FOREIGN KEY R_9 (room_id) REFERENCES Room (room_id);
