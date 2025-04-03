SELECT job_title_short,
       ROUND(AVG(salary_year_avg),0) as avg_salary_year,
       ROUND(AVG(salary_hour_avg),0) as avg_salary_hour 
FROM job_postings_fact
GROUP BY
       job_title_short
ORDER BY
     avg_salary_year DESC
     