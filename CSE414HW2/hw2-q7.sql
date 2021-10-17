SELECT SUM(f.capacity) AS capacity
FROM FLIGHTS AS f, MONTHS AS m
WHERE f.month_id=m.mid AND
      f.day_of_month=10 AND
      m.month='July' AND
      (f.origin_city='Seattle WA' OR
	  f.origin_city='San Francisco CA') AND
	  (f.dest_city='Seattle WA' OR
	  f.dest_city='San Francisco CA');