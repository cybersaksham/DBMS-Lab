CREATE TABLE SAILORS (
	sid integer(3),
	sname VARCHAR(20) NOT NULL,
	rating integer(2) NOT NULL,
	age float(3,1),
	CONSTRAINT pk_sailors PRIMARY KEY(sid)
);

insert into SAILORS VALUES (22,'Dustin',7,45.0);
insert into SAILORS VALUES (29,'Brutus',1,33.0);
insert into SAILORS VALUES (31,'Lubber',8,55.5);
insert into SAILORS VALUES (32,'Andy',8,25.5);
insert into SAILORS VALUES (58,'Rusty',10,35.0);
insert into SAILORS VALUES (64,'Horatio',7,35.0);
insert into SAILORS VALUES (71,'Zorba',10,16.0);
insert into SAILORS VALUES (74,'Horatio',9,35.0);
insert into SAILORS VALUES (85,'Art',3,25.5);
insert into SAILORS VALUES (95,'Bob',3,63.5);

SELECT * FROM SAILORS;
