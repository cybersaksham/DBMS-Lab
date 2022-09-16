SELECT E.Fname, E.Lname FROM EMPLOYEE E, DEPENDENT D
WHERE E.Ssn = D.Essn AND E.Fname = D.Dependent_name
AND E.Sex = D.Sex;
