-- I
SELECT DISTINCT branch_name FROM LOAN;

-- II
SELECT loan_number FROM LOAN
WHERE branch_name LIKE 'SBI%';

-- III
SELECT loan_number FROM LOAN
WHERE amount BETWEEN 9000 AND 100000;

-- IV
SELECT * FROM BORROWER, LOAN;

-- V
SELECT b.customer_name, b.loan_number, l.amount
FROM BORROWER b INNER JOIN LOAN l
ON (b.loan_number = l.loan_number)
WHERE l.branch_name LIKE 'Perryridge%';

-- VI
SELECT b.customer_name, b.loan_number AS loan_id, l.Amount
FROM BORROWER b INNER JOIN LOAN l
ON (b.loan_number = l.loan_number);

-- VII
SELECT c.customer_name, l.loan_number
FROM CUSTOMER c, LOAN l, BORROWER b
WHERE (
	c.customer_name = b.customer_name
	AND b.loan_number = l.loan_number
);

-- VIII
SELECT DISTINCT(b.branch_name) FROM BRANCH b, BRANCH s
WHERE s.branch_city = 'Jaipur' AND b.assets > s.assets;

-- IX
SELECT customer_name FROM CUSTOMER
WHERE street LIKE '%pur%';

-- X
SELECT b.customer_name FROM LOAN l, BORROWER b, BRANCH bh
WHERE (
	bh.branch_name = l.branch_name
	AND b.loan_number = l.loan_number
	AND bh.branch_city = 'Jaipur'
) ORDER BY b.customer_name;

-- XI
SELECT DISTINCT c.customer_name FROM CUSTOMER c
INNER JOIN BORROWER b on (c.customer_name = b.customer_name)
UNION (
	SELECT d.customer_name FROM DEPOSITOR d
	INNER JOIN CUSTOMER c on (c.customer_name = d.customer_name)
);

-- XII
SELECT AVG(balance) AS avg_balance FROM ACCOUNT
WHERE branch_name LIKE '%ICICI%';

-- XIII
SELECT COUNT(*) FROM CUSTOMER;

-- XIV
SELECT COUNT(DISTINCT customer_name) FROM DEPOSITOR;

-- XV
SELECT a.branch_name, COUNT(DISTINCT d.customer_name)
FROM DEPOSITOR d, ACCOUNT a
WHERE a.account_number = d.account_number
GROUP BY a.branch_name;

-- XVI
SELECT branch_name, AVG(balance) AS avg_balance
FROM ACCOUNT GROUP BY branch_name;

-- XVII
SELECT DISTINCT c.customer_name FROM CUSTOMER c
INNER JOIN BORROWER b ON (c.customer_name = b.customer_name)
INTERSECT (
	SELECT d.customer_name FROM DEPOSITOR d
	INNER JOIN CUSTOMER c on (c.customer_name = d.customer_name)
);

-- XVIII
SELECT DISTINCT c.customer_name FROM CUSTOMER c
INNER JOIN BORROWER b ON (c.customer_name = b.customer_name)
WHERE c.customer_name NOT IN (
	SELECT d.customer_name AS c_name FROM DEPOSITOR d
	INNER JOIN CUSTOMER c ON (c.customer_name = d.customer_name)
);

-- XIX
SELECT DISTINCT c.customer_name FROM CUSTOMER c, BORROWER b, LOAN l
WHERE c.customer_name = b.customer_name AND b.loan_number = l.loan_number
AND l.branch_name LIKE '%Perryridge%'
AND c.customer_name IN (
	SELECT d.customer_name AS c_name FROM DEPOSITOR d
	INNER JOIN CUSTOMER c ON (c.customer_name = d.customer_name)
);

-- XX
SELECT DISTINCT(b.branch_name) FROM BRANCH b, BRANCH s
WHERE s.branch_city = 'Brooklyn' AND b.assets > s.assets;
