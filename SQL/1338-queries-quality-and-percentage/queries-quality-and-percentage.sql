SELECT 
    query_name,
    ROUND(SUM(rating/position)/ COUNT(*), 2) as quality,
    ROUND(SUM(IF(rating < 3, 1, 0)) / COUNT(*) * 100,2) as poor_query_percentage

FROM Queries

GROUP BY query_name