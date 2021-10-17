SELECT DISTINCT f.flight_num
FROM FLIGHTS AS f, WEEKDAYS AS w, CARRIERS AS c
WHERE f.day_of_week_id=w.did AND
	  f.carrier_id=c.cid AND
	  f.origin_city='Seattle WA' AND
	  f.dest_city='Boston MA' AND
	  w.day_of_week='Monday' AND
	  c.name='Alaska Airlines Inc.';