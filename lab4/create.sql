create table DEPARTMENT(
     Dname varchar(15) not null,
     Dnumber int(9) primary key,
     Mgr_ssn int(9) not null,
     Mgr_start_date DATE not null
);

create table DEPT_LOCATIONS(
    Dnumber int(9),
    Dlocation varchar(15),
    CONSTRAINT dept_loc_pri PRIMARY KEY(Dnumber,Dlocation),
    CONSTRAINT dept_loc_for FOREIGN KEY(Dnumber) REFERENCES DEPARTMENT(Dnumber) 
);

create table PROJECT(
    Pname varchar(15) not null,
    Pnumber int(9) primary key,
    Plocation varchar(15) not null,
    Dnum int(15) not null
);

create table EMPLOYEE(
    Fname varchar(15) not null,
    Minit varchar(1) not null,
    Lname varchar(15) not null,
    Ssn int(9) primary key,
    Bdate DATE not null,
    Address varchar(40) not null,
    Sex varchar(1) not null,
    Salary int(9) not null,
    SUPERssn int(9),
    Dno int(2) not null,
    constraint emp_for foreign key(Dno) references DEPARTMENT(Dnumber)
);

create table WORKS_ON(
    Essn int(9),
    Pno int(2),
    Hours float(20,3),
    CONSTRAINT works_pri PRIMARY KEY(Essn,Pno),
    CONSTRAINT works_for_emp FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn),
    CONSTRAINT works_for_pro FOREIGN KEY(Pno) REFERENCES PROJECT(Pnumber)
);

create table DEPENDENT(
    Essn int(9),
    Dependent_Name varchar(15),
    Sex varchar(15),
    Bdate varchar(15),
    Relationship varchar(15),
    CONSTRAINT dependent_pri PRIMARY KEY(Essn,Dependent_Name),
    CONSTRAINT dependent_for FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn) 
);
