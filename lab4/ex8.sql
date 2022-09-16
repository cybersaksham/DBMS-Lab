SELECT E1.Fname, E1.Lname, E2.Fname AS SuperFname, E2.Lname AS SuperLname
FROM EMPLOYEE E1, EMPLOYEE E2
WHERE E1.SUPERssn = E2.Ssn;
