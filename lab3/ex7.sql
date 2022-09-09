SELECT DISTINCT S.sname
FROM SAILORS S, RESERVES R, BOATS B
WHERE S.sid=R.sid AND R.bid=B.bid AND B.color ='red'
AND S.sid IN
(SELECT S2.sid
FROM SAILORS S2, RESERVES R2,BOATS B2
WHERE S2.sid=R2.sid AND R2.bid=B2.bid AND B2.color='green');
