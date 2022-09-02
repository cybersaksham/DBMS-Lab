SELECT S.sname FROM SAILORS S, RESERVES R, BOATS B
WHERE S.sid = R.sid and R.bid = B.bid and B.color = 'green'
