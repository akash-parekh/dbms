SELECT *
FROM Cinema
WHERE id % 2 <> 0 AND cinema.description <> 'boring'
ORDER BY rating DESC
