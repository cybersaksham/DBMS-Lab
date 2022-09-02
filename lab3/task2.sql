DESC supplier;
ALTER TABLE supplier ADD (address VARCHAR(30));
ALTER TABLE supplier MODIFY COLUMN name VARCHAR(30);
DESC supplier;

DESC product;
ALTER TABLE product MODIFY COLUMN pid INTEGER(4) NULL;
ALTER TABLE product DROP CONSTRAINT fk_sply;
DESC product;

TRUNCATE TABLE product;
SELECT * FROM product;

DROP TABLE product;
SELECT * FROM product;
