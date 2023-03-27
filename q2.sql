CREATE TABLE HANGAR (

	HID INT NOT NULL,
	CAPACITY INT,
	LOCATIONN VARCHAR(255),

	PRIMARY KEY(HID)

);


CREATE TABLE AIRPLANE_TYPE (
    MODELNO INT,
    CAPACITY INT,
    WEIGHT INT,
	PRIMARY KEY(MODELNO)

);

CREATE TABLE COORPORATIONS (
	
	CNAME VARCHAR(20) NOT NULL,
	ADDRESS VARCHAR(50),
	PHONE VARCHAR(15),
	PRIMARY KEY(CNAME),
);

CREATE TABLE PERSON (
    SSN VARCHAR(30),
	
    NAME VARCHAR(20),
	ADDR VARCHAR(100),
	PHONE VARCHAR(30),
	PRIMARY KEY(SSN),
);

CREATE TABLE OWNERR (
   
    OID INT NOT NULL,
    OWNERTYPE VARCHAR(10),
	CID VARCHAR(20),
	PERSON VARCHAR(30),
	FOREIGN KEY(PERSON) REFERENCES PERSON(SSN),
	FOREIGN KEY(CID) REFERENCES COORPORATIONS(CNAME),

	PRIMARY KEY(OID)
);





CREATE TABLE AIRPLANE  (
	
	REGNO INT NOT NULL,
	TYPEE INT,
	ANAME VARCHAR(50),
	PDATE DATE,
	OWN INT,
	STOREDIN INT,
	PRIMARY KEY(REGNO),
	FOREIGN KEY(STOREDIN) REFERENCES HANGAR(HID),
	FOREIGN KEY(OWN) REFERENCES OWNERR(OID),
	FOREIGN KEY(TYPEE) REFERENCES AIRPLANE_TYPE(MODELNO),
	
	

);



CREATE TABLE PILOT (
	LICNUM VARCHAR(30) NOT NULL,
	PRIMARY KEY(LICNUM),
	FOREIGN KEY (LICNUM) REFERENCES PERSON(SSN)
);

CREATE TABLE EMP (
	EID VARCHAR(30) NOT NULL,
	SAL DECIMAL(10, 2),
	SHIFTTIME VARCHAR(10),
	
	PRIMARY KEY(EID),
	FOREIGN KEY (EID) REFERENCES PERSON(SSN)
);


CREATE TABLE Pilot_Restr
(
  Restr INT NOT NULL,
  PID VARCHAR(30) NOT NULL,
  PRIMARY KEY (Restr, PID),
  FOREIGN KEY (PID) REFERENCES PILOT(LICNUM),
  FOREIGN KEY(Restr) REFERENCES AIRPLANE_TYPE(MODELNO)
);

CREATE TABLE EMP_CANWORKON
(
  Can_Work INT NOT NULL,
  EID VARCHAR(30) NOT NULL,
  PRIMARY KEY (Can_Work, EID),
  FOREIGN KEY (EID) REFERENCES EMP(EID),
  FOREIGN KEY(Can_Work) REFERENCES AIRPLANE_TYPE(MODELNO)
);

CREATE TABLE SERVICERECORDS (
	WORKCODE INT,
	SERVICEDATE DATE,
	REGNUMBER INT,
	HOURSWORKED INT,
	EID VARCHAR(30),
	PRIMARY KEY (REGNUMBER, EID),
	FOREIGN KEY (REGNUMBER) REFERENCES AIRPLANE(REGNO),
	FOREIGN KEY (EID) REFERENCES EMP(EID)
);

INSERT INTO HANGAR (HID, CAPACITY, LOCATIONN) VALUES
(1, 100, 'Los Angeles International Airport'),
(2, 150, 'John F. Kennedy International Airport'),
(3, 200, 'Hartsfield-Jackson Atlanta International Airport'),
(4, 250, 'Dallas/Fort Worth International Airport'),
(5, 120, 'Denver International Airport'),
(6, 300, 'Chicago O''Hare International Airport'),
(7, 180, 'San Francisco International Airport'),
(8, 220, 'Miami International Airport'),
(9, 350, 'Dubai International Airport'),
(10, 280, 'Heathrow Airport'),
(11, 240, 'Hong Kong International Airport'),
(12, 260, 'Amsterdam Airport Schiphol'),
(13, 270, 'Charles de Gaulle Airport'),
(14, 160, 'Tokyo Haneda Airport'),
(15, 320, 'Shanghai Pudong International Airport'),
(16, 290, 'Singapore Changi Airport'),
(17, 230, 'Toronto Pearson International Airport'),
(18, 170, 'Sydney Kingsford Smith Airport'),
(19, 330, 'Istanbul Ataturk Airport'),
(20, 210, 'Madrid-Barajas Adolfo Suárez Airport');

