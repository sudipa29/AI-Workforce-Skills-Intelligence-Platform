/*Firstly, Import Fact Tables */

SELECT COUNT(*) AS TotalJobs
FROM fact_jobs; 
/* Total Jobs =1500 */

SELECT ROUND(AVG(annual_salary_usd),2)
FROM fact_jobs; /* Average Salary */

SELECT
industry,
COUNT(*) AS Jobs
FROM fact_jobs
GROUP BY industry
ORDER BY Jobs DESC; /* Top Hiring Industry */

SELECT
country,
ROUND(AVG(annual_salary_usd),2) AvgSalary
FROM fact_jobs
GROUP BY country
ORDER BY AvgSalary DESC; /* Highest Paying Country */

SELECT
experience_bucket,
ROUND(AVG(annual_salary_usd),0)
FROM fact_jobs
GROUP BY experience_bucket; /* Salary by Experience */

SELECT
remote_work,
COUNT(*) Jobs
FROM fact_jobs
GROUP BY remote_work; /* Remote Job Analysis */

SELECT
required_skills,
ROUND(AVG(annual_salary_usd),0)
FROM fact_skills
GROUP BY required_skills
ORDER BY AVG(annual_salary_usd) DESC; /* Highest Paying Skills */

SELECT
country,
COUNT(*) Jobs
FROM fact_jobs
GROUP BY country
ORDER BY Jobs DESC; /* Top Countries */

SELECT
AVG(annual_salary_usd) AS AvgSalary
FROM fact_jobs;
SELECT COUNT(DISTINCT required_skills)
FROM fact_skills; /* DISTINCT required_skills */

SELECT
posting_month,
COUNT(*) AS Jobs
FROM fact_jobs
GROUP BY posting_month
ORDER BY posting_month;

