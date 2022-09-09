SELECT S.sname FROM SAILORS S
WHERE S.sid IN (
	SELECT R.sid FROM RESERVES R, BOATS B
	WHERE R.bid = B.bid AND B.color = 'red'
)
