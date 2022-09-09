SELECT S.sname, S.rating+1 AS rating
FROM SAILORS S, RESERVES R1, RESERVES R2
WHERE S.sid=R1.sid AND S.sid=R2.sid
AND R1.day=R2.day AND R1.bid>R2.bid;
