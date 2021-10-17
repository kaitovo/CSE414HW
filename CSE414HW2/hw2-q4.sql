SELECT DISTINCT c.name AS name
FROM FLIGHTS AS f, CARRIERS AS c
WHERE f.carrier_id=c.cid
GROUP BY f.day_of_month, f.month_id, c.name
HAVING COUNT(f.fid)>1000;
