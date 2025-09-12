SELECT a.machine_id, ROUND(AVG(b.timestamp - a.timestamp)::decimal, 3) as processing_time
FROM Activity a
JOIN Activity b
ON a.machine_id = b.machine_id
where a.activity_type = 'start' AND b.activity_type = 'end'
GROUP BY a.machine_id

-- SELECT machine_id
--      , ROUND( 2 *
--               AVG(
--                   CASE
--                     WHEN activity_type = 'start' THEN - timestamp
--                     ELSE timestamp
--                   END)
--             , 3) AS processing_time
--   FROM Activity
--  GROUP BY machine_id;
