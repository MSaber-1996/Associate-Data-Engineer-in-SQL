SELECT col1, col2, col2 - LAG(col2) OVER (ORDER BY col1) AS difference 
FROM my_table;


--=========================================================================

SELECT 
column_name
,COUNT(*) OVER (PARTITION BY column_name, grp) AS repetition_count
FROM 
(
SELECT column_name
,ROW_NUMBER() OVER (ORDER BY some_column) - ROW_NUMBER() OVER (PARTITION BY column_name ORDER BY some_column) AS grp

FROM your_table
) t

ORDER BY some_column;
