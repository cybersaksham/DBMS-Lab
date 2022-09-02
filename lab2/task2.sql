ALTER TABLE supplier ADD UNIQUE (id);
ALTER TABLE supplier ADD UNIQUE (name);

INSERT INTO supplier values(234,'Anna',909090909090);
INSERT INTO supplier values(234,'Kapler',7070707070);
INSERT INTO supplier values(567,'Anna',80800808080);
INSERT INTO supplier values(567,'Kapler',90900909090);

SELECT * FROM supplier;
