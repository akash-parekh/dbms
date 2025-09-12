SELECT s.user_id,
    COALESCE(
        ROUND(m.confirm::numeric / (m.confirm + m.timeout), 2),
        0
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN (
    SELECT user_id,
        SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END) AS confirm,
        SUM(CASE WHEN action = 'timeout'   THEN 1 ELSE 0 END) AS timeout
    FROM Confirmations
    GROUP BY user_id
) m
ON s.user_id = m.user_id;

-- select s.user_id, ROUND(avg(case when c.action = 'confirmed' then 1 else 0 end),2) as confirmation_rate
-- from Signups s
-- left join Confirmations c on s.user_id = c.user_id
-- group by s.user_id
-- order by confirmation_rate
