SELECT E.Fname, E.Lname FROM EMPLOYEE E
WHERE E.Ssn NOT IN (
	SELECT Essn FROM DEPENDENT
);
