
--#1Starts 
To get Size of each Databases in MYSQL 

SELECT table_schema "DB Name",
        ROUND(SUM(data_length + index_length) / 1024 / 1024/ 1024, 1) "DB Size in GB" 
FROM information_schema.tables 
GROUP BY table_schema;

-- #1 Ends
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
--#2 Starts 

--  How to get Cummulative sum of a column 

input :: 
id  srome
1   10
2   12
3   3
4   15
5   23

output :: 
id  srome   CumSrome
1   10  10
2   12  22
3   3   25
4   15  40
5   23  63
--- Using Mysql
set @CumulativeSum := 0

select id,srome,(@CumulativeSum := @CumulativeSum + srome) as CumSrome
from TABLE
order by id

#2 Ends
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
