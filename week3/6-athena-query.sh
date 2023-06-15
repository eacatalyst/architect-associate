# Run Athena Query

1 - Go to Athena service page
2 - Launch Query Editor
3 - Configure results location - s3
4 - Upload - diabetes data set to input folder
5 - Upload diabetes file to github
6 - Rerun Crawler
7 - View logs - view run details
8 - Go to Athena
9 - Right click and view table create details
10 - Execute SQL Queries
11 - Create specific table with uploaded file
12 - Execute sample queries

-- select count(*) num_records from healthdatainput;

-- SELECT * FROM healthdatainput;

-- SELECT pregnecies FROM healthdatainput;

select 
max(pregnancies) max_preg, 
avg(age) average_age, 
avg(insulin) avg_insulin,
outcome from healthdatainput
GROUP BY outcome;
