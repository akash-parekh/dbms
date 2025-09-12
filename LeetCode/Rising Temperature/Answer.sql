SELECT a.id
FROM Weather a
JOIN Weather b
    ON a.recordDate = b.recordDate + INTERVAL '1 day'
WHERE a.temperature > b.temperature;
