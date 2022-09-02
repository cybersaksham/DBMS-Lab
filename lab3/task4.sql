TRUNCATE TABLE supplier;
Select * from supplier;

CREATE TABLE product (
	pid integer(4) NOT NULL PRIMARY KEY,
	sid integer(4),
	Pname varchar(20),
	CONSTRAINT fk_sply FOREIGN KEY(sid) REFERENCES supplier(id) ON DELETE CASCADE
);

INSERT INTO supplier (id,name) VALUES ( 220, 'Sundram');
INSERT INTO supplier (id,name,phone) VALUES(550,'Sansar',67676767);
INSERT INTO supplier (id,name,phone) VALUES(434,'Krish',303030303030);

INSERT INTO product(pid,sid,Pname) VALUES (2349, 220, 'Laptop');
INSERT INTO product(pid,sid,Pname) VALUES (3449,550,'Mobile');
INSERT INTO product(pid,sid,Pname) VALUES(5489,434,'Mobile');

Select * from product;
DELETE from supplier where id=550;
Select * from product;
