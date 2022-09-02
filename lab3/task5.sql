SELECT * FROM SAILORS
WHERE rating > 7;

SELECT S.sname FROM SAILORS S, RESERVES R
WHERE S.sid = R.sid and R.bid = 103;

SELECT S.sid, S.sname FROM SAILORS S, RESERVES R, BOATS B
WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'red';

SELECT S.sname, S.rating+1 AS rating
FROM SAILORS S, RESERVES R1,RESERVES R2
WHERE S.sid=R1.sid AND S.sid=R2.sid
AND R1.day =R2.day AND R1.bid<> R2.bid;

SELECT S.sname, S.age
FROM SAILORS S
WHERE S.sname LIKE 'B_%b';

SELECT DISTINCT S.SNAME , S.age AS Sailor_Age FROM SAILORS AS S;

SELECT S.sname
FROM SAILORS S, RESERVES R,BOATS B
WHERE S.sid=R.sid AND R.bid=B.bid AND B.color ='red'
UNION
SELECT S2.sname
FROM SAILORS S2, RESERVES R2,BOATS B2
WHERE S2.sid=R2.sid AND R2.bid=B2.bid AND B2.color='green';

SELECT DISTINCT S.sid, S.sname
FROM SAILORS S, RESERVES R,BOATS B
WHERE S.sid=R.sid AND R.bid=B.bid AND B.color ='red'
AND S.sid IN
(SELECT S2.sid
FROM SAILORS S2, RESERVES R2,BOATS B2
WHERE S2.sid=R2.sid AND R2.bid=B2.bid AND B2.color='green');

SELECT DISTINCT S.sid, S.sname
FROM SAILORS S, RESERVES R,BOATS B
WHERE S.sid=R.sid AND R.bid=B.bid AND B.color ='green'
AND S.sid NOT IN
(SELECT S2.sid
FROM SAILORS S2, RESERVES R2,BOATS B2
WHERE S2.sid=R2.sid AND R2.bid=B2.bid AND B2.color='red');
