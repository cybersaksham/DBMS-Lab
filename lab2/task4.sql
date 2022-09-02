CREATE TABLE product (
	pid integer(4) NOT NULL PRIMARY KEY,
	sid integer(4),
	Pname varchar(20),
	CONSTRAINT fk_sply FOREIGN KEY(sid) REFERENCES supplier(id)
);
DESC product;

INSERT INTO product (pid,sid,Pname) VALUES (2349, 220, 'Laptop');
INSERT INTO product (pid,sid,Pname) VALUES (3449, 555, 'Mobile');
INSERT INTO product (pid,sid,Pname) VALUES (4490, 434, 'Pen Drive');
INSERT INTO product (pid,sid,Pname) VALUES (9452, 707, 'Pen drive');

Select * from product;
