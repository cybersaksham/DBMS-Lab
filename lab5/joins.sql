SELECT * FROM LOAN L
INNER JOIN BORROWER B
ON L.loanNo = B.loanNo;

SELECT * FROM LOAN
NATURAL INNER JOIN BORROWER;

SELECT * FROM LOAN L
LEFT OUTER JOIN BORROWER B
ON L.loanNo = B.loanNo;

SELECT * FROM LOAN L
RIGHT OUTER JOIN BORROWER B
ON L.loanNo = B.loanNo;

(SELECT * FROM LOAN L
LEFT OUTER JOIN BORROWER B
ON L.loanNo = B.loanNo)
UNION
(SELECT * FROM LOAN L
RIGHT OUTER JOIN BORROWER B
ON L.loanNo = B.loanNo)
