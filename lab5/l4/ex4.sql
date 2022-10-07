SELECT P.Pname, P.Pnumber, E.Fname, E.Lname, E.Dno
FROM PROJECT P, EMPLOYEE E
WHERE P.Dnum = E.Dno
ORDER BY P.Dnum, E.Fname, E.Lname ASC;
