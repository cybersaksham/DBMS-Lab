CREATE TABLE ACCOUNT(
	account_number INT(8),
	branch_name VARCHAR(20) NOT NULL,
	balance INT(8) NOT NULL,
	CONSTRAINT ac_pk PRIMARY KEY(account_number)
);

CREATE TABLE BRANCH(
	branch_name VARCHAR(20),
	assets INT(8) NOT NULL,
	branch_city VARCHAR(20) NOT NULL,
	CONSTRAINT br_pk PRIMARY KEY(branch_name)
);

CREATE TABLE CUSTOMER(
	customer_name VARCHAR(20),
	street VARCHAR(20) NOT NULL,
	city VARCHAR(20) NOT NULL,
	CONSTRAINT cst_pk PRIMARY KEY(customer_name)
);

CREATE TABLE LOAN(
	loan_number INT(8),
	branch_name VARCHAR(20) NOT NULL,
	amount INT(8) NOT NULL,
	CONSTRAINT loan_pk PRIMARY KEY(loan_number)
);

CREATE TABLE BORROWER(
	loan_number INT(8),
	customer_name VARCHAR(20),
	CONSTRAINT borwr_pk PRIMARY KEY(customer_name, loan_number),
	CONSTRAINT borwr_fk1 FOREIGN KEY(customer_name) REFERENCES CUSTOMER(customer_name),
	CONSTRAINT borwr_fk2 FOREIGN KEY(loan_number) REFERENCES LOAN(loan_number)
);

CREATE TABLE DEPOSITOR(
	account_number INT(8),
	customer_name VARCHAR(20),
	CONSTRAINT dpstr_pk PRIMARY KEY(customer_name, account_number),
	CONSTRAINT dpstr_fk1 FOREIGN KEY(account_number) REFERENCES ACCOUNT(account_number),
	CONSTRAINT dpstr_fk2 FOREIGN KEY(customer_name) REFERENCES CUSTOMER(customer_name)
);
