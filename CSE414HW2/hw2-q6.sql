SELECT c.name AS carrier, MAX(f.price) AS max_price
FROM FLIGHTS AS f, CARRIERS AS c
WHERE f.carrier_id=c.cid AND
	  (f.origin_city='Seattle WA' OR
	  f.origin_city='New York NY') AND
	  (f.dest_city='Seattle WA' OR
	  f.dest_city='New York NY')
GROUP BY c.name;