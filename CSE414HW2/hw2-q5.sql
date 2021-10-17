SELECT c.name AS name, SUM(f.canceled)*100.0/COUNT(f.fid) AS Percentage
FROM FLIGHTS AS f, CARRIERS AS c
WHERE f.carrier_id=c.cid AND
      f.origin_city='Seattle WA'
GROUP BY c.name
HAVING SUM(f.canceled)*100.0/COUNT(f.fid)>0.5
ORDER BY SUM(f.canceled)*100.0/COUNT(f.fid) ASC;