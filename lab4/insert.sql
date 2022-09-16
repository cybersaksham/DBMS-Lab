insert into DEPARTMENT VALUES ('Research',5,333445555,'1988-05-22');
insert into DEPARTMENT VALUES ('Administration',4,987654321,'1995-01-01');
insert into DEPARTMENT VALUES ('Headquarters',1,888665555,'1981-06-19');

insert into DEPT_LOCATIONS VALUES (1,'Houston');
insert into DEPT_LOCATIONS VALUES (4,'stafford');
insert into DEPT_LOCATIONS VALUES (5,'Bellaire');
insert into DEPT_LOCATIONS VALUES (5,'Sugarland');
insert into DEPT_LOCATIONS VALUES (5,'Houston');

insert into EMPLOYEE values (
    'John',
    'B',
    'Smith',
    '123456789',
    '1965-01-09',
    '731 Fondren,Houston,TX',
    'M',
    30000,
    333445555,
    5
);
insert into EMPLOYEE values (
    'Franklin',
    'T',
    'Wong',
    '333445555',
    '1955-12-08',
    '638 Voss,Houston,TX',
    'M',
    40000,
    888665555,
    5
);
insert into EMPLOYEE values (
    'Alicia',
    'J',
    'Zelaya',
    '999887777',
    '1968-01-19',
    '3321 Castle,Spring,TX',
    'F',
    25000,
    987654321,
    4
);
insert into EMPLOYEE values (
    'Jennifier',
    'S',
    'Wallace',
    '987654321',
    '1941-06-20',
    '291 Berry,Bellaire,TX',
    'F',
    43000,
    888665555,
    4
);
insert into EMPLOYEE values (
    'Ramesh',
    'K',
    'Narayan',
    '666884444',
    '1962-09-15',
    '975 Fire Oak,Humble,TX',
    'M',
    38000,
    333445555,
    5
);
insert into EMPLOYEE values (
    'Joyce',
    'A',
    'English',
    '453453453',
    '1972-07-31',
    '5631 Rice,Houston,TX',
    'F',
    25000,
    333445555,
    5
);
insert into EMPLOYEE values (
    'Ahmad',
    'V',
    'Jabbar',
    '987987987',
    '1969-03-29',
    '980,Dallas Houston,TX',
    'M',
    25000,
    987654321,
    4
);
insert into EMPLOYEE values (
    'James',
    'E',
    'Borg',
    '888665555',
    '1937-11-10',
    '450 Stone, Houston,TX',
    'M',
    55000,
    null,
    1
);

INSERT INTO PROJECT VALUES ('ProductX',1,'Bellaire',5);
INSERT INTO PROJECT VALUES ('ProductY',2,'Sugarland',5);
INSERT INTO PROJECT VALUES ('ProductZ',3,'Houston',5);
INSERT INTO PROJECT VALUES ('Computerization',10,'Stafford',4);
INSERT INTO PROJECT VALUES ('Reorganisation',20,'Houseton',1);
INSERT INTO PROJECT VALUES ('Newbenefits',30,'Stafford',4);
    
insert into WORKS_ON VALUES (123456789,1,32.5);
insert into WORKS_ON VALUES (123456789,2,7.5);
insert into WORKS_ON VALUES (666884444,3,40.0);
insert into WORKS_ON VALUES (453453453,1,20.0);
insert into WORKS_ON VALUES (453453453,2,20.0);
insert into WORKS_ON VALUES (333445555,2,10.0);
insert into WORKS_ON VALUES (333445555,3,10.0);
insert into WORKS_ON VALUES (333445555,10,10.0);
insert into WORKS_ON VALUES (333445555,20,10.0);
insert into WORKS_ON VALUES (999887777,30,30.0);
insert into WORKS_ON VALUES (999887777,10,10.0);
insert into WORKS_ON VALUES (987987987,10,35.0);
insert into WORKS_ON VALUES (987987987,30,5.0);
insert into WORKS_ON VALUES (987654321,30,20.0);
insert into WORKS_ON VALUES (987654321,20,15.0);
insert into WORKS_ON VALUES (888665555,20,NULL);


insert into DEPENDENT VALUES (333445555,'Alice','F','1985-04-05','Daughter');
insert into DEPENDENT VALUES (333445555,'Theodore','M','1983-10-25','Son');
insert into DEPENDENT VALUES (333445555,'Joy','F','1958-05-03','Spouse');
insert into DEPENDENT VALUES (987654321,'Abner','M','1942-02-28','Spouse');
insert into DEPENDENT VALUES (123456789,'Michael','M','1988-04-04','Son');
insert into DEPENDENT VALUES (123456789,'Alice','F','1988-04-30','Daughter');
insert into DEPENDENT VALUES (123456789,'Elizabeth','F','1967-05-05','Spouse');
