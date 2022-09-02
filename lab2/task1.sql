CREATE TABLE supplier (
	id integer(4) NOT NULL,
	name varchar(20),
	phone bigint(20) DEFAULT '99999' NOT NULL
);

INSERT INTO supplier VALUES(555,'Sansar',676767676);
INSERT INTO supplier(id,phone) VALUES (434, 303033030);
INSERT INTO supplier (id,name) VALUES ( 220, 'Sundram');

INSERT INTO supplier(id,phone) VALUES (340, 333303030);
INSERT INTO supplier(name,phone) VALUES('Hoffer',90072345667);

SELECT * FROM supplier;
