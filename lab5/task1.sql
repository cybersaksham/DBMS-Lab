SELECT S1.sname FROM SAILORS S1, (
	SELECT MAX(age) AS age FROM SAILORS
	GROUP BY rating HAVING rating = 10
) S2
WHERE S1.age > S2.age;

SELECT sname FROM SAILORS S
INNER JOIN
(SELECT sid FROM
RESERVES
GROUP BY sid
HAVING COUNT(DISTINCT(bid)) = (SELECT COUNT(bid) FROM BOATS)) Q
ON S.sid = Q.sid;

SELECT AVG(age) AS avg
FROM SAILORS
GROUP BY rating HAVING rating = 10;

SELECT sname, age FROM SAILORS
WHERE age = (
	SELECT Max(age) AS age FROM SAILORS
);

SELECT COUNT(sid) AS sailors FROM SAILORS;