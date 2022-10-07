SELECT P.Pnumber, P.Dnum, E.Lname, E.Address, E.Bdate
FROM PROJECT P, DEPARTMENT D, EMPLOYEE E
WHERE P.Plocation = "Houston" AND P.Dnum = D.Dnumber
AND D.Mgr_ssn = E.Ssn;