INSERT INTO AIRPLANE_TYPE (MODELNO, CAPACITY, WEIGHT) VALUES
(1001, 180, 75000),
(1002, 220, 80000),
(1003, 350, 120000),
(1004, 450, 130000),
(1005, 200, 82000),
(1006, 250, 90000),
(1007, 270, 95000),
(1008, 300, 100000),
(1009, 400, 125000),
(1010, 380, 110000),
(1011, 420, 140000),
(1012, 320, 105000),
(1013, 460, 150000),
(1014, 240, 86000),
(1015, 500, 160000),
(1016, 520, 170000),
(1017, 280, 90000),
(1018, 360, 110000),
(1019, 480, 155000),
(1020, 550, 175000);

INSERT INTO COORPORATIONS (CNAME, ADDRESS, PHONE) VALUES
('Acme Corp', '123 Main St, Anytown', '555-123-4567'),
('Bison Inc', '456 Oak St, New City', '555-987-6543'),
('CyberTech', '789 Pine St, Techville', '555-654-3210'),
('Delta Dynamics', '321 Elm St, Rivercity', '555-234-5678'),
('Eagle Enterprises', '654 Maple St, Treecity', '555-432-1098'),
('Falcon Industries', '987 Cedar St, Foresttown', '555-876-5432'),
('Global Group', '135 Seventh St, Globecity', '555-678-9012'),
('Hydra Holdings', '246 Eighth St, Watertown', '555-567-2341'),
('Icarus Innovations', '369 Ninth St, Skytown', '555-789-0123'),
('Jupiter Jets', '480 Tenth St, Spacetown', '555-890-1234'),
('Krypton Corp', '602 Eleventh St, Gascity', '555-901-2345'),
('Lunar Logistics', '725 Twelfth St, Moontown', '555-345-6789'),
('Matrix Manufacturing', '848 Thirteenth St, Gridcity', '555-456-7890'),
('Nebula Networks', '961 Fourteenth St, Cloudcity', '555-567-8901'),
('Oasis Operations', '1083 Fifteenth St, Deserttown', '555-678-9012'),
('Phoenix Productions', '1206 Sixteenth St, Firecity', '555-789-0123'),
('Quantum Quotient', '1329 Seventeenth St, Quantumtown', '555-890-1234'),
('Rigel Robotics', '1452 Eighteenth St, Starcity', '555-901-2345'),
('Solar Solutions', '1575 Nineteenth St, Solartown', '555-012-3456'),
('Titan Technologies', '1698 Twentieth St, Giantcity', '555-123-4567');

INSERT INTO PERSON (SSN, NAME, ADDR, PHONE) VALUES
('123-45-6789', 'Alice Johnson', '1234 Elm St, Anytown, NY 10001', '555-111-2222'),
('234-56-7890', 'Bob Smith', '5678 Oak St, Othertown, CA 90001', '555-222-3333'),
('345-67-8901', 'Carol White', '9101 Pine St, New City, TX 77001', '555-333-4444'),
('456-78-9012', 'David Brown', '2345 Maple St, Rivertown, FL 33001', '555-444-5555'),
('567-89-0123', 'Eve Green', '3456 Cedar St, Foresttown, WA 98001', '555-555-6666'),
('678-90-1234', 'Frank Black', '6789 Birch St, Hilltown, CO 80001', '555-666-7777'),
('789-01-2345', 'Grace Blue', '1230 Aspen St, Mountainville, UT 84001', '555-777-8888'),
('890-12-3456', 'Harry Red', '4567 Willow St, Valleytown, AZ 85001', '555-888-9999'),
('901-23-4567', 'Ivy Yellow', '7894 Spruce St, Sunnycity, NV 89001', '555-999-1111'),
('012-34-5678', 'Jack Grey', '9012 Pine St, Cloudtown, OR 97001', '555-111-9999'),
('098-76-5432', 'Karenurple', '2348 Fir St, Raincity, WA 98101', '555-222-8888'),
('087-65-4321', 'Leo Orange', '5673 Elm St, Windytown, IL 60601', '555-333-7777'),
('076-54-3210', 'Mia Silver', '6789 Oak St, Beachtown, FL 33101', '555-444-6666'),
('065-43-2109', 'Nathan Gold', '8910 Maple St, Snowtown, CO 80201', '555-555-5555'),
('054-32-1098', 'Olivia Teal', '9012 Cedar St, Rockville, UT 84101', '555-666-4444'),
('043-21-0987', 'Paul Indigo', '2345 Birch St, Rivercity, AZ 85101', '555-777-3333'),
('032-10-9876', 'Quinn Maroon', '5678 Aspen St, Foresttown, NV 89101', '555-888-2222'),
('021-09-8765', 'Rebecca Pink', '6789 Willow St, Valleyside, OR 97201', '555-999-1112'),
('019-28-7654', 'Sam Turquoise', '8910 Spruce St, Hilltown, IL 60701', '555-111-9876'),
('098-27-6543', 'Tina Magenta', '9012 Fir St, Mountainville, WA 98201', '555-222-8765');

