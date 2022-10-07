CREATE TABLE LOAN(
	loanNo VARCHAR(10),
	branch_Name VARCHAR(20),
	amount INT(5),
	constraint loan_pk PRIMARY KEY(loanNo)
);

 CREATE TABLE BORROWER(
	Customer_name VARCHAR(20),
	loanNo VARCHAR(10),
	constraint borrower_pk PRIMARY KEY(loanNo)
);

CREATE TABLE DEPOSITOR(
	Customer_name VARCHAR(20),
	Account_number VARCHAR(20),
	constraint depositer_pk PRIMARY KEY(Customer_name)
);
