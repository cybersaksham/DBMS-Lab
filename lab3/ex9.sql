SELECT S1.sid AS id1, S1.sname AS name1, S2.sid AS id2, S2.sname AS name2
FROM SAILORS S1, SAILORS S2
WHERE 2*S1.rating = S2.rating-1;
