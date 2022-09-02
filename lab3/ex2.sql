SELECT B.color FROM SAILORS S, RESERVES R, BOATS B
WHERE S.sid = R.sid and R.bid = B.bid and S.sname = 'Lubber'
