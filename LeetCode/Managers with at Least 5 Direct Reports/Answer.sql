SELECT e.name
FROM Employee e
JOIN (
    SELECT managerId
    FROM Employee
    WHERE managerId is not null
    Group by managerId
    Having Count(*) >= 5
) m
ON e.id = m.managerId
