CREATE TABLE BOATS (
	bid INTEGER(3),
	bname VARCHAR(12) NOT NULL,
	color VARCHAR(8) NOT NULL,
	CONSTRAINT pk_boats PRIMARY KEY(bid)
);

insert into BOATS VALUES (101,'Interlake','blue');
insert into BOATS VALUES (102,'Interlake','red');
insert into BOATS VALUES (103,'Clipper','green');
insert into BOATS VALUES (104,'Marine','red');

SELECT * FROM BOATS;
