SELECT D.Customer_name FROM (
	DEPOSITOR D LEFT OUTER JOIN BORROWER B
	ON D.Customer_name = B.Customer_name
) WHERE B.Customer_name IS NULL;

SELECT Q.C1 AS Customer_name FROM (
	(SELECT D.Customer_name AS C1, B.Customer_name AS C2 FROM DEPOSITOR D NATURAL LEFT OUTER JOIN BORROWER B)
	UNION ALL
	(SELECT D.Customer_name AS C1, B.Customer_name AS C2 FROM DEPOSITOR D NATURAL RIGHT OUTER JOIN BORROWER B)
) Q WHERE Q.C1 IS NULL OR Q.C2 IS NULL;