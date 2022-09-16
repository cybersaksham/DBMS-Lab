SELECT E.Fname, E.Lname FROM EMPLOYEE E, DEPARTMENT D
WHERE E.Dno = D.Dnumber AND D.Dname = "Administration";