INSERT INTO OWNERR (OID, OWNERTYPE, CID, PERSON) VALUES
(1, 'Corporate', 'Acme Corp', NULL),
(2, 'Corporate', 'Bison Inc', NULL),
(3, 'Corporate', 'CyberTech', NULL),
(4, 'Corporate', 'Delta Dynamics', NULL),
(5, 'Corporate', 'Eagle Enterprises', NULL),
(6, 'Corporate', 'Falcon Industries', NULL),
(7, 'Individual', NULL, '123-45-6789'),
(8, 'Individual', NULL, '234-56-7890'),
(9, 'Individual', NULL, '345-67-8901'),
(10, 'Individual', NULL, '456-78-9012'),
(11, 'Individual', NULL, '567-89-0123'),
(12, 'Individual', NULL, '678-90-1234'),
(13, 'Individual', NULL, '789-01-2345'),
(14, 'Individual', NULL, '890-12-3456'),
(15, 'Individual', NULL, '901-23-4567'),
(16, 'Individual', NULL, '012-34-5678'),
(17, 'Individual', NULL, '098-76-5432'),
(18, 'Individual', NULL, '087-65-4321'),
(19, 'Individual', NULL, '076-54-3210'),
(20, 'Individual', NULL, '065-43-2109');

INSERT INTO AIRPLANE (REGNO, TYPEE, ANAME, PDATE, OWN, STOREDIN) VALUES
(10001, 1001, 'Airbird 100', '2020-01-15', 1, 1),
(10002, 1002, 'Airbird 200', '2020-02-20', 2, 2),
(10003, 1003, 'Airbird 300', '2020-03-25', 3, 3),
(10004, 1004, 'Airbird 400', '2020-04-30', 4, 4),
(10005, 1005, 'Airbird 500', '2020-05-05', 5, 5),
(10006, 1006, 'Airbird 600', '2020-06-10', 6, 6),
(10007, 1007, 'Airbird 700', '2020-07-15', 7, 7),
(10008, 1008, 'Airbird 800', '2020-08-20', 8, 8),
(10009, 1009, 'Airbird 900', '2020-09-25', 9, 9),
(10010, 1010, 'Airbird 1000', '2020-10-30', 10, 10),
(10011, 1011, 'Skyraider 1100', '2020-11-05', 11,1),
(10012, 1012, 'Skyraider 1200', '2020-11-10', 12, 12),
(10013, 1013, 'Skyraider 1300', '2020-11-15', 13, 13),
(10014, 1014, 'Skyraider 1400', '2020-11-20', 14, 14),
(10015, 1015, 'Skyraider 1500', '2020-11-25', 15, 15),
(10016, 1016, 'Skyraider 1600', '2020-11-30', 16, 16),
(10017, 1017, 'Skyraider 1700', '2020-12-05', 17, 17),
(10018, 1018, 'Skyraider 1800', '2020-12-10', 18, 18),
(10019, 1019, 'Skyraider 1900', '2020-12-15', 19, 19),
(10020, 1020, 'Skyraider 2000', '2020-12-20', 20, 20),
(10021, 1001, 'AeroSwift 2100', '2021-01-05', 1, 1),
(10022, 1002, 'AeroSwift 2200', '2021-01-10', 2, 2),
(10023, 1003, 'AeroSwift 2300', '2021-01-15', 3, 3),
(10024, 1004, 'AeroSwift 2400', '2021-01-20', 4, 4),
(10025, 1005, 'AeroSwift 2500', '2021-01-25', 5, 5),
(10026, 1006, 'AeroSwift 2600', '2021-01-30', 6, 6),
(10027, 1007, 'AeroSwift 2700', '2021-02-04', 7, 7),
(10028, 1008, 'AeroSwift 2800', '2021-02-09', 8, 8),
(10029, 1009, 'AeroSwift 2900', '2021-02-14', 9, 9),
(10030, 1010, 'AeroSwift 3000', '2021-02-19', 10, 10);

