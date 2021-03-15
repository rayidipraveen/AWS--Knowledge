
-- To get Size of each Databases in MYSQL 

SELECT table_schema "DB Name",
        ROUND(SUM(data_length + index_length) / 1024 / 1024/ 1024, 1) "DB Size in GB" 
FROM information_schema.tables 
GROUP BY table_schema;