INSERT INTO PILOT (LICNUM) VALUES
('123-45-6789'),
('234-56-7890'),
('345-67-8901'),
('456-78-9012'),
('567-89-0123'),
('678-90-1234'),
('789-01-2345'),
('890-12-3456'),
('901-23-4567'),
('012-34-5678');

INSERT INTO EMP (EID, SAL, SHIFTTIME) VALUES
('098-76-5432', 35000.00, 'Morning'),
('087-65-4321', 45000.00, 'Evening'),
('076-54-3210', 40000.00, 'Morning'),
('065-43-2109', 38000.00, 'Evening'),
('054-32-1098', 42000.00, 'Morning'),
('043-21-0987', 36000.00, 'Evening'),
('032-10-9876', 41000.00, 'Morning'),
('021-09-8765', 43000.00, 'Evening'),
('019-28-7654', 39000.00, 'Morning'),
('098-27-6543', 46000.00, 'Evening');

INSERT INTO Pilot_Restr (Restr, PID) VALUES
(1001, '123-45-6789'),
(1002, '123-45-6789'),
(1003, '234-56-7890'),
(1004, '234-56-7890'),
(1005, '345-67-8901'),
(1006, '345-67-8901'),
(1007, '456-78-9012'),
(1008, '456-78-9012'),
(1009, '567-89-0123'),
(1010, '567-89-0123'),
(1011, '678-90-1234'),
(1012, '678-90-1234'),
(1013, '789-01-2345'),
(1014, '789-01-2345'),
(1015, '890-12-3456'),
(1016, '890-12-3456'),
(1017, '901-23-4567'),
(1018, '901-23-4567'),
(1019, '012-34-5678'),
(1020, '012-34-5678');

INSERT INTO EMP_CANWORKON (Can_Work, EID) VALUES
(1001, '098-76-5432'),
(1002, '098-76-5432'),
(1003, '087-65-4321'),
(1004, '087-65-4321'),
(1005, '076-54-3210'),
(1006, '076-54-3210'),
(1007, '065-43-2109'),
(1008, '065-43-2109'),
(1009, '054-32-1098'),
(1010, '054-32-1098'),
(1011, '043-21-0987'),
(1012, '043-21-0987'),
(1013, '032-10-9876'),
(1014, '032-10-9876'),
(1015, '021-09-8765'),
(1016, '021-09-8765'),
(1017, '019-28-7654'),
(1018, '019-28-7654'),
(1019, '098-27-6543'),
(1020, '098-27-6543');

INSERT INTO SERVICERECORDS (WORKCODE, SERVICEDATE, REGNUMBER, HOURSWORKED, EID) VALUES
(100, '2022-01-15', 10001, 8, '098-76-5432'),
(200, '2022-01-20', 10002, 6, '098-76-5432'),
(300, '2022-01-25', 10003, 10, '087-65-4321'),
(400, '2022-01-30', 10004, 8, '087-65-4321'),
(500, '2022-02-04', 10005, 7, '076-54-3210'),
(600, '2022-02-09', 10006, 6, '076-54-3210'),
(700, '2022-02-14', 10007, 9, '065-43-2109'),
(800, '2022-02-19', 10008, 8, '065-43-2109'),
(900, '2022-02-24', 10009, 6, '054-32-1098'),
(1000, '2022-02-28', 10010, 8, '054-32-1098'),
(1100, '2022-03-06', 10011, 7, '043-21-0987'),
(1200, '2022-03-11', 10012, 6, '043-21-0987'),
(1300, '2022-03-16', 10013, 9, '032-10-9876'),
(1400, '2022-03-21', 10014, 8, '032-10-9876'),
(1500, '2022-03-23', 10015, 6, '021-09-8765'),
(1600, '2022-03-26', 10016, 8, '021-09-8765'),
(1700, '2022-04-05', 10017, 7, '019-28-7654'),
(1800, '2022-04-10', 10018, 6, '019-28-7654'),
(1900, '2022-04-15', 10019, 9, '098-27-6543'),
(2000, '2022-04-20', 10020, 8, '098-27-6543');

